package controllers;

import dtos.AdvertisementDtos.AdvertisementResponseDto;
import dtos.AdvertisementDtos.AdvertisementSearchDto;
import dtos.AdvertisementDtos.CreateAdvertisementDto;
import dtos.AdvertisementDtos.UpdateAdvertisementDto;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import services.AdvertisementService;

@RestController
@RequestMapping("/api/v1/advertisements")
public class AdvertisementController {

    private final AdvertisementService advertisementService;

    public AdvertisementController(AdvertisementService advertisementService){
        this.advertisementService = advertisementService;
    }

    @GetMapping("/search")
    public ResponseEntity<Page<AdvertisementResponseDto>> search(@Valid AdvertisementSearchDto dto, @PageableDefault(
                    size = 10, sort = "dateOfPublicationOfAdvertisement", direction = Sort.Direction.DESC) Pageable pageable){
        return ResponseEntity.ok(advertisementService.search(dto, pageable));
    }

    @GetMapping
    public ResponseEntity<Page<AdvertisementResponseDto>> getAllAdvertisement(
            @PageableDefault(size = 10, sort = "dateOfPublicationOfAdvertisement", direction = Sort.Direction.DESC)Pageable pageable){
        Page<AdvertisementResponseDto> page = advertisementService.getAllAdvertisements(pageable);

        return ResponseEntity.ok(page);
    }

    @GetMapping("{id}")
    public ResponseEntity<AdvertisementResponseDto> getAdvertisementById(@PathVariable Long id){
        AdvertisementResponseDto advertisement = advertisementService.getAdvertisementById(id);

        return ResponseEntity.ok(advertisement);
    }

    @PutMapping
    public ResponseEntity<AdvertisementResponseDto> updateAdvertisement(
            @RequestParam Long advertisementId, @RequestParam Integer userId, @Valid @RequestBody UpdateAdvertisementDto dto){
        AdvertisementResponseDto updatedAdvertisement =
                advertisementService.updateAdvertisement(advertisementId, userId,  dto);

        return ResponseEntity.ok(updatedAdvertisement);
    }

    @PostMapping
    public ResponseEntity<AdvertisementResponseDto> createAdvertisement(@Valid @RequestBody CreateAdvertisementDto dto){
        AdvertisementResponseDto createdAdvertisement = advertisementService.createAdvertisement(dto);

        return new ResponseEntity<>(createdAdvertisement, HttpStatus.CREATED);
    }

    @DeleteMapping()
    public ResponseEntity<Void> deleteAdvertisement(@RequestParam Long advertisementId, @RequestParam Integer userId){
        advertisementService.deleteAdvertisement(advertisementId, userId);
        return ResponseEntity.noContent().build();
    }
}
