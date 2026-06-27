CREATE INDEX idx_brands_country_id ON brands (country_id);
CREATE INDEX idx_models_brand_id ON models (brand_id);
CREATE INDEX idx_generations_model_id ON generations (model_id);

CREATE INDEX idx_modifications_generation_id ON modifications (generation_id);
CREATE INDEX idx_modifications_wheel_id ON modifications (wheel_id);
CREATE INDEX idx_modifications_engine_id ON modifications (engine_id);
CREATE INDEX idx_modifications_transmission_id ON modifications (transmission_id);
CREATE INDEX idx_modifications_drive_type_id ON modifications (drive_type_id);
CREATE INDEX idx_modifications_engine_volume_id ON modifications (engine_volume_id);
CREATE INDEX idx_modifications_body_type_id ON modifications (body_type_id);

CREATE INDEX idx_advertisement_modification_id ON advertisements (modification_id);
CREATE INDEX idx_advertisement_user_id ON advertisements (user_id);
CREATE INDEX idx_advertisement_color_id ON advertisements (color_id);
CREATE INDEX idx_advertisement_city_id ON advertisements (city_id);

CREATE INDEX idx_advertisement_city_id_and_price ON advertisements (city_id, price);

CREATE INDEX idx_reviews_modification_id ON reviews (modification_id);
CREATE INDEX idx_reviews_user_id ON reviews (user_id);