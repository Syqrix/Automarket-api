package dtos.UserDtos;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

public record UpdateUserDto(
        @NotBlank(message = "User name shouldn't be empty")
        @Size(min = 4, max = 50, message = "Available range for your user name between 4 and 50")
        String userName,
        @NotBlank(message = "Phone number shouldn't be empty")
        @Pattern(regexp = "^\\+7\\d{10}$", message = "Wrong form of phone number, should be +70123456789")
        String phoneNumber
) {}
