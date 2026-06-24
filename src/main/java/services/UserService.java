package services;

import dtos.CreateUserDto;
import dtos.UpdateUserDto;
import dtos.UserResponseDto;
import entities.User;
import exceptions.ResourceConflictException;
import exceptions.ResourceNotFoundException;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import repositories.UserRepository;


@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository){
        this.userRepository = userRepository;
    }

    public UserResponseDto register(CreateUserDto dto){
        if(userRepository.existsByEmail(dto.email())){
            throw new ResourceConflictException("Email already exists");
        }

        if(userRepository.existsByPhoneNumber(dto.phoneNumber())){
            throw new ResourceConflictException("Phone number already exists");
        }

        User user = new User();
        user.setUserName(dto.userName());
        user.setEmail(dto.email());
        user.setPhoneNumber(dto.phoneNumber());
        user.setPassword(dto.password());

        User savedUser = userRepository.save(user);

        return new UserResponseDto(
                savedUser.getId(),
                savedUser.getUserName(),
                savedUser.getEmail(),
                savedUser.getPhoneNumber(),
                savedUser.getRole()
        );
    }

    public Page<UserResponseDto> showAllUsers(Pageable pageable){
        Page<User> userPage = userRepository.findAll(pageable);

        return userPage.map(user -> new UserResponseDto(
                user.getId(),
                user.getUserName(),
                user.getEmail(),
                user.getPhoneNumber(),
                user.getRole()
        ));
    }

    @Transactional
    public UserResponseDto updateUser(Integer id, UpdateUserDto updateUserDto){
        User user = userRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("There is no such user"));

        if(updateUserDto.userName() != null && !updateUserDto.userName().isBlank()){
            user.setUserName(updateUserDto.userName());
        }

        if(updateUserDto.phoneNumber() != null && !updateUserDto.phoneNumber().isBlank()){
            if(userRepository.existsByPhoneNumber(updateUserDto.phoneNumber()) && updateUserDto.phoneNumber().equals(user.getPhoneNumber())){
                throw new ResourceConflictException("This number is already taker");
            }
            user.setPhoneNumber(updateUserDto.phoneNumber());
        }

        return new UserResponseDto(
                user.getId(),
                user.getUserName(),
                user.getEmail(),
                user.getPhoneNumber(),
                user.getRole()
        );
    }

    @Transactional
    public void deleteUser(Integer id){
        if(!userRepository.existsById(id)){
            throw new ResourceNotFoundException("User with id: " + id + " doesn't exist");
        }

        userRepository.deleteById(id);
    }
}
