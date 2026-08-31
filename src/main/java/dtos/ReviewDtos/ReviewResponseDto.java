package dtos.ReviewDtos;

import java.time.LocalDate;

public record ReviewResponseDto(
        Long id,
        String description,
        LocalDate ownershipStartDate,
        LocalDate dateOfPublicationReview,
        String carModificationName,
        String authorName
) {}
