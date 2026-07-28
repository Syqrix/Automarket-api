package repositories;

import entities.Advertisement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface AdvertisementRepository extends JpaRepository<Advertisement, Long>,
                                                 JpaSpecificationExecutor<Advertisement> {
    List<Advertisement> findAllAdvertisementsByModificationId(Integer modificationId);

    @Query("SELECT AVG(a.price) FROM Advertisement a WHERE a.modification.id = :modificationId")
    BigDecimal findAveragePriceByModificationId(@Param("modificationId") Integer modificationId);

    @Query("SELECT MIN(a.price) FROM Advertisement a WHERE a.modification.id = :modificationId")
    BigDecimal findMinPriceByModificationId(@Param("modificationId") Integer modificationId);

    @Query("SELECT MAX(a.price) FROM Advertisement a WHERE a.modification.id = :modificationId")
    BigDecimal findMaxPriceByModificationId(@Param("modificationId") Integer modificationId);

}
