package dtos.AdvertisementDtos;

import jakarta.validation.constraints.*;
import java.math.BigDecimal;

public record AdvertisementSearchDto(
        @Positive(message = "Max price must be positive")
        @Digits(integer = 12, fraction = 2, message = "Format should be up to 10 digits before comma and 2 after")
        @DecimalMin(value = "50000.00", message = "Price can't be less than value: 50000.00")
        @DecimalMax(value = "999999999.99",message = "Price can't be grater than 9999999999.99")
        BigDecimal maxPrice,
        @Positive(message = "Min price must be positive")
        @Digits(integer = 12, fraction = 2, message = "Format should be up to 10 digits before comma and 2 after")
        @DecimalMin(value = "50000.00", message = "Price can't be less than value: 50000.00")
        @DecimalMax(value = "999999999.99",message = "Price can't be grater than 9999999999.99")
        BigDecimal minPrice,
        @PositiveOrZero(message = "Min mileage must be positive")
        @Max(value = 1_000_000, message = "Max mileage can't be grater than 1000000")
        Integer minMileage,
        @Positive(message = "Max mileage must be positive")
        @Max(value = 1_000_000, message = "Max mileage can't be grater than 1000000")
        Integer maxMileage,
        Boolean isClearedCustoms,
        @Min(value = 1, message = "Min value of countryId is 1")
        @Max(value = 5, message = "Max value of countryId is 5")
        Short countryId,
        @Min(value = 1, message = "Min value of brandId is 1")
        @Max(value = 30, message = "Max value of brandId is 30")
        Short brandId,
        @Min(value = 1, message = "Min value of modelId is 1")
        @Max(value = 229, message = "Max value of modelId is 229")
        Integer modelId,
        @Min(value = 1, message = "Min value of generationId is 1")
        @Max(value = 439, message = "Max value of generationId is 439")
        Integer generationId,
        @Min(value = 1, message = "Min value of colorId is 1")
        @Max(value = 16, message = "Max value of colorId is 16")
        Short colorId,
        @Min(value = 1, message = "Min value of cityId is 1")
        @Max(value = 17, message = "Max value of cityId is 17")
        Short cityId,
        @Min(value = 1900, message = "Min value of minYear is 1")
        Short minYear,
        @Min(value = 1, message = "Min value of maxYear is 1")
        Short maxYear,
        @Min(value = 1, message = "Min value of bodyId is 1")
        @Max(value = 12, message = "Max value of bodyId is 12")
        Short bodyId,
        @Min(value = 1, message = "Min value of typeOfEngineId is 1")
        @Max(value = 6, message = "Max value of typeOfEngineId is 6")
        Short typeOfEngineId,
        @Min(value = 1, message = "Min value of transmissionId is 1")
        @Max(value = 5, message = "Max value of transmissionId is 5")
        Short transmissionId,
        @Min(value = 1, message = "Min value of positionOfWheelId is 1")
        @Max(value = 2, message = "Max value of positionOfWheelId is 2")
        Short positionOfWheelId,
        @Min(value = 1, message = "Min value of typeOfDriveId is 1")
        @Max(value = 3, message = "Max value of typeOfDriveId is 3")
        Short typeOfDriveId,
        @Min(value = 1, message = "Min value of minVolumeOfEngineId is 1")
        @Max(value = 49, message = "Max value of minVolumeOfEngineId is 49")
        Short minVolumeOfEngineId,
        @Min(value = 1, message = "Min value of maxVolumeOfEngineId is 1")
        @Max(value = 49, message = "Max value of maxVolumeOfEngineId is 49")
        Short maxVolumeOfEngineId
) {}