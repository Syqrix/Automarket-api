package repositories;

import dtos.AdvertisementDtos.AdvertisementSearchDto;
import entities.Advertisement;
import org.springframework.data.jpa.domain.Specification;

public class AdvertisementSpecification {

    public static Specification<Advertisement> priceBetween(AdvertisementSearchDto dto){
        return (root, query, cb) -> {
            if(dto.minPrice() != null && dto.maxPrice() != null){
                return cb.between(root.get("price"), dto.minPrice(), dto.maxPrice());
            } else if(dto.minPrice() != null){
                return cb.greaterThanOrEqualTo(root.get("price"), dto.minPrice());
            } else if(dto.maxPrice() != null){
                return cb.lessThanOrEqualTo(root.get("price"), dto.maxPrice());
            }
            return cb.conjunction();
        };
    }

    public static Specification<Advertisement> mileageBetween(AdvertisementSearchDto dto){
        return (root, query, cb) -> {
            if(dto.minMileage() != null && dto.maxMileage() != null) {
                return cb.between(root.get("mileage"), dto.minMileage(), dto.maxMileage());
            } else if(dto.minMileage() != null) {
                return cb.greaterThanOrEqualTo(root.get("mileage"), dto.minMileage());
            } else if(dto.maxMileage() != null) {
                return cb.lessThanOrEqualTo(root.get("mileage"), dto.maxMileage());
            }
            return cb.conjunction();
        };
    }

    public static Specification<Advertisement> volumeEngineBetween(AdvertisementSearchDto dto){
        return (root, query, cb) -> {
            var volumeIdExpression = root.get("modification").get("volumeOfEngine").get("id").as(Short.class);

            var predicate = cb.conjunction();

            if(dto.minVolumeOfEngineId() != null){
                predicate = cb.and(predicate, cb.greaterThanOrEqualTo(volumeIdExpression, dto.minVolumeOfEngineId()));
            }

            if(dto.maxVolumeOfEngineId() != null){
                predicate = cb.and(predicate, cb.lessThanOrEqualTo(volumeIdExpression, dto.maxVolumeOfEngineId()));
            }

            return predicate;
        };
    }

    public static Specification<Advertisement> isClearedCustoms(Boolean isClearedCustoms){
        return (root, query, cb) ->
                cb.equal(root.get("isClearedCustom"), isClearedCustoms);
    }

    public static Specification<Advertisement> hasCity(Short city){
        return (root, query, cb) ->
                cb.equal(root.get("cityId").get("id"), city);
    }

    public static Specification<Advertisement> hasColor(Short color){
        return (root, query, cb) ->
                cb.equal(root.get("colorId").get("id"), color);
    }

    public static Specification<Advertisement> hasCharacteristics(AdvertisementSearchDto dto){
        return (root, query, cb) -> {
            var modification = root.get("modification");
            var generation = modification.get("generation");
            var model = generation.get("model");
            var brand = model.get("brand");
            var country = brand.get("country");

            var predicate = cb.conjunction();

            if(dto.generationId() != null){
                predicate = cb.and(predicate, cb.equal(generation.get("id"), dto.generationId()));
            }

            if(dto.modelId() != null){
                predicate = cb.and(predicate, cb.equal(model.get("id"), dto.modelId()));
            }

            if(dto.brandId() != null){
                predicate = cb.and(predicate, cb.equal(brand.get("id"), dto.brandId()));
            }

            if(dto.countryId() != null){
                predicate = cb.and(predicate, cb.equal(country.get("id"), dto.countryId()));
            }

            if(dto.bodyId() != null){
                predicate = cb.and(predicate, cb.equal(modification.get("carBodyType").get("id"), dto.bodyId()));
            }

            if(dto.typeOfEngineId() != null){
                predicate = cb.and(predicate, cb.equal(modification.get("typeOfEngine").get("id"), dto.typeOfEngineId()));
            }

            if(dto.transmissionId() != null){
                predicate = cb.and(predicate, cb.equal(modification.get("transmission").get("id"), dto.transmissionId()));
            }

            if(dto.positionOfWheelId() != null){
                predicate = cb.and(predicate, cb.equal(modification.get("typeOfWheelSide").get("id"), dto.positionOfWheelId()));
            }

            if(dto.typeOfDriveId() != null){
                predicate = cb.and(predicate, cb.equal(modification.get("typeOfDrive").get("id"), dto.typeOfDriveId()));
            }

            return predicate;
        };
    }

    public static Specification<Advertisement> yearBetween(AdvertisementSearchDto dto){
        return (root, query, cb) -> {
            var generation = root.get("modification").get("generation");
            var yearStart = generation.get("yearStart").as(Short.class);
            var yearEnd = generation.get("yearEnd").as(Short.class);

            var predicate = cb.conjunction();

            if(dto.minYear() != null){
                var endCondition = cb.or(cb.greaterThanOrEqualTo(yearEnd, dto.minYear()), cb.isNull(yearEnd));
                predicate = cb.and(predicate, endCondition);
            }

            if(dto.maxYear() != null){
                var startCondition = cb.lessThanOrEqualTo(yearStart, dto.maxYear());
                predicate = cb.and(predicate, startCondition);
            }
            
            return  predicate;
        };

    }


}
