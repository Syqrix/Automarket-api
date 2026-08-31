package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Immutable;

@Entity
@Table(name = "colors")
@Getter
@Setter
@Immutable
public class Color {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Short id;

    @Column(name = "color_name", nullable = false,unique = true,length = 32)
    private String colorName;

}
