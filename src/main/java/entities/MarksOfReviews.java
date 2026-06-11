package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "marks_of_reviews")
@Getter
@Setter
public class MarksOfReviews {
    @EmbeddedId
    private MarksOfReviewsId id = new MarksOfReviewsId();

    @Column(name = "vote_value", nullable = false)
    private Short voteValue;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("userId")
    @JoinColumn(name = "user_id", nullable = false)
    private Users user;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("reviewId")
    @JoinColumn(name = "review_id", nullable = false)
    private Reviews review;

}
