package com.skilldistillery.nfl.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.nfl.entities.Players;

import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Transactional
@Service
class PlayersDAOJpaImpl implements PlayersDAO {
	@PersistenceContext
	private EntityManager em;

	public Players findById(int playerId) {
		Players player = em.find(Players.class, playerId);
		return player;

	};
	
    public List<Players> findByName(String playerName) {
        // Create a JPQL query to search for a player by name
        List<Players> nameList = em.createQuery("SELECT p FROM Players p WHERE p.firstName = :name OR p.lastName = :name OR p.displayName = :name", Players.class)
        		                      .setParameter("name", playerName).getResultList();
        return nameList;
        		                      
    }

	public List<Players> findAll() {
		String query = "SELECT p FROM Players p ORDER BY p.id";
		List<Players> playerList = em.createQuery(query, Players.class).getResultList();
		return playerList;
	};

	public boolean destroy(int id) {
	    Players a = em.find(Players.class, id);
	    if (a != null) { // Check if the entity with the given ID exists
	        try {
	            em.remove(a); // performs the delete on the managed entity
	            return true;
	        } catch (Exception e) {
	            // Handle any exceptions if necessary
	            return false; // Return false if deletion fails
	        }
	    } else {
	       return false;
	    }
	}

	public Players create(Players createPlayer) {
		em.persist(createPlayer);
		return createPlayer;
	}

	public Players update(Players updatePlayer) {
		
		Players managed = em.find(Players.class, updatePlayer.getId());
		
		managed.setFirstName(updatePlayer.getFirstName());
		managed.setLastName(updatePlayer.getLastName());
		managed.setBirthDate(updatePlayer.getBirthDate());
		managed.setPositionGroup(updatePlayer.getPositionGroup());
		managed.setPosition(updatePlayer.getPosition());
		managed.setCollegeName(updatePlayer.getCollegeName());
		managed.setHeight(updatePlayer.getHeight());
		managed.setWeight(updatePlayer.getWeight());
		managed.setRookieYear(updatePlayer.getRookieYear());
		managed.setHeadshot(updatePlayer.getHeadshot());
		managed.setDraftNumber(updatePlayer.getDraftNumber());
		return managed;
		
	}

}
