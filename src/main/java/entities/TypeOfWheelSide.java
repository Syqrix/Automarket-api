package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Immutable;

@Entity
@Table(name = "types_of_wheel_side")
@Getter
@Setter
@Immutable
public class TypeOfWheelSide {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Short id;

    @Column(name = "wheel_position", nullable = false, unique = true, length = 16)
    private String wheelPosition;
}
