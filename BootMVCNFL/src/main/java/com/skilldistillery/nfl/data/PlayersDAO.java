package com.skilldistillery.nfl.data;

import java.util.List;

import com.skilldistillery.nfl.entities.Players;

public interface PlayersDAO {
	public Players findById(int playerId);
	public List<Players> findAll();
}
