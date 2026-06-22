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
public class Modification {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "horse_power")
    private Short horsePower;

    @Column(name = "weight")
    private Short weight;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "wheel_id", nullable = false)
    private TypeOfWheelSide typeOfWheelSide;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "generations_id", nullable = false)
    private Generation generation;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "engine_id", nullable = false)
    private TypeOfEngine typeOfEngine;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "transmission_id", nullable = false)
    private Transmission transmission;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "drive_type_id", nullable = false)
    private TypeOfDrive typeOfDrive;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "engine_volume_id", nullable = false)
    private VolumeOfEngine volumeOfEngine;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "body_type_id", nullable = false)
    private CarBodyType carBodyType;
}
