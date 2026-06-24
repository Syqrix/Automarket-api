package dtos;

import jakarta.validation.constraints.*;

import java.time.LocalDate;

public record CreateReviewDto(
        @NotBlank(message = "Your should write something")
        @Size(min = 5, max = 5000, message = "Available range of description between 5 and 5000 symbols")
        String description,
        @NotNull(message = "Value can't be empty")
        @PastOrPresent(message = "Your date from future")
        LocalDate ownershipStartDate,
        @NotNull(message = "Value can't be empty")
        @Positive(message = "Value should be positive")
        Integer modificationId,
        @NotNull(message = "Value can't be empty")
        @Positive(message = "Value should be positive")
        Integer userId
) {}
