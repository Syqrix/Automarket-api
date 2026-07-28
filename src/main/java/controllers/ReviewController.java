package controllers;

import dtos.ReviewDtos.CreateReviewDto;
import dtos.ReviewDtos.ReviewResponseDto;
import dtos.ReviewDtos.UpdateReviewDto;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import services.ReviewService;

@RestController
@RequestMapping("/api/v1/reviews")
public class ReviewController {
    private final ReviewService reviewService;

    public ReviewController(ReviewService reviewService){
        this.reviewService = reviewService;
    }

    @GetMapping
    public ResponseEntity<Page<ReviewResponseDto>> getAllReviews(
            @PageableDefault(value = 10, sort = "dateOfPublicationReview", direction = Sort.Direction.DESC)Pageable pageable){
        return ResponseEntity.ok(reviewService.getAllReviews(pageable));
    }

    @GetMapping
    @RequestMapping("{id}")
    public ResponseEntity<ReviewResponseDto> getReviewById(@PathVariable Long reviewId){
        return ResponseEntity.ok(reviewService.getReview(reviewId));
    }

    @PostMapping
    public ResponseEntity<ReviewResponseDto> createReview(@Valid @RequestBody CreateReviewDto dto){
        ReviewResponseDto createdReview = reviewService.createReview(dto);
        return new ResponseEntity<>(createdReview, HttpStatus.CREATED);
    }

    @PutMapping
    public ResponseEntity<ReviewResponseDto> updateReview(
            @RequestParam Integer userId, @RequestParam Long reviewId, @Valid @RequestBody UpdateReviewDto dto){
        return ResponseEntity.ok(reviewService.updateReview(userId, reviewId, dto));
    }

    @DeleteMapping
    public ResponseEntity<Void> deleteReview(@RequestParam Long reviewId, @RequestParam Integer userId){
        reviewService.deleteReview(reviewId, userId);
        return ResponseEntity.noContent().build();
    }
}
