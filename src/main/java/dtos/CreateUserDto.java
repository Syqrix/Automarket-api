package dtos;

public record CreateUserDto(
        String userName,
        String email,
        String phoneNumber,
        String password
) {}
