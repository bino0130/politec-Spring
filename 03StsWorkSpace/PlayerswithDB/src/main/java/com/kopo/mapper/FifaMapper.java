package com.kopo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.kopo.domain.Players;

public interface FifaMapper {

	//create
		//Players
		@Insert("insert into player (id, name, position, club, nation, league, " + 
				"skill, weakfoot, height, season, description, imgpath) values " + 
				"(#{Players.id}, #{Players.name}, #{Players.position}, #{Players.club}, #{Players.nation}, #{Players.league}, " + 
				"#{Players.skill}, #{Players.weakFoot}, #{Players.height}, #{Players.season}, #{Players.description}, #{Players.imgPath}")
		public void insertOnePlayer(@Param("Players") Players player);
		
	//read
		//Players
		@Select("select * from player order by id")
		public Players getOnePlayer();
		
		@Select("select * from player order by id")
		public List<Players> getAllPlayers();
		
		@Select("select * from player where lower(season) like '%${ season }%'")
		public List<Players> getPlayerListBySeason(@Param("season") String season);
	
		
	//update
	
	//delete
	@Delete("delete from player where id = ${ id }")
	public void deleteOnePlayer(@Param("Players") int id);
}