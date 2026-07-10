package dtos.AdvertisementDtos;

import jakarta.validation.constraints.*;

import java.math.BigDecimal;
import java.time.LocalDate;

public record CreateAdvertisementDto(
        @NotNull(message = "Price can't be null")
        @Positive(message = "Price should be grater than zero")
        @Digits(integer = 12, fraction = 2, message = "Format should be up to 10 digits before comma and 2 after")
        BigDecimal price,
        @NotNull(message = "Year of release can't be null")
        @Min(value = 1900, message = "The year of release can't be less than 1900")
        Short yearOfRelease,
        @NotNull(message = "Mileage can't be null")
        @PositiveOrZero(message = "Mileage should be positive or zero")
        @Max(value = 1_000_000, message = "Max value is 1 000 000")
        Integer mileage,
        @Size(min = 10, max = 5000, message = "Description can be exists in range of symbols(10 - 5000)")
        String description,
        Boolean isClearedCustoms,
        @NotNull(message = "User can't be null")
        @Positive(message = "This value only can be positive")
        Integer userId,
        @NotNull(message = "Your modification can't be null")
        @Positive(message = "Modification should be positive")
        Integer modificationId,
        @NotNull(message = "Your color can't be null")
        @Positive(message = "Color should be positive")
        Short colorId,
        @NotNull(message = "Your city can't be null")
        @Positive(message = "city should be positive")
        Short cityId

) {}
