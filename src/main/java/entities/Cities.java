package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Immutable;

@Entity
@Table(name = "cities")
@Getter
@Setter
@Immutable
public class Cities {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Short id;

    @Column(name = "name_of_city",nullable = false,unique = true,length = 128)
    private String nameOfCity;
}
