package com.kopo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.kopo.domain.Players;

public interface FifaMapper {

	//create
		//Players
		@Insert("insert into player (id, name, position, positionsort, club, nation, league, " + 
				"skill, weakfoot, height, season, description, imgpath) values " + 
				"(#{Players.id}, #{Players.name}, #{Players.position}, #{Players.position}, #{Players.club}, #{Players.nation}, #{Players.league}, " + 
				"#{Players.skill}, #{Players.weakFoot}, #{Players.height}, #{Players.season}, #{Players.description}, #{Players.imgPath})")
		public void insertOnePlayer(@Param("Players") Players player);
		
	//read
		//Players
		@Select("select * from player where id = ${id}")
		public Players getOnePlayer(@Param("id") Integer id);
		
		@Select("select * from player order by id")
		public List<Players> getAllPlayers();
		
		@Select("select * from player where lower(season) like '%${ season }%'")
		public List<Players> getPlayerListBySeason(@Param("season") String season);
	
		
	//update
		@Update("update player set name = #{Players.name}, position = #{Players.position}," +
		"positionsort = #{Players.position}, club = #{Players.club}, nation = #{Players.nation}," +
		"league = #{Players.league}, skill = #{Players.skill}, weakfoot = #{Players.weakFoot}," +
		"height = #{Players.height}, season = #{Players.season}, imgpath = #{Players.imgPath} where id = ${ id }")
		public void updatePlayer(@Param("Players") Players player, @Param("id") Integer id);
	
	//delete
	@Delete("delete from player where id = ${ id }")
	public void deleteOnePlayer(@Param("id") Integer id);
}