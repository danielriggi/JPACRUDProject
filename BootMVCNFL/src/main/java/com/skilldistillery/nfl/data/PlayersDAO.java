package com.skilldistillery.nfl.data;

import java.util.List;

import com.skilldistillery.nfl.entities.Players;

public interface PlayersDAO {
	public Players findById(int playerId);
	public List<Players> findAll();
	public Players create(Players createPlayer);
	public Players update(Players updatePlayer);
	public boolean destroy(int id);
	public List<Players> findByName(String playerName);
}
