package tn.enig.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Matiere {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String titre;
    private String niveau;
    private int nombreHeures;
    
    
	public Matiere(Long id, String titre, String niveau, int nombreHeures) {
		super();
		this.id = id;
		this.titre = titre;
		this.niveau = niveau;
		this.nombreHeures = nombreHeures;
	}


	public Matiere() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getTitre() {
		return titre;
	}


	public void setTitre(String titre) {
		this.titre = titre;
	}


	public String getNiveau() {
		return niveau;
	}


	public void setNiveau(String niveau) {
		this.niveau = niveau;
	}


	public int getNombreHeures() {
		return nombreHeures;
	}


	public void setNombreHeures(int nombreHeures) {
		this.nombreHeures = nombreHeures;
	}
    
    
    
    
}
