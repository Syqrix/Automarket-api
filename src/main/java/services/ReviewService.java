package services;

import dtos.ReviewDtos.CreateReviewDto;
import dtos.ReviewDtos.ReviewResponseDto;
import dtos.ReviewDtos.UpdateReviewDto;
import entities.Review;
import exceptions.ResourceConflictException;
import exceptions.ResourceNotFoundException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import repositories.ModificationRepository;
import repositories.ReviewRepository;
import repositories.UserRepository;
import java.time.LocalDate;

@Service
public class ReviewService {

    private final ReviewRepository reviewRepository;
    private final UserRepository userRepository;
    private final ModificationRepository modificationRepository;

    public ReviewService(ReviewRepository reviewRepository, UserRepository userRepository,
                         ModificationRepository modificationRepository){
        this.reviewRepository = reviewRepository;
        this.userRepository = userRepository;
        this.modificationRepository = modificationRepository;
    }

    private ReviewResponseDto mapToResponse(Review review){
        var modification = review.getModification();

        String carFullName = String.format("%s, %s, %s",
                modification.getGeneration().getModel().getBrand().getBrandName(),
                modification.getGeneration().getModel().getModelName(),
                modification.getGeneration().getGenerationName());

        return new ReviewResponseDto(
                review.getId(),
                review.getDescription(),
                review.getOwnershipStartDate(),
                review.getDateOfPublicationReview(),
                carFullName,
                review.getUser().getUserName()
        );
    }

    public Page<ReviewResponseDto> getAllReviews(Pageable pageable){
        Page<Review> reviewsPage = reviewRepository.findAll(pageable);

        if(reviewsPage.isEmpty()){
            throw new ResourceNotFoundException("There are no reviews");
        }

        return reviewsPage.map(this::mapToResponse);
    }

    public ReviewResponseDto getReview(Long reviewId){
        return mapToResponse(reviewRepository.findById(reviewId).orElseThrow(
                () -> new ResourceNotFoundException("There is no such review with id: " + reviewId)));
    }

    public ReviewResponseDto createReview(CreateReviewDto dto){
        if(!userRepository.existsById(dto.userId())){
            throw new ResourceNotFoundException("There is no such user");
        }

        if(!modificationRepository.existsById(dto.modificationId())){
            throw new ResourceNotFoundException("There is no such modification");
        }

        Review review = new Review();

        review.setDescription(dto.description());
        review.setOwnershipStartDate(dto.ownershipStartDate());
        review.setDateOfPublicationReview(LocalDate.now());
        review.setModification(modificationRepository.getReferenceById(dto.modificationId()));
        review.setUser(userRepository.getReferenceById(dto.userId()));

        Review savedReview = reviewRepository.save(review);

        return mapToResponse(savedReview);
    }

    @Transactional
    public ReviewResponseDto updateReview(Integer userId, Long reviewId, UpdateReviewDto updateReviewDto){
        if(!userRepository.existsById(userId)){
            throw new ResourceNotFoundException("There in no such user");
        }

        Review review = reviewRepository.findById(reviewId).
                orElseThrow(() -> new ResourceNotFoundException("There is no such review"));

        if(!review.getUser().getId().equals(userId)){
            throw  new ResourceConflictException("This is not you review. Access denied");
        }

        if(updateReviewDto.description() != null){
            review.setDescription(updateReviewDto.description());
        }

        if(updateReviewDto.ownershipStartDate() != null){
            review.setOwnershipStartDate(updateReviewDto.ownershipStartDate());
        }

        if(updateReviewDto.modificationId() != null){
            review.setModification(modificationRepository.getReferenceById(updateReviewDto.modificationId()));
        }

        return mapToResponse(review);
    }

    @Transactional
    public void deleteReview(Long reviewId, Integer userId){
        Review review = reviewRepository.findById(reviewId).
                orElseThrow(() -> new ResourceNotFoundException("There is no such review"));

        if(!review.getUser().getId().equals(userId)){
            throw new ResourceConflictException("You can delete only your reviews");
        }

        reviewRepository.delete(review);
    }

}
