package tn.enig.dao;

import tn.enig.model.Matiere;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IMatiere extends JpaRepository<Matiere, Long> {}
