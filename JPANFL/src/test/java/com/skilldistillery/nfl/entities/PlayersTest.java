package com.skilldistillery.nfl.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class PlayersTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Players player;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	    emf = Persistence.createEntityManagerFactory("NFL");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	    emf.close();
	}
	
	@BeforeEach
	void setUp() throws Exception {
	    em = emf.createEntityManager();
	    player = em.find(Players.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		player = null;
	    em.close();
	}
	
	
	@Test
	void test_Staff_entity_mapping() {
		assertNotNull(player);
		assertEquals("Daniel", player.getFirstName());
		assertEquals("Riggi", player.getLastName());
	}
}
