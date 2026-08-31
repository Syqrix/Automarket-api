package controllers;

import dtos.UserDtos.CreateUserDto;
import dtos.UserDtos.UpdateUserDto;
import dtos.UserDtos.UserCounterResponseDto;
import dtos.UserDtos.UserResponseDto;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import services.UserService;

import java.util.List;

@RestController
@RequestMapping("/api/v1/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService){
        this.userService = userService;
    }

    @GetMapping
    public ResponseEntity<Page<UserResponseDto>> getAllUsers(
            @PageableDefault(size = 10, sort = "id", direction = Sort.Direction.ASC) Pageable pageable){
        Page<UserResponseDto> allUsers = userService.showAllUsers(pageable);

        return ResponseEntity.ok(allUsers);
    }

    @GetMapping("/email/{email}")
    public ResponseEntity<UserResponseDto> getUserByEmail(@PathVariable String email){
        UserResponseDto user = userService.findUserByEmail(email);

        return ResponseEntity.ok(user);

    }

    @GetMapping("phoneNumber/{phoneNumber}")
    public ResponseEntity<UserResponseDto> getUserByPhoneNumber(@PathVariable String phoneNumber){
        UserResponseDto user = userService.findUserByPhoneNumber(phoneNumber);

        return ResponseEntity.ok(user);
    }

    @GetMapping("userName/{userName}")
    public ResponseEntity<List<UserResponseDto>> getUsersByUserName(@PathVariable String userName){
        List<UserResponseDto> listOfUsers = userService.findUsersByUserName(userName);

        return ResponseEntity.ok(listOfUsers);
    }

    @GetMapping("role/{role}")
    public ResponseEntity<Page<UserResponseDto>> getAllUsersByRole(
            @PathVariable String role,
            @PageableDefault(size = 10, sort = "id", direction = Sort.Direction.ASC) Pageable pageable){
        Page<UserResponseDto> pageOfUsers = userService.findAllUsersByRole(role, pageable);

        return ResponseEntity.ok(pageOfUsers);
    }

    @GetMapping("/search")
    public ResponseEntity<UserResponseDto> getUserByPhoneOrEmail
            (@RequestParam(required = false) String email, @RequestParam(required = false) String phoneNumber){
        UserResponseDto user = userService.findUserByPhoneNumberOrEmail(email, phoneNumber);

        return ResponseEntity.ok(user);
    }

    @GetMapping("/count/{userName}")
    public ResponseEntity<UserCounterResponseDto> getNumberOfUsersWithSameUserName(@PathVariable String userName){
        UserCounterResponseDto number = userService.getNumberOfUsersWithSameUserName(userName);

        return ResponseEntity.ok(number);
    }

    @PostMapping
    public ResponseEntity<UserResponseDto> createUser(@Valid @RequestBody CreateUserDto createUserDto){
        UserResponseDto createdUser = userService.register(createUserDto);

        return new ResponseEntity<>(createdUser, HttpStatus.CREATED);
    }

    @PutMapping("/update/{id}")
    public ResponseEntity<UserResponseDto> updateUser(@PathVariable Integer id, @RequestBody UpdateUserDto dto){
        UserResponseDto user = userService.updateUser(id, dto);

        return ResponseEntity.ok(user);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteUser(@PathVariable Integer id){
        userService.deleteUser(id);

        return ResponseEntity.noContent().build();

    }
}
