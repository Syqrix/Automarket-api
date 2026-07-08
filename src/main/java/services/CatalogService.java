package services;

import dtos.CatalogDtos.BrandAndModelResponseDto;
import dtos.CatalogDtos.BrandResponseDto;
import dtos.CatalogDtos.CountryResponseDto;
import dtos.CatalogDtos.GenerationResponseDto;
import entities.*;
import exceptions.ResourceNotFoundException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import repositories.*;
import java.util.List;

@Service
public class CatalogService {

    private final ModificationRepository modificationRepository;
    private final ModelRepository modelRepository;
    private final ColorRepository colorRepository;
    private final CityRepository cityRepository;
    private final BrandRepository brandRepository;

    public CatalogService(
            ModificationRepository modificationRepository, ModelRepository modelRepository, ColorRepository colorRepository,
            CityRepository cityRepository, BrandRepository brandRepository){
        this.modificationRepository = modificationRepository;
        this.modelRepository = modelRepository;
        this.colorRepository = colorRepository;
        this.cityRepository = cityRepository;
        this.brandRepository = brandRepository;
    }

    private BrandResponseDto mapToBrandResponseDto(Brand brand){
        return new BrandResponseDto(
                brand.getId(),
                brand.getBrandName()
        );
    }

    private CountryResponseDto mapToCountryResponseDto(Brand brand){
        var country = brand.getCountry();

        return new CountryResponseDto(
                country.getId(),
                country.getCountryName()
        );
    }

    private BrandAndModelResponseDto mapToBrandAndModelResponseDto(Model model){
        var brand = model.getBrand();
        return new BrandAndModelResponseDto(
                model.getId(),
                brand.getBrandName(),
                model.getModelName()
        );
    }

    private GenerationResponseDto mapToModificationResponseDto(Modification modification){
        var generation = modification.getGeneration();
        var model = generation.getModel();
        var brand = model.getBrand();
        return new GenerationResponseDto(
                generation.getId(),
                brand.getBrandName(),
                model.getModelName(),
                generation.getGenerationName()
        );
    }

    public List<Color> getAllColors(){
        List<Color> colorList = colorRepository.findAll();

        if(colorList.isEmpty()){
            throw new ResourceNotFoundException("There are no colors");
        }

        return colorList;
    }

    public Color getColorById(Short id){
        return colorRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("There is no color with such id"));
    }

    public List<City> getAllCities(){
        List<City> cityList = cityRepository.findAll();

        if(cityList.isEmpty()){
            throw new ResourceNotFoundException("There are no cities");
        }

        return cityList;
    }

    public City getCityById(Short id){
        return cityRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("There is no city with such id"));
    }

    public List<BrandResponseDto> getAllBrands(){
        List<Brand> BrandList = brandRepository.findAll();

        if(BrandList.isEmpty()){
            throw new ResourceNotFoundException("There are no brands");
        }

        return BrandList.stream().map(this::mapToBrandResponseDto).toList();
    }

    public BrandResponseDto getBrandById(Short id){
        return mapToBrandResponseDto(brandRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("There is no brand with such id")));
    }

    public List<CountryResponseDto> getAllCountries(){
        List<Brand> brandsList = brandRepository.findAll();

        if(brandsList.isEmpty()){
            throw new ResourceNotFoundException("There are no countries");
        }

        return brandsList.stream().map(this::mapToCountryResponseDto).toList();
    }

    public Page<BrandAndModelResponseDto> getAllModels(Pageable pageable){
        Page<Model> modelPage = modelRepository.findAll(pageable);

        if(modelPage.isEmpty()){
            throw new ResourceNotFoundException("There are not models");
        }

        return modelPage.map(this::mapToBrandAndModelResponseDto);
    }

    public BrandAndModelResponseDto getModelById(Integer id){
        Model model = modelRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("There is no such model"));

        return mapToBrandAndModelResponseDto(model);
    }

    public Page<GenerationResponseDto> getAllGeneration(Pageable pageable){
        Page<Modification> modificationPage = modificationRepository.findAll(pageable);
        if(modificationPage.isEmpty()){
            throw new ResourceNotFoundException("There are no modifications");
        }

        return modificationPage.map(this::mapToModificationResponseDto);
    }



}
