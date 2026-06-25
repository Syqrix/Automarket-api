package repositories;

import entities.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
    List<User> findAllUsersByUserName(String userName);
    Optional<User> findByEmail(String email);
    Optional<User> findByPhoneNumber(String phoneNumber);;
    boolean existsByUserName(String userName);
    boolean existsByEmail(String email);
    boolean existsByPhoneNumber(String phoneNumber);
    long countByUserName(String userName);
    Optional<User> findByEmailOrPhoneNumber(String email, String phoneNumber);
    Page<User> findAllUsers(Pageable pageable);
    Page<User> findAllUsersByRole(String role,Pageable pageable);
}
