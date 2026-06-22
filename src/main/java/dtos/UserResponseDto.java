package dtos;

public record UserResponseDto(
        Long id,
        String userName,
        String email,
        String phoneNumber,
        String password,
        String userRole
) {}
