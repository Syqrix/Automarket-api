package dtos;

import java.math.BigDecimal;
import java.time.ZonedDateTime;

public record AdvertisementResponseDto(
        Long id,
        BigDecimal price,
        Integer mileage,
        String description,
        boolean isClearedCustoms,
        ZonedDateTime dateOfPublication,
        Integer views,
        String carModification,
        String sellerName,
        String colorName,
        String cityName
) {}
