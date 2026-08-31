package services;

import dtos.AdvertisementDtos.*;
import entities.Advertisement;
import exceptions.ResourceConflictException;
import exceptions.ResourceNotFoundException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import repositories.*;
import java.math.BigDecimal;
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

    private AdvertisementResponseExtendedDto mapToExtendedResponseDto(Advertisement advertisement){
        var modification = advertisement.getModification();
        var generation = modification.getGeneration();
        var model = generation.getModel();
        var brand = model.getBrand();
        var country = brand.getCountry();

        var endYear = (generation.getYearEnd() == null) ? java.time.Year.now() : generation.getYearEnd();

        String yearOfGeneration = String.format("(%s-%s)",
                generation.getYearStart(), endYear);

        String techCharacteristics = String.format("%s, %.1fl, %s, %s, %s, %s",
                modification.getCarBodyType().getNameOfBody(), modification.getVolumeOfEngine().getVolume(),
                modification.getTypeOfEngine().getNameOfTypeEngine(), modification.getTransmission().getTypeOfTransmission(),
                modification.getTypeOfDrive().getNameOfDriveType(), modification.getTypeOfWheelSide().getWheelPosition());

        return new AdvertisementResponseExtendedDto(
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
                yearOfGeneration,
                advertisement.getYearOfRelease().toString(),
                techCharacteristics,
                advertisement.getUser().getUserName(),
                advertisement.getColor().getColorName(),
                advertisement.getCity().getNameOfCity()
        );
    }

    private AdvertisementResponseDto mapToResponseDto(Advertisement advertisement){
        var modification = advertisement.getModification();
        var generation = modification.getGeneration();
        var model = generation.getModel();
        var brand = model.getBrand();

        String techCharacteristics = String.format("%s, %.1fl, %s, %s, %s, %s",
                modification.getCarBodyType().getNameOfBody(), modification.getVolumeOfEngine().getVolume(),
                modification.getTypeOfEngine().getNameOfTypeEngine(), modification.getTransmission().getTypeOfTransmission(),
                modification.getTypeOfDrive().getNameOfDriveType(), modification.getTypeOfWheelSide().getWheelPosition());

        return new AdvertisementResponseDto(
                advertisement.getId(),
                advertisement.getPrice(),
                advertisement.getDateOfPublicationOfAdvertisement(),
                advertisement.getViews(),
                brand.getBrandName(),
                model.getModelName(),
                advertisement.getYearOfRelease().toString(),
                techCharacteristics,
                advertisement.getUser().getUserName()
        );
    }

    public Page<AdvertisementResponseDto> search(AdvertisementSearchDto dto, Pageable pageable){
        Specification<Advertisement> spec = Specification.anyOf();

        spec = spec.and(AdvertisementSpecification.priceBetween(dto))
                .and(AdvertisementSpecification.volumeEngineBetween(dto))
                .and(AdvertisementSpecification.hasCharacteristics(dto))
                .and(AdvertisementSpecification.mileageBetween(dto));

        if(dto.isClearedCustoms() != null){
            spec = spec.and(AdvertisementSpecification.isClearedCustoms(dto.isClearedCustoms()));
        }

        if(dto.cityId() != null){
            spec = spec.and(AdvertisementSpecification.hasCity(dto.cityId()));
        }

        if(dto.colorId() != null){
            spec = spec.and(AdvertisementSpecification.hasColor(dto.colorId()));
        }

        Page<Advertisement> pageOfAdvertisement = advertisementRepository.findAll(spec, pageable);
        if(pageOfAdvertisement.isEmpty()){
            throw new ResourceNotFoundException("There are no advertisements");
        }


        return pageOfAdvertisement.map(this::mapToResponseDto);
    }

    public Page<AdvertisementResponseDto> getAllAdvertisements(Pageable pageable){
        Page<Advertisement> page = advertisementRepository.findAll(pageable);

        if(page.isEmpty()){
            throw new ResourceNotFoundException("There are no advertisements");
        }

        return page.map(this::mapToResponseDto);
    }

    public AdvertisementResponseExtendedDto getAdvertisementById(Long id){
        Advertisement advertisement = advertisementRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("There is no such advertisement"));

        advertisement.setViews(advertisement.getViews() + 1);

        advertisementRepository.save(advertisement);

        return mapToExtendedResponseDto(advertisement);
    }

    public AdvertisementResponseExtendedDto createAdvertisement(CreateAdvertisementDto dto){
        var modification = modificationRepository.findById(dto.modificationId())
                .orElseThrow(() -> new ResourceNotFoundException("Modification with id " + dto.modificationId() + " not found"));
        var generation = modification.getGeneration();

        BigDecimal avgPrice = advertisementRepository.findAveragePriceByModificationId(dto.modificationId());

        if(avgPrice != null){
            BigDecimal loverBound = avgPrice.multiply(BigDecimal.valueOf(0.3));
            BigDecimal upperBound = avgPrice.multiply(BigDecimal.valueOf(3.0));

            if(dto.price().compareTo(loverBound) < 0 || dto.price().compareTo(upperBound) > 0){
                throw new ResourceConflictException("Your price looks not correct if compare to avg: "
                        + avgPrice.intValue() + " please check your price");
            }
        }

        if(!userRepository.existsById(dto.userId())){
            throw new ResourceConflictException("There is no such user");
        }

        if(dto.yearOfRelease() < generation.getYearStart() ||
                (generation.getYearEnd() != null && dto.yearOfRelease() > generation.getYearEnd())) {
            throw new ResourceConflictException("Your year of release not in range of your car generation");
        }

        Advertisement advertisement = new Advertisement();

        advertisement.setPrice(dto.price());
        advertisement.setMileage(dto.mileage());
        advertisement.setDescription(dto.description());
        advertisement.setClearedCustoms(dto.isClearedCustoms() != null ? dto.isClearedCustoms() : true);
        advertisement.setViews(0);
        advertisement.setYearOfRelease(dto.yearOfRelease());
        advertisement.setCity(cityRepository.getReferenceById(dto.cityId()));
        advertisement.setColor(colorRepository.getReferenceById(dto.colorId()));
        advertisement.setDateOfPublicationOfAdvertisement(ZonedDateTime.now());
        advertisement.setUser(userRepository.getReferenceById(dto.userId()));
        advertisement.setModification(modificationRepository.getReferenceById(dto.modificationId()));

        Advertisement savedAdvertisement = advertisementRepository.save(advertisement);

        return mapToExtendedResponseDto(savedAdvertisement);
    }

    @Transactional
    public AdvertisementResponseExtendedDto updateAdvertisement(
            Long advertisementId, Integer userId, UpdateAdvertisementDto updateAdvertisementDto){
        Advertisement advertisement = advertisementRepository.findById(advertisementId).
                orElseThrow(() -> new ResourceNotFoundException("There is no such advertisement"));

        if(!userId.equals(advertisement.getUser().getId())){
            throw new ResourceConflictException("That's not your advertisement. Access denied!");
        }

        if(updateAdvertisementDto.yearOfRelease() != null){
            int currentDate = java.time.Year.now().getValue();

            if(updateAdvertisementDto.yearOfRelease() > currentDate){
                throw new IllegalArgumentException("Year of release can't be grater than current year");
            }

            advertisement.setYearOfRelease(updateAdvertisementDto.yearOfRelease());
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

        return mapToExtendedResponseDto(advertisement);
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
