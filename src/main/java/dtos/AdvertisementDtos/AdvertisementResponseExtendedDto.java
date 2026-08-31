package dtos.AdvertisementDtos;

import java.math.BigDecimal;
import java.time.ZonedDateTime;

public record AdvertisementResponseExtendedDto(
        Long id,
        BigDecimal price,
        Integer mileage,
        String description,
        boolean isClearedCustoms,
        ZonedDateTime dateOfPublication,
        Integer views,
        String countryOfOrigin,
        String brand,
        String model,
        String generationName,
        String yearOfGeneration,
        String yearOfRelease,
        String techCharacteristics,
        String sellerName,
        String colorName,
        String cityName
) {}
