package dtos.UserDtos;

public record UserResponseDto(
        Integer id,
        String userName,
        String email,
        String phoneNumber,
        String role
) {}
