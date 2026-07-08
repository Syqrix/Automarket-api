package services;

import dtos.AdvertisementDtos.AdvertisementResponseDto;
import dtos.AdvertisementDtos.CreateAdvertisementDto;
import dtos.AdvertisementDtos.UpdateAdvertisementDto;
import entities.Advertisement;
import exceptions.ResourceConflictException;
import exceptions.ResourceNotFoundException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import repositories.*;

import java.time.ZonedDateTime;

@Service
public class AdvertisementService {
    private final AdvertisementRepository advertisementRepository;
    private final UserRepository userRepository;
    private final CityRepository cityRepository;
    private final ColorRepository colorRepository;
    private final ModificationRepository modificationRepository;

    public AdvertisementService(AdvertisementRepository advertisementRepository, UserRepository userRepository,
                                CityRepository cityRepository, ColorRepository colorRepository,
                                ModificationRepository modificationRepository){
        this.advertisementRepository = advertisementRepository;
        this.userRepository = userRepository;
        this.cityRepository = cityRepository;
        this.colorRepository = colorRepository;
        this.modificationRepository = modificationRepository;
    }

    private AdvertisementResponseDto mapToResponseDto(Advertisement advertisement){
        var modification = advertisement.getModification();
        var generation = modification.getGeneration();
        var model = generation.getModel();
        var brand = model.getBrand();
        var country = brand.getCountry();

        String techCharacteristics = String.format("%s, %.1fl, %s, %s, %s, %s",
                modification.getCarBodyType().getNameOfBody(), modification.getVolumeOfEngine().getVolume(),
                modification.getTypeOfEngine().getNameOfTypeEngine(), modification.getTransmission().getTypeOfTransmission(),
                modification.getTypeOfDrive().getNameOfDriveType(), modification.getTypeOfWheelSide().getWheelPosition());

        return new AdvertisementResponseDto(
                advertisement.getId(),
                advertisement.getPrice(),
                advertisement.getMileage(),
                advertisement.getDescription(),
                advertisement.isClearedCustoms(),
                advertisement.getDateOfPublicationOfAdvertisement(),
                advertisement.getViews(),
                country.getCountryName(),
                brand.getBrandName(),
                model.getModelName(),
                generation.getGenerationName(),
                techCharacteristics,
                advertisement.getUser().getUserName(),
                advertisement.getColor().getColorName(),
                advertisement.getCity().getNameOfCity()
        );
    }

    public Page<AdvertisementResponseDto> getAllAdvertisements(Pageable pageable){
        Page<Advertisement> page = advertisementRepository.findAll(pageable);

        return page.map(this::mapToResponseDto);
    }

    public AdvertisementResponseDto getAdvertisementById(Long id){
        Advertisement advertisement = advertisementRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("There is no such advertisement"));

        return mapToResponseDto(advertisement);
    }

    public AdvertisementResponseDto createAdvertisement(CreateAdvertisementDto dto){
        if(!userRepository.existsById(dto.userId())){
            throw new ResourceConflictException("There is no such user");
        }

        Advertisement advertisement = new Advertisement();

        advertisement.setPrice(dto.price());
        advertisement.setMileage(dto.mileage());
        advertisement.setDescription(dto.description());
        advertisement.setClearedCustoms(dto.isClearedCustoms() != null ? dto.isClearedCustoms() : true);
        advertisement.setViews(0);
        advertisement.setCity(cityRepository.getReferenceById(dto.cityId()));
        advertisement.setColor(colorRepository.getReferenceById(dto.colorId()));
        advertisement.setDateOfPublicationOfAdvertisement(ZonedDateTime.now());
        advertisement.setUser(userRepository.getReferenceById(dto.userId()));
        advertisement.setModification(modificationRepository.getReferenceById(dto.modificationId()));

        Advertisement savedAdvertisement = advertisementRepository.save(advertisement);

        return mapToResponseDto(savedAdvertisement);

    }

    @Transactional
    public AdvertisementResponseDto updateAdvertisement(
            Long advertisementId, Integer userId, UpdateAdvertisementDto updateAdvertisementDto){
        Advertisement advertisement = advertisementRepository.findById(advertisementId).
                orElseThrow(() -> new ResourceNotFoundException("There is no such advertisement"));

        if(!userId.equals(advertisement.getUser().getId())){
            throw new ResourceConflictException("That's not your advertisement. Access denied!");
        }

        if(updateAdvertisementDto.price() != null){
            advertisement.setPrice(updateAdvertisementDto.price());
        }

        if(updateAdvertisementDto.mileage() != null){
            advertisement.setMileage(updateAdvertisementDto.mileage());
        }

        if(updateAdvertisementDto.isClearedCustoms() != null){
            advertisement.setClearedCustoms(updateAdvertisementDto.isClearedCustoms());
        }

        if(updateAdvertisementDto.colorId() != null){
            advertisement.setColor(colorRepository.getReferenceById(updateAdvertisementDto.colorId()));
        }

        if(updateAdvertisementDto.description() != null){
            advertisement.setDescription(updateAdvertisementDto.description());
        }

        if(updateAdvertisementDto.cityId() != null){
            advertisement.setCity(cityRepository.getReferenceById(updateAdvertisementDto.cityId()));
        }

        if(updateAdvertisementDto.modificationId() != null){
            advertisement.setModification(modificationRepository.getReferenceById(updateAdvertisementDto.modificationId()));
        }

        return mapToResponseDto(advertisement);
    }

    @Transactional
    public void deleteAdvertisement(Long advertisementId, Integer userId){
        Advertisement advertisement = advertisementRepository.findById(advertisementId).
                orElseThrow(() -> new ResourceNotFoundException("There is no such advertisement"));

        if(!advertisement.getUser().getId().equals(userId)){
            throw new ResourceConflictException("That's not your advertisement. Access denied!");
        }

        advertisementRepository.delete(advertisement);
    }
}
