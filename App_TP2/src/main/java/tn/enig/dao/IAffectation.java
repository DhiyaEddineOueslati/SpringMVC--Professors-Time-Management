package tn.enig.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tn.enig.model.Affectation;

@Repository
public interface IAffectation extends JpaRepository<Affectation, Long> {

}
