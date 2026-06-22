package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Immutable;
import java.math.BigDecimal;

@Entity
@Table(name = "volumes_of_engine")
@Getter
@Setter
@Immutable
public class VolumeOfEngine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Short id;

    @Column(name = "volume", nullable = false,unique = true, precision = 3, scale = 1)
    private BigDecimal volume;
}
