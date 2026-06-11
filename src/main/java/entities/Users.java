package entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "users")
@Getter
@Setter
public class Users {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "user_name", nullable = false, length = 64)
    private String userName;

    @Column(name = "email", nullable = false, unique = true, length = 256)
    private String email;

    @Column(name = "phone_number", nullable = false, unique = true, length = 32)
    private String phoneNumber;

    @Column(name = "password", nullable = false, length = 256)
    private String password;

    @Column(name = "role", nullable = false, length = 16)
    private String role = "user";
}
