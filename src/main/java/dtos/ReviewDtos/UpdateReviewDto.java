package dtos.ReviewDtos;

import jakarta.validation.constraints.PastOrPresent;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.Size;

import java.time.LocalDate;

public record UpdateReviewDto(
        @Size(min = 5, max = 5000, message = "Available range of description between 5 and 5000 symbols")
        String description,
        @PastOrPresent(message = "Your date from future")
        LocalDate ownershipStartDate,
        @Positive(message = "Value should be positive")
        Integer modificationId
) {}
