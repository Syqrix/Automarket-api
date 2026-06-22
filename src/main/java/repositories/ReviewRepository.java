package repositories;

import entities.Review;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {
    Page<Review> findByDateOfPublicationReviewGreaterThan(LocalDate date, Pageable pageable);
    Page<Review> findByDateOfPublicationReviewLessThan(LocalDate date, Pageable pageable);
    Page<Review> findByOwnershipStartDateGreaterThan(LocalDate date, Pageable pageable);
    Page<Review> findByOwnershipStartDateLessThan(LocalDate date, Pageable pageable);
    Page<Review> findByModificationId(Integer modificationId, Pageable pageable);
    Page<Review> findByUserId(Integer userId, Pageable pageable);
}
