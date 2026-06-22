package dtos;

import entities.Modification;

import java.time.LocalDate;

public record CreateReviewDto(
        String description,
        LocalDate ownershipStartDate,
        Integer modificationId,
        Integer userId
) {}
