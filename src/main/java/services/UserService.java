package services;

import dtos.CreateUserDto;
import dtos.UpdateUserDto;
import dtos.UserCounterResponseDto;
import dtos.UserResponseDto;
import entities.User;
import exceptions.ResourceConflictException;
import exceptions.ResourceNotFoundException;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import repositories.UserRepository;

import java.util.List;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository){
        this.userRepository = userRepository;
    }

    private UserResponseDto mapToResponseDto(User user) {
        return new UserResponseDto(
                user.getId(),
                user.getUserName(),
                user.getEmail(),
                user.getPhoneNumber(),
                user.getRole()
        );
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

        userRepository.save(user);

        return mapToResponseDto(user);
    }

    public Page<UserResponseDto> showAllUsers(Pageable pageable){
        Page<User> userPage = userRepository.findAll(pageable);

        return userPage.map(this::mapToResponseDto);
    }

    public UserResponseDto findUserByPhoneNumber(String phoneNumber){
        return userRepository.findByPhoneNumber(phoneNumber).map(this::mapToResponseDto).orElseThrow(
                () -> new ResourceNotFoundException("User with phone number " + phoneNumber + " doesn't exist"));
    }

    public UserResponseDto findUserByEmail(String email){
        return userRepository.findByEmail(email).map(this::mapToResponseDto).orElseThrow(
                () -> new ResourceNotFoundException("User with email " + email + " doesn't exist"));
    }

    public List<UserResponseDto> findUsersByUserName(String userName){
        List<User> userList = userRepository.findAllUsersByUserName(userName);
        if(userList.isEmpty()){
            throw new ResourceNotFoundException("There are no users with such user name");
        }

        return userList.stream().map(this::mapToResponseDto).toList();
    }

    public Page<UserResponseDto> findAllUsersByRole(String role, Pageable pageable){
        Page<User> userPage = userRepository.findAllUsersByRole(role, pageable);
        if(userPage.isEmpty()){
            throw new ResourceNotFoundException("There are no users with such role");
        }

        return userPage.map(this::mapToResponseDto);
    }

    public UserCounterResponseDto getNumberOfUsersWithSameUserName(String userName){
        long numberOfUserWithSameUserName = userRepository.countByUserName(userName);

        return new UserCounterResponseDto(
                numberOfUserWithSameUserName
        );
    }

    public UserResponseDto findUserByPhoneNumberOrEmail(String email, String phoneNumber){
        return userRepository.findByEmailOrPhoneNumber(email, phoneNumber).map(this::mapToResponseDto).orElseThrow(() ->
               new ResourceNotFoundException("There is no user with email " + email + " or with phone number " + phoneNumber));
    }

    @Transactional
    public UserResponseDto updateUser(Integer id, UpdateUserDto updateUserDto){
        User user = userRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("There is no such user"));

        if(updateUserDto.userName() != null && !updateUserDto.userName().isBlank()){
            user.setUserName(updateUserDto.userName());
        }

        if(updateUserDto.phoneNumber() != null && !updateUserDto.phoneNumber().isBlank()){
            if(userRepository.existsByPhoneNumber(updateUserDto.phoneNumber())
                    && !updateUserDto.phoneNumber().equals(user.getPhoneNumber())){
                throw new ResourceConflictException("This number is already taken");
            }
            user.setPhoneNumber(updateUserDto.phoneNumber());
        }

        return mapToResponseDto(user);
    }

    @Transactional
    public void deleteUser(Integer id){
        if(!userRepository.existsById(id)){
            throw new ResourceNotFoundException("User with id: " + id + " doesn't exist");
        }

        userRepository.deleteById(id);
    }
}
