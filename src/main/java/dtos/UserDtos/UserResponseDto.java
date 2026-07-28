package dtos.UserDtos;

import java.io.Serial;
import java.io.Serializable;

public record UserResponseDto(
        Integer id,
        String userName,
        String email,
        String phoneNumber,
        String role
) implements Serializable {
    private static final long serialVersionUID = 1L;
}
