package repositories;

import entities.Generation;
import entities.Modification;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ModificationRepository extends JpaRepository<Modification, Integer> {
    Optional<Generation> findByGenerationId(Integer generationId);
}
