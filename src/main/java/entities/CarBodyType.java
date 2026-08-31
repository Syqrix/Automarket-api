package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Immutable;

@Entity
@Table(name = "car_body_types")
@Getter
@Setter
@Immutable
public class CarBodyType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Short id;

    @Column(name = "name_of_body", nullable = false, unique = true, length = 32)
    private String nameOfBody;

}
