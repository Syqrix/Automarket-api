package controllers;

import dtos.CatalogDtos.BrandAndModelResponseDto;
import dtos.CatalogDtos.BrandResponseDto;
import dtos.CatalogDtos.GenerationResponseDto;
import entities.Brand;
import entities.City;
import entities.Color;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
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
        return ResponseEntity.ok(catalogService.getAllColors());
    }

    @GetMapping("/colors/{id}")
    public ResponseEntity<Color> getColorById(@PathVariable Short id){
        return ResponseEntity.ok(catalogService.getColorById(id));
    }

    @GetMapping("/cities")
    public ResponseEntity<List<City>> getAllCities(){
        return ResponseEntity.ok(catalogService.getAllCities());
    }

    @GetMapping("/cities/{id}")
    public ResponseEntity<City> getCityById(@PathVariable Short id){
        return ResponseEntity.ok(catalogService.getCityById(id));
    }

    @GetMapping("/brands")
    public ResponseEntity<List<BrandResponseDto>> getAllBrands(){
        return ResponseEntity.ok(catalogService.getAllBrands());
    }

    @GetMapping("/brands/{id}")
    public ResponseEntity<BrandResponseDto> getBrandById(@PathVariable Short id){
        return ResponseEntity.ok(catalogService.getBrandById(id));
    }

    @GetMapping("/models")
    public ResponseEntity<Page<BrandAndModelResponseDto>> getAllModels(
            @PageableDefault(size = 10, sort = "id", direction = Sort.Direction.ASC)Pageable pageable){
        return ResponseEntity.ok(catalogService.getAllModels(pageable));
    }

    @GetMapping("/models/{id}")
    public ResponseEntity<BrandAndModelResponseDto> getModelById(@PathVariable Integer id){
        return ResponseEntity.ok(catalogService.getModelById(id));
    }

    @GetMapping("/generations")
    public ResponseEntity<Page<GenerationResponseDto>> getAllGenerations(
            @PageableDefault(size = 10, sort = "id", direction = Sort.Direction.ASC) Pageable pageable){
        return ResponseEntity.ok(catalogService.getAllGeneration(pageable));
    }

}
