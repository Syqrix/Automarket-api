package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "generations")
@Getter
@Setter
public class Generations {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "year_start", nullable = false)
    private Short yearStart;

    @Column(name = "year_end")
    private Short yearEnd;

    @Column(name = "generation_name", nullable = false, length = 128)
    private String generationName;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "model_id", nullable = false)
    private Models model;

    @OneToMany(mappedBy = "generation")
    private List<Modifications> modifications = new ArrayList<>();


}
