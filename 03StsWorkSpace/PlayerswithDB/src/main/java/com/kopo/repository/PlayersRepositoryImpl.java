package com.kopo.repository;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kopo.domain.Players;
import com.kopo.mapper.FifaMapper;

@Repository
public class PlayersRepositoryImpl implements PlayersRepository {
	@Autowired
	private FifaMapper mapper;
	
	private List<Players> listOfPlayers = new ArrayList<Players>();
	
	public PlayersRepositoryImpl() {
		super();
	}

	public PlayersRepositoryImpl(FifaMapper mapper, List<Players> listOfPlayers) {
		super();
		this.mapper = mapper;
		this.listOfPlayers = listOfPlayers;
	}

	@Override // Mapper 이용
	public List<Players> getAllPlayersList() {
		listOfPlayers = mapper.getAllPlayers();
		return listOfPlayers;
	}

	@Override 
	public List<Players> getPlayersListBySeason(String season) {
//		List<Players> playersBySeason = new ArrayList<Players>();
//		for (int i = 0; i < listOfPlayers.size(); i++) {
//			Players players = listOfPlayers.get(i);
//			if (season.equalsIgnoreCase(players.getSeason())) {
//				// equalsIgnoreCase : 대소문자 관계없이 문자열을 비교
//				playersBySeason.add(players);
//			}
//		}
		listOfPlayers = mapper.getPlayerListBySeason(season);
		return listOfPlayers;
	}

	// ex) localhost:8082/football/players/filter/playersFilter;nation=Brazil;height=186cm
	@Override
	public Set<Players> getPlayersListByFilter(Map<String, List<String>> filter) {
		// nation & height가 동일한 선수만 리턴
		Set<Players> playersByNation = new HashSet<Players>();
		Set<Players> playersByHeight = new HashSet<Players>();
		
		Set<String> playersByFilter = filter.keySet();
		
		// nation, height 검출 작업
		if (playersByFilter.contains("nation")) {
			for (int i = 0; i < filter.get("nation").size(); i++) {
				String nationName = filter.get("nation").get(i);
				for (int j = 0; j < listOfPlayers.size(); j++) {
					Players players = listOfPlayers.get(j);
					
					if (nationName.equalsIgnoreCase(players.getNation())) {
						playersByNation.add(players);
					}
				}
			}
			
			if (playersByFilter.contains("height")) {
				for (int i = 0; i < filter.get("height").size(); i++) {
					String height = filter.get("height").get(i);
					
					List<Players> playersHeight = new ArrayList<Players>();
					for (int j = 0; j < listOfPlayers.size(); j++) {
						Players player = listOfPlayers.get(j);
						if (height.equalsIgnoreCase(player.getHeight())) playersHeight.add(player);
					}
					playersByHeight.addAll(playersHeight);
				}
			}
		}
		
		playersByHeight.retainAll(playersByNation);
		// A.retainAll(B) : A와 B의 교집합만 남기고 나머지는 제거한다. 
		
		return playersByHeight;
	}

	@Override
	public Players getPlayersByName(String name) {
		Players playersInfo = null;
		for (int i = 0; i < listOfPlayers.size(); i++) {
			Players players = listOfPlayers.get(i);
			if (players != null && players.getName() != null && players.getName().equals(name)) {
				playersInfo = players;
				break;
			}
		}
		
		if (playersInfo == null) {
			throw new IllegalArgumentException("선수 이름을 찾을 수 없습니다 : " + name);
		}
		
		return playersInfo;
	}

	@Override // Mapper 이용
	public void setNewPlayer(Players player) {
		mapper.insertOnePlayer(player);
//		listOfPlayers.add(player);
	}

	@Override // Mapper 이용
	public void deleteOnePlayer(int id) {
		mapper.deleteOnePlayer(id);
	}
}