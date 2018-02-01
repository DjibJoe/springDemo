package com.tuto.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Personne {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private int id;
	@Column
	private String prenom;
	@Column
	private String nom;
	@Column
	private String email;
	@Column
	private String genre;
	@Column(name="adresseIp")
	private String adrssIp;
	
	
	public Personne() {
		super();
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getAdrssIp() {
		return adrssIp;
	}
	public void setAdrssIp(String adrssIp) {
		this.adrssIp = adrssIp;
	}
	@Override
	public String toString() {
		return "Personne [id=" + id + ", prenom=" + prenom + ", nom=" + nom + ", email=" + email + ", genre=" + genre
				+ ", adrssIp=" + adrssIp + "]";
	}
	
	
	
}
