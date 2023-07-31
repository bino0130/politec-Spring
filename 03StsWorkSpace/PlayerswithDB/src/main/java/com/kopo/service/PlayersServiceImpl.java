package com.kopo.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopo.domain.Players;
import com.kopo.repository.PlayersRepository;

@Service
public class PlayersServiceImpl implements PlayersService {
	@Autowired
	private PlayersRepository playersRepository;

	@Override
	public List<Players> getAllPlayersList() {
		return playersRepository.getAllPlayersList();
	}

	@Override
	public List<Players> getPlayersListBySeason(String season) {
		List<Players> playersBySeason = playersRepository.getPlayersListBySeason(season);
		return playersBySeason;
	}

	@Override
	public Set<Players> getPlayersListByFilter(Map<String, List<String>> filter) {
		Set<Players> playersByFilter = playersRepository.getPlayersListByFilter(filter);
		return playersByFilter;
	}

	@Override
	public Players getPlayersByName(String name) {
		Players playerName = playersRepository.getPlayersByName(name);
		return playerName;
	}

	@Override
	public void setNewPlayer(Players player) {
		playersRepository.setNewPlayer(player);
	}

	@Override
	public void deleteOnePlayer(Integer id) {
		playersRepository.deleteOnePlayer(id);
	}
}