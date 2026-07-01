package dtos;

import jakarta.validation.constraints.*;

public record CreateUserDto(
        @NotBlank(message = "User name shouldn't be empty")
        @Size(min = 4, max = 50, message = "Available range for your user name between 4 and 50")
        String userName,
        @NotBlank(message = "Email shouldn't be empty")
        @Email(message = "Wrong email form")
        String email,
        @NotBlank(message = "Phone number shouldn't be empty")
        @Pattern(regexp = "^\\+7\\d{10}$", message = "Wrong form of phone number, should be +70123456789")
        String phoneNumber,
        @NotBlank(message = "Password shouldn't be empty")
        @Size(min = 8, max = 32, message = "Available range for password between 8 and 32")
        @Pattern(regexp = "^[a-zA-Zа-яА-Я0-9\\p{InCYRILLIC}]+$", message = "Min size of password is 8")
        String password
) {}
