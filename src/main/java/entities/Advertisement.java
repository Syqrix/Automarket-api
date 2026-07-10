package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.ZonedDateTime;

@Entity
@Table(name = "advertisement")
@Getter
@Setter
public class Advertisement {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "price", nullable = false, precision = 12, scale = 2)
    private BigDecimal price;

    @Column(name = "mileage", nullable = false)
    private int mileage;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @Column(name = "is_cleared_customs", nullable = false)
    private boolean isClearedCustoms;

    @Column(name = "date_of_publication_of_advertisement", nullable = false)
    private ZonedDateTime dateOfPublicationOfAdvertisement = ZonedDateTime.now();

    @Column(name = "views", nullable = false)
    private int views;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "modification_id", nullable = false)
    private Modification modification;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "color_id", nullable = false)
    private Color color;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "city_id", nullable = false)
    private City city;

    @Column(name = "year_of_release", nullable = false)
    private Short yearOfRelease;

}
