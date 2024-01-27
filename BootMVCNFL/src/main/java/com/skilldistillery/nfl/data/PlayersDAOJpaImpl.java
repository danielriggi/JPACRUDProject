package com.skilldistillery.nfl.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.nfl.entities.Players;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Transactional
@Service
class PlayersDAOJpaImpl implements PlayersDAO{
	@PersistenceContext
	private EntityManager em;
	
	public Players findById(int playerId) {
		Players player = em.find(Players.class, playerId);
		return player;

	};
	public List<Players> findAll() {
		String query = "SELECT p FROM Players p ORDER BY p.id";
		List<Players> playerList = em.createQuery(query, Players.class).getResultList();
		return playerList;
	};
}


