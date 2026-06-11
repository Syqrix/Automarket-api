package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.time.LocalDate;

@Entity
@Table(name = "reviews")
@Getter
@Setter
public class Reviews {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @Column(name = "ownership_start_date", nullable = false)
    private LocalDate ownershipStartDate;

    @Column(name = "date_of_publication_review", nullable = false)
    private LocalDate dateOfPublicationReview;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "modification_id", nullable = false)
    private Modifications modification;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private Users user;

}
