package dtos.AdvertisementDtos;

import jakarta.validation.constraints.*;

import java.math.BigDecimal;

public record UpdateAdvertisementDto(
        @Positive(message = "Price should be grater than zero")
        @Digits(integer = 12, fraction = 2, message = "Format should be up to 10 digits before comma and 2 after")
        BigDecimal price,
        @NotNull(message = "Year of release can't be null")
        @Min(value = 1900, message = "The year of release can't be less than 1900")
        Short yearOfRelease,
        @PositiveOrZero(message = "Mileage should be positive or zero")
        @Min(value = 0, message = "Min value is 0")
        @Max(value = 1_000_000, message = "Max value is 1 000 000")
        Integer mileage,
        @Size(min = 10, max = 5000, message = "Description can be exists in range of symbols(10 - 5000)")
        String description,
        Boolean isClearedCustoms,
        @Positive(message = "Modification should be positive")
        Integer modificationId,
        @Positive(message = "Color should be positive")
        Short colorId,
        @Positive(message = "city should be positive")
        Short cityId
) {}
