package dtos.AdvertisementDtos;

import java.math.BigDecimal;

public record AdvertisementSearchDto(
        BigDecimal maxPrice,
        BigDecimal minPrice,
        Integer mileage,
        Boolean isClearedCustoms,
        String CountryOfOrigin,
        String brand,
        String model,
        String generationName,
        Integer sellerId,
        Short colorId,
        Short cityId
) {}
