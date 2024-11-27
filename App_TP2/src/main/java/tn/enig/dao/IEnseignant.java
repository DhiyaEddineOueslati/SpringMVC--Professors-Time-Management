package tn.enig.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tn.enig.model.Enseignant;


@Repository
public interface IEnseignant extends JpaRepository<Enseignant, Long> {

}
