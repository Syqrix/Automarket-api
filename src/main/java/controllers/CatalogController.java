package controllers;

import dtos.CatalogDtos.BrandAndModelResponseDto;
import dtos.CatalogDtos.BrandResponseDto;
import dtos.CatalogDtos.CountryResponseDto;
import dtos.CatalogDtos.GenerationResponseDto;
import entities.City;
import entities.Color;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import services.CatalogService;

import java.util.List;

@RestController
@RequestMapping("/api/v1/catalog")
public class CatalogController {

    private final CatalogService catalogService;

    public CatalogController(CatalogService catalogService){
        this.catalogService = catalogService;
    }

    @GetMapping("/colors")
    public ResponseEntity<List<Color>> getAllColors(){
        return ResponseEntity.ok(catalogService.findAllColors());
    }

    @GetMapping("/colors/{id}")
    public ResponseEntity<Color> getColorById(@PathVariable Short id){
        return ResponseEntity.ok(catalogService.findColorById(id));
    }

    @GetMapping("/cities")
    public ResponseEntity<List<City>> getAllCities(){
        return ResponseEntity.ok(catalogService.findAllCities());
    }

    @GetMapping("/cities/{id}")
    public ResponseEntity<City> getCityById(@PathVariable Short id){
        return ResponseEntity.ok(catalogService.findCityById(id));
    }

    @GetMapping("/brands")
    public ResponseEntity<List<BrandResponseDto>> getAllBrands(){
        return ResponseEntity.ok(catalogService.findAllBrands());
    }

    @GetMapping("/brands/{id}")
    public ResponseEntity<BrandResponseDto> getBrandById(@PathVariable Short id){
        return ResponseEntity.ok(catalogService.findBrandById(id));
    }

    @GetMapping("/brands/country/{id}")
    public ResponseEntity<List<BrandResponseDto>> getBrandsByCountryId(@PathVariable Short id){
        return ResponseEntity.ok(catalogService.findBrandsByCountryId(id));
    }

    @GetMapping("/models")
    public ResponseEntity<Page<BrandAndModelResponseDto>> getAllModels(
            @PageableDefault(size = 10, sort = "id", direction = Sort.Direction.ASC)Pageable pageable){
        return ResponseEntity.ok(catalogService.findAllModels(pageable));
    }

    @GetMapping("/models/{id}")
    public ResponseEntity<BrandAndModelResponseDto> getModelById(@PathVariable Integer id){
        return ResponseEntity.ok(catalogService.findModelById(id));
    }

    @GetMapping("/models/brand/{id}")
    public ResponseEntity<List<BrandAndModelResponseDto>> getModelsByBrandId(@PathVariable Integer id){
        return ResponseEntity.ok(catalogService.findModelsByBrandId(id));
    }

    @GetMapping("/generations")
    public ResponseEntity<Page<GenerationResponseDto>> getAllGenerations(
            @PageableDefault(size = 10, sort = "id", direction = Sort.Direction.ASC) Pageable pageable){
        return ResponseEntity.ok(catalogService.findAllGeneration(pageable));
    }

    @GetMapping("/generations/{id}")
    public ResponseEntity<GenerationResponseDto> getGenerationById(@PathVariable Integer id){
        return ResponseEntity.ok(catalogService.findGenerationById(id));
    }

    @GetMapping("/countries")
    public ResponseEntity<List<CountryResponseDto>> getAllCountries(){
        return ResponseEntity.ok(catalogService.findAllCountries());
    }
    @GetMapping("/countries/{id}")
    public ResponseEntity<CountryResponseDto> getCountryById(@PathVariable Short id){
        return ResponseEntity.ok(catalogService.findCountryByCountryId(id));
    }

}
