package com.skilldistillery.nfl.controllers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.nfl.data.PlayersDAO;
import com.skilldistillery.nfl.entities.Players;

@Controller
public class PlayerController {
	@Autowired
	private PlayersDAO playerDAO;
	private static final Logger logger = LoggerFactory.getLogger(PlayerController.class);

	@RequestMapping(path = { "", "/", "home.do" })
	public String index(Model model) {
		List<Players> playerList = playerDAO.findAll();
		Collections.sort(playerList, (player1, player2) -> player1.getLastName().compareTo(player2.getLastName()));
		model.addAttribute("playerList", playerList);
		return "home";
	}

	@RequestMapping(path = "getPlayer.do", method = RequestMethod.GET)
	public String getPlayer(@RequestParam("playerId") int playerId, Model model) {
		Players player = playerDAO.findById(playerId);
		List<Players> playerList = new ArrayList();
		playerList.add(player);
		Collections.sort(playerList, (player1, player2) -> player1.getLastName().compareTo(player2.getLastName()));
		model.addAttribute("playerList", playerList);
		return "player/show";
	}
	
	@RequestMapping(path = "getPlayers.do", method = RequestMethod.GET)
	public String getPlayers(@RequestParam("playerName") String playerName, Model model) {
		List<Players> playerList = playerDAO.findByName(playerName);
		Collections.sort(playerList, (player1, player2) -> player1.getLastName().compareTo(player2.getLastName()));
		model.addAttribute("playerList", playerList);
		return "player/show";
	}
	
	@RequestMapping(path = "editPlayer.do", method = RequestMethod.GET)
	public String editPlayer(@RequestParam("editPlayerId") int playerId, Model model) {
		Players player = playerDAO.findById(playerId);
		model.addAttribute("player", player);
		return "player/editplayer";
	}
	
	@RequestMapping(path = "editPlayer.do", method = RequestMethod.POST)
	public String submitEditPlayer(Players player, RedirectAttributes redir) {
		List<Players> playerList = new ArrayList();
		playerList.add(playerDAO.update(player));	
		Collections.sort(playerList, (player1, player2) -> player1.getLastName().compareTo(player2.getLastName()));
		redir.addFlashAttribute("playerList", playerList);
		return "redirect:playerUpdated.do";
	}

	@RequestMapping("playerUpdated.do")
	public String playerEdited() {
		return "player/show";
	}

	
	@RequestMapping(path = "addPlayer.do", method = RequestMethod.GET)
	public String addPlayer() {
		return "player/addplayer";
	}
	
	@RequestMapping(path = "addPlayer.do", method = RequestMethod.POST)
	public String newPlayer(Players player, RedirectAttributes redir) { 
		List<Players> playerList = new ArrayList();
		playerList.add(playerDAO.create(player));	
		Collections.sort(playerList, (player1, player2) -> player1.getLastName().compareTo(player2.getLastName()));
		redir.addFlashAttribute("playerList", playerList);
		return "redirect:playerAdded.do";
	}
	
	@RequestMapping("playerAdded.do")
	public String playerAdded() {
		return "player/show";
	}
	
	@RequestMapping(path = "deletePlayer.do", method = RequestMethod.POST)
	public String deletePlayerById(@RequestParam("deletePlayerId") Integer id, Model model) {
		Boolean isDeleted = playerDAO.destroy(id);
		List<Players> playerList = playerDAO.findAll();
		Collections.sort(playerList, (player1, player2) -> player1.getLastName().compareTo(player2.getLastName()));
		model.addAttribute("playerList", playerList);
		return "home";
	}

}
