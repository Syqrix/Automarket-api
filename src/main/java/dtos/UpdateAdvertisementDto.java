package dtos;

import jakarta.validation.constraints.*;

import java.math.BigDecimal;

public record UpdateAdvertisementDto(
        @NotNull(message = "User can't be null")
        @Positive(message = "This value only can be positive")
        Integer userId,
        @Positive(message = "Price should be grater than zero")
        @Digits(integer = 12, fraction = 2, message = "Format should be up to 10 digits before comma and 2 after")
        BigDecimal price,
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
