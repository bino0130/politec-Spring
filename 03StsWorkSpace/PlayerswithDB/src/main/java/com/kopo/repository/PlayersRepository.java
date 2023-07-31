package com.kopo.repository;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.kopo.domain.Players;

public interface PlayersRepository {
	// 전체 선수 목록 리턴
	List<Players> getAllPlayersList();

	// 매개변수와 동일한 종류의 선수만 리턴
	List<Players> getPlayersListBySeason(String season);

	// nation & height가 동잀한 선수만 리턴
	// ex) localhost:8082/football/players/filter/playersFilter;nation=Brazil;height=186cm
	// 위 URL을 입력하면 조건에 부합하는 목록만 리턴
	Set<Players> getPlayersListByFilter(Map<String, List<String>> filter);

	// name으로 선수 찾는 메서드
	Players getPlayersByName(String name);

	// 신규 선수 추가
	void setNewPlayer(Players player);
	
	// 선수 삭제
	void deleteOnePlayer(Integer id);
}