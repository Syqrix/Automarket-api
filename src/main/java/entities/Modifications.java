package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Immutable;

@Entity
@Table(name = "modifications")
@Getter
@Setter
@Immutable
public class Modifications {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "horse_power")
    private Short horsePower;

    @Column(name = "weight")
    private Short weight;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "wheel_id", nullable = false)
    private TypesOfWheelSide typeOfWheelSide;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "generations_id", nullable = false)
    private Generations generation;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "engine_id", nullable = false)
    private TypesOfEngine typeOfEngine;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "transmission_id", nullable = false)
    private Transmissions transmission;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "drive_type_id", nullable = false)
    private TypesOfDrive typeOfDrive;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "engine_volume_id", nullable = false)
    private VolumesOfEngine volumeOfEngine;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "body_type_id", nullable = false)
    private CarBodyTypes carBodyType;
}
