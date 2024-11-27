package tn.enig.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Enseignant {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nom;
    private String prenom;
    private int chargeEnseignement;
    
    
	public Enseignant(Long id, String nom, String prenom, int chargeEnseignement) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.chargeEnseignement = chargeEnseignement;
	}


	public Enseignant() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	public int getChargeEnseignement() {
		return chargeEnseignement;
	}


	public void setChargeEnseignement(int chargeEnseignement) {
		this.chargeEnseignement = chargeEnseignement;
	}
    
    
}
