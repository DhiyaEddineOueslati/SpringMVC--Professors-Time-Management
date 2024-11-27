package tn.enig.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import tn.enig.dao.IAffectation;
import tn.enig.dao.IEnseignant;
import tn.enig.dao.IMatiere;
import tn.enig.model.Affectation;
import tn.enig.model.Enseignant;
import tn.enig.model.Matiere;

@Controller
public class AppController {
	
	 @Autowired
	 private IMatiere matiereRepo;

     @Autowired
	 private IEnseignant enseignantRepo;

	 @Autowired
	 private IAffectation affectationRepo;
	 
	    // Liste des matières
	 @GetMapping("/matieres")
	 public String listMatieres(Model model) {
	     model.addAttribute("matieres", matiereRepo.findAll());
	     return "matieres";
	 }
	// Ajouter une matière
	    @GetMapping("/addMatiere")
	    public String addMatiereForm(Model model) {
	        model.addAttribute("matiere", new Matiere());
	        return "addMatiere";
	    }

	    @PostMapping("/saveMatiere")
	    public String saveMatiere(@ModelAttribute Matiere matiere) {
	        matiereRepo.save(matiere);
	        return "redirect:/matieres";
	    }

	    // Liste des enseignants
	    @GetMapping("/enseignants")
	    public String listEnseignants(Model model) {
	        model.addAttribute("enseignants", enseignantRepo.findAll());
	        return "enseignants";
	    }

	    // Ajouter un enseignant
	    @GetMapping("/addEnseignant")
	    public String addEnseignantForm(Model model) {
	        model.addAttribute("enseignant", new Enseignant());
	        return "addEnseignant";
	    }

	    @PostMapping("/saveEnseignant")
	    public String saveEnseignant(@ModelAttribute Enseignant enseignant) {
	        enseignantRepo.save(enseignant);
	        return "redirect:/enseignants";
	    }

	    // Liste des affectations
	    @GetMapping("/affectations")
	    public String listAffectations(Model model) {
	        model.addAttribute("affectations", affectationRepo.findAll());
	        return "affectations";
	    }

	    // Affecter une matière à un enseignant
	    @GetMapping("/addAffectation")
	    public String addAffectationForm(Model model) {
	        model.addAttribute("affectation", new Affectation());
	        model.addAttribute("matieres", matiereRepo.findAll());
	        model.addAttribute("enseignants", enseignantRepo.findAll());
	        return "addAffectation";
	    }

	    @PostMapping("/saveAffectation")
	    public String saveAffectation(@ModelAttribute Affectation affectation) {
	        affectationRepo.save(affectation);
	        return "redirect:/affectations";
	    }

	    // Supprimer une affectation
	    @GetMapping("/affectation/{id}")
	    public String deleteAffectation(@PathVariable Long id) {
	        affectationRepo.deleteById(id);
	        return "redirect:/affectations";
	    }
	


}
