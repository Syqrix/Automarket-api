package dtos.AdvertisementDtos;

import java.math.BigDecimal;
import java.time.ZonedDateTime;

public record AdvertisementResponseDto(
        Long id,
        BigDecimal price,
        ZonedDateTime dateOfPublication,
        Integer views,
        String brand,
        String model,
        String yearOfRelease,
        String techCharacteristics,
        String sellerName
) {}
