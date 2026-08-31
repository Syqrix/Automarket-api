package services;

import dtos.CatalogDtos.BrandAndModelResponseDto;
import dtos.CatalogDtos.BrandResponseDto;
import dtos.CatalogDtos.CountryResponseDto;
import dtos.CatalogDtos.GenerationResponseDto;
import entities.*;
import exceptions.ResourceConflictException;
import exceptions.ResourceNotFoundException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import repositories.*;
import java.util.List;

@Service
public class CatalogService {
    private final ModelRepository modelRepository;
    private final ColorRepository colorRepository;
    private final CityRepository cityRepository;
    private final BrandRepository brandRepository;
    private final GenerationRepository generationRepository;
    private final CountryRepository countryRepository;

    public CatalogService(
            ModelRepository modelRepository, ColorRepository colorRepository, CityRepository cityRepository,
            BrandRepository brandRepository, GenerationRepository generationRepository, CountryRepository countryRepository){
        this.modelRepository = modelRepository;
        this.colorRepository = colorRepository;
        this.cityRepository = cityRepository;
        this.brandRepository = brandRepository;
        this.generationRepository = generationRepository;
        this.countryRepository = countryRepository;
    }

    private BrandResponseDto mapToBrandResponseDto(Brand brand){
        return new BrandResponseDto(
                brand.getId(),
                brand.getBrandName()
        );
    }

    private CountryResponseDto mapToCountryResponseDto(Country country){
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

    private GenerationResponseDto mapToGenerationResponseDto(Generation generation){
        var model = generation.getModel();
        var brand = model.getBrand();
        return new GenerationResponseDto(
                generation.getId(),
                brand.getBrandName(),
                model.getModelName(),
                generation.getGenerationName()
        );
    }

    public List<Color> findAllColors(){
        List<Color> colorList = colorRepository.findAll();

        if(colorList.isEmpty()){
            throw new ResourceNotFoundException("There are no colors");
        }

        return colorList;
    }

    public Color findColorById(Short id){
        return colorRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("There is no color with such id"));
    }

    public List<City> findAllCities(){
        List<City> cityList = cityRepository.findAll();

        if(cityList.isEmpty()){
            throw new ResourceNotFoundException("There are no cities");
        }

        return cityList;
    }

    public City findCityById(Short id){
        return cityRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("There is no city with such id"));
    }

    public List<BrandResponseDto> findAllBrands(){
        List<Brand> BrandList = brandRepository.findAll();

        if(BrandList.isEmpty()){
            throw new ResourceNotFoundException("There are no brands");
        }

        return BrandList.stream().map(this::mapToBrandResponseDto).toList();
    }

    public BrandResponseDto findBrandById(Short id){
        return mapToBrandResponseDto(brandRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("There is no brand with such id")));
    }

    public List<CountryResponseDto> findAllCountries(){
        List<Country> countiesList = countryRepository.findAll();

        if(countiesList.isEmpty()){
            throw new ResourceNotFoundException("There are no countries");
        }

        return countiesList.stream().map(this::mapToCountryResponseDto).toList();
    }

    public List<BrandResponseDto> findBrandsByCountryId(Short id){
        List<Brand> brandList = brandRepository.findByCountryId(id);
        if(brandList.isEmpty()){
            throw new ResourceConflictException("There is no brands with such id");
        }

        return brandList.stream().map(this::mapToBrandResponseDto).toList();
    }

    public Page<BrandAndModelResponseDto> findAllModels(Pageable pageable){
        Page<Model> modelPage = modelRepository.findAll(pageable);

        if(modelPage.isEmpty()){
            throw new ResourceNotFoundException("There are not models");
        }

        return modelPage.map(this::mapToBrandAndModelResponseDto);
    }

    public BrandAndModelResponseDto findModelById(Integer id){
        Model model = modelRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("There is no such model"));

        return mapToBrandAndModelResponseDto(model);
    }

    public Page<GenerationResponseDto> findAllGeneration(Pageable pageable){
        Page<Generation> modificationPage = generationRepository.findAll(pageable);
        if(modificationPage.isEmpty()){
            throw new ResourceNotFoundException("There are no modifications");
        }

        return modificationPage.map(this::mapToGenerationResponseDto);
    }

    public GenerationResponseDto findGenerationById(Integer id){
        Generation generation = generationRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("There is no such generation"));

        return mapToGenerationResponseDto(generation);
    }

    public CountryResponseDto findCountryByCountryId(Short id){
        Country country = countryRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("There is no such country with id: " + id));

        return mapToCountryResponseDto(country);
    }

    public List<BrandAndModelResponseDto> findModelsByBrandId(Integer id){
        List<Model> modelsList = modelRepository.findByBrandId(id);
        if(modelsList.isEmpty()){
            throw new ResourceNotFoundException("There are no models with brandId: " + id);
        }

        return modelsList.stream().map(this::mapToBrandAndModelResponseDto).toList();
    }

}
