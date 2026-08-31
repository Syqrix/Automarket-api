package dtos;

import java.time.ZonedDateTime;
import java.util.Map;

public record ApiErrorResponse(
        ZonedDateTime time,
        int status,
        String error,
        String message,
        String code,
        Map<String, String> fieldErrors
) {
    public ApiErrorResponse(int status, String error, String message, String code) {
        this(ZonedDateTime.now(), status, error, message, code, null);
    }

    public ApiErrorResponse(int status, String error, String message, String code, Map<String, String> fieldErrors) {
        this(ZonedDateTime.now(), status, error, message, code, fieldErrors);
    }
}
