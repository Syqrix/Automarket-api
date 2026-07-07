package controllers;

import dtos.AdvertisementResponseDto;
import dtos.CreateAdvertisementDto;
import dtos.UpdateAdvertisementDto;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import repositories.AdvertisementRepository;
import services.AdvertisementService;

@RestController
@RequestMapping("/api/v1/advertisements")
public class AdvertisementController {

    private final AdvertisementService advertisementService;

    public AdvertisementController(AdvertisementService advertisementService){
        this.advertisementService = advertisementService;
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
        AdvertisementResponseDto advertisement = advertisementService.createAdvertisement(dto);

        return ResponseEntity.ok(advertisement);
    }

    @DeleteMapping()
    public ResponseEntity<Void> deleteAdvertisement(@RequestParam Long advertisementId, @RequestParam Integer userId){
        advertisementService.deleteAdvertisement(advertisementId, userId);
        return ResponseEntity.noContent().build();
    }
}
