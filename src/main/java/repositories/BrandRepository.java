package repositories;

import entities.Brand;
import entities.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface BrandRepository extends JpaRepository<Brand, Short> {
    List<Brand> findByCountryId(Short countryId);
}
