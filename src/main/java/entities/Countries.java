package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "countries")
@Getter
@Setter
public class Countries {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Short id;

    @Column(name = "country_name", nullable = false, unique = true, length = 64)
    private String countryName;

    @OneToMany(mappedBy = "country")
    private List<Brands> brands = new ArrayList<>();
}
