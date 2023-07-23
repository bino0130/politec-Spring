package com.kopo.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kopo.domain.Players;
import com.kopo.service.PlayersService;

@Controller
@RequestMapping("/players")
public class PlayersController {
	@Autowired
	private PlayersService playerService;
	
	@GetMapping // 전체 플레이어 출력 1
	public String requestPlayersList (Model model) {
		List<Players> list = playerService.getAllPlayersList();
		model.addAttribute("playerList", list);
		return "players";
	}
	
	@GetMapping("/all") // 전체 플레이어 출력 2
	public ModelAndView requestPlayer() {
		ModelAndView mav = new ModelAndView();
		List<Players> list = playerService.getAllPlayersList();
		mav.addObject("playerList", list);
		mav.setViewName("players");
		
		return mav;
	}
	
	@GetMapping("/{season}") // 조건부 검색 (조건 1개)
	public String requestPlayerBySeason(@PathVariable("season") String playerSeason, Model model) {
		List<Players> playersBySeason = playerService.getPlayersListBySeason(playerSeason);
		model.addAttribute("playerList", playersBySeason);
		return "players";
	}
	
	// ex) localhost:8082/football/players/filter/playersFilter;nation=Brazil;height=186cm
	@GetMapping("/filter/{playerFilter}") // 조건부 검색 (조건 2개)
	public String requestPlayerByFilter(@MatrixVariable(pathVar="playerFilter") 
							Map<String, List<String>> playerFilter, Model model) {
		Set<Players> playersByFilter = playerService.getPlayersListByFilter(playerFilter);
		model.addAttribute("playerList", playersByFilter);
		return "players";
	}
	
	@GetMapping("/player")
	public String requestPlayerByName (@RequestParam("name") String name, Model model) {
		Players playersByName = playerService.getPlayersByName(name);
		model.addAttribute("player", playersByName);
		return "player";
	}
}