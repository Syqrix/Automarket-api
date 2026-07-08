package dtos.CatalogDtos;

public record GenerationResponseDto(
        Integer generationId,
        String brand,
        String model,
        String generationName
) {}
