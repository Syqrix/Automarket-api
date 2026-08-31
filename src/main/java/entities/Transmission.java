package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Immutable;

@Entity
@Table(name = "transmissions")
@Getter
@Setter
@Immutable
public class Transmission {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Short id;

    @Column(name = "type_of_transmission", nullable = false, unique = true, length = 16)
    private String typeOfTransmission;
}
