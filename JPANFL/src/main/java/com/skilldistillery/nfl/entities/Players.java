package com.skilldistillery.nfl.entities;

import java.time.LocalDate;
import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Players {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="birth_date")
	private LocalDate birthDate;
	
	@Column(name="position_group")
	private String positionGroup;
	
	@Column(name="position")
	private String position;

	@Column(name="college_name")
	private String collegeName;
	
	
	private Double height;
	private Double weight;
	
	@Column(name="rookie_year")
	private Integer rookieYear;
	
	private String headshot;
	
	@Column(name="draft_number")
	private Integer draftNumber;
	
	@Column(name="created_at")
	private LocalDateTime createdAt;
	
	@Column(name="updated_at")
	private LocalDateTime updatedAt;
	
	
	public Players( ) {
		
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	
	public LocalDate getBirthDate() {
		return birthDate;
	}


	public void setBirthDate(LocalDate birthDate) {
		this.birthDate = birthDate;
	}


	public String getPositionGroup() {
		return positionGroup;
	}


	public void setPositionGroup(String positionGroup) {
		this.positionGroup = positionGroup;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}

	
	public String getCollegeName() {
		return collegeName;
	}


	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}


	public Double getHeight() {
		return height;
	}


	public void setHeight(Double height) {
		this.height = height;
	}


	public Double getWeight() {
		return weight;
	}


	public void setWeight(Double weight) {
		this.weight = weight;
	}


	public Integer getRookieYear() {
		return rookieYear;
	}


	public void setRookieYear(Integer rookieYear) {
		this.rookieYear = rookieYear;
	}

	
	public Integer getDraftNumber() {
		return draftNumber;
	}


	public void setDraftNumber(Integer draftNumber) {
		this.draftNumber = draftNumber;
	}


	public LocalDateTime getCreatedAt() {
		return createdAt;
	}


	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}


	public LocalDateTime getUpdatedAt() {
		return updatedAt;
	}


	public void setUpdatedAt(LocalDateTime updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	

	public String getHeadshot() {
		return headshot;
	}


	public void setHeadshot(String headshot) {
		this.headshot = headshot;
	}


	@Override
	public String toString() {
		return "Players [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", birthDate=" + birthDate
				+ ", positionGroup=" + positionGroup + ", position=" + position + ", collegeName=" + collegeName
				+ ", height=" + height + ", weight=" + weight + ", rookieYear=" + rookieYear + ", headshot=" + headshot
				+ ", draftNumber=" + draftNumber + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
	
	
	
}
