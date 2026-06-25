package services;

import dtos.AdvertisementResponseDto;
import dtos.CreateAdvertisementDto;
import entities.Advertisement;
import org.springframework.stereotype.Service;
import repositories.AdvertisementRepository;

@Service
public class AdvertisementService {
    private final AdvertisementRepository advertisementRepository;

    public AdvertisementService(AdvertisementRepository advertisementRepository){
        this.advertisementRepository = advertisementRepository;
    }

    private AdvertisementResponseDto mapToResponseDto(Advertisement advertisement){
        var modification = advertisement.getModification();
        var generation = modification.getGeneration();
        var model = generation.getModel();
        var brand = model.getBrand();
        var country = brand.getCountry();

        String techCharacteristics = String.format("%")

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

                advertisement.getUser().getUserName(),
                advertisement.getColor().getColorName(),
                advertisement.getCity().getNameOfCity()
        );
    }

    public AdvertisementResponseDto createAdvertisement(CreateAdvertisementDto dto){
        Advertisement advertisement = new Advertisement();

        if(dto.price() != null)


    }
}
