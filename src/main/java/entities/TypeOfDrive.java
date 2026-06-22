package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Immutable;

@Entity
@Table(name = "types_of_drive")
@Getter
@Setter
@Immutable
public class TypeOfDrive {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Short id;

    @Column(name = "name_of_drive_type", nullable = false, unique = true, length = 16)
    private String nameOfDriveType;
}
