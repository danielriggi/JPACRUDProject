package com.skilldistillery.nfl.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.nfl.data.PlayersDAO;
import com.skilldistillery.nfl.entities.Players;

@Controller
public class PlayerController {
	@Autowired
	private PlayersDAO playerDAO;
	
	@RequestMapping(path = {"", "/", "home.do"})
	public String index(Model model) {
		List<Players> playerList = playerDAO.findAll();
		model.addAttribute("playerList", playerList);
		return "home";
	}
	
	@RequestMapping(path = "getPlayer.do", method = RequestMethod.GET)
	public String getFilm(@RequestParam("playerId") int playerId, Model model) {
		Players player = playerDAO.findById(playerId);
		model.addAttribute("player", player);
		return "player/show";
	}

}
