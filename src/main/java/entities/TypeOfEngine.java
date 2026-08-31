package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Immutable;

@Entity
@Table(name = "types_of_engine")
@Getter
@Setter
@Immutable
public class TypeOfEngine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Short id;

    @Column(name = "name_of_type_engine", nullable = false, length = 32, unique = true)
    private String nameOfTypeEngine;
}
