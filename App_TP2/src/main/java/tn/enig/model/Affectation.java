package tn.enig.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Affectation {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Matiere matiere;

    @ManyToOne
    private Enseignant enseignant;

    private int heuresAffectees;

	public Affectation(Long id, Matiere matiere, Enseignant enseignant, int heuresAffectees) {
		super();
		this.id = id;
		this.matiere = matiere;
		this.enseignant = enseignant;
		this.heuresAffectees = heuresAffectees;
	}

	public Affectation() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Matiere getMatiere() {
		return matiere;
	}

	public void setMatiere(Matiere matiere) {
		this.matiere = matiere;
	}

	public Enseignant getEnseignant() {
		return enseignant;
	}

	public void setEnseignant(Enseignant enseignant) {
		this.enseignant = enseignant;
	}

	public int getHeuresAffectees() {
		return heuresAffectees;
	}

	public void setHeuresAffectees(int heuresAffectees) {
		this.heuresAffectees = heuresAffectees;
	}
	
	
    
    
    
    
}
