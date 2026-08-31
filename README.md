# Automarket Aggregator API

A backend pet-project built with **Java 21** and **Spring Boot 3.x**. It is a REST API for a peer-to-peer (P2P) car marketplace where individual users can look up, buy, sell, and review vehicles directly with each other without middlemen. 

I developed this project for my portfolio to practice building clean backend architectures, working with relational databases, setting up multi-container Docker environments, and handling dynamic search logic.

---

### 🛠 Tech Stack

* **Programming language:** Java 21
* **Core Framework:** Spring Boot 3.x
* **Data Layer:** Spring Data JPA / Hibernate
* **Database:** PostgreSQL 16
* **Database Migrations:** Flyway
* **Containerization:** Docker & Docker Compose
* **Build Tool:** Maven
* **Validation:** Jakarta / Hibernate Validation
* **Utilities:** Project Lombok, Redis 7

---

### ✨ Features & Business Logic

* **P2P Marketplace:** Users can easily register profiles, create car listings, update information, and delete their advertisements.
* **Car Catalog:** A multi-level car catalog linking manufacturing Countries, Brands, Models, Generations, and precise Technical Modifications (Horsepower, Engine Volume, Transmission, and Drive Type).
* **Review System:** Buyers can leave feedback and ratings for sellers. The database constraints prevent users from voting multiple times on the same review.
* **Location Filtering:** Listings are tied to specific Cities and Countries, allowing buyers to find vehicles in their region.

---

### 🏗 Architecture & Code Highlights

The application follows a standard **Layered Architecture** (Controllers -> Services -> Repositories) with the following technical implementations:

* **Dynamic Filters (JPA Criteria API):** Built a flexible search engine via `AdvertisementSpecification`. It dynamically handles search parameters (price range, mileage, brand, model) and correctly processes current car production ranges when `yearEnd` is null.
* **Ownership Checks (Pre-Security):** Write and delete controllers (`PUT`/`DELETE`) accept explicit `userId` request parameters to verify that only the actual author can modify or delete their listings and reviews.
* **Global Error Handling:** Implemented a unified `@RestControllerAdvice` (`GlobalHandlerException`) that intercepts validation bugs (`MethodArgumentNotValidException`) and missing records, mapping them into clean `ApiErrorResponse` payloads.
* **Clean Data Contracts:** Used modern **Java Records** for DTOs to keep transport data immutable, clean, and decoupled from raw database entities.
* **Database Management:** Used Flyway scripts to version control the PostgreSQL schema, automatically setting up lookup data and adding native SQL indexes for performance.
* **Docker Compose Multi-Container Setup:** Configured `docker-compose.yml` to automatically link the Spring app, PostgreSQL database, and a Redis container with persistent data volumes (`pgdata`, `redisdata`).

---

### 🔮 Project Roadmap (Future Enhancements)

Since this is a growing pet-project, I plan to add the following features next:
* **Security:** Integrate **Spring Security with JWT** to replace ad-hoc `userId` requests with proper token authentication.
* **Caching (Redis):** Set up `@Cacheable` methods to store heavy car catalog queries in Redis.
* **Documentation:** Add **Swagger / OpenAPI** for automated interactive endpoint testing.

---

### 📂 Project Structure

```text
com.automarket.automarket_service
├── controllers   # REST API Endpoints & Request Handling
├── services      # Business Logic Execution
├── repositories  # Database Layer & JPA Specifications
├── entities      # Database Domain Models (PostgreSQL mappings)
├── dtos          # Immutable Java Records for API requests/responses
└── exceptions    # Global Error Handling & custom exception types
```

---

### 🚀 Local Launch & Quick Start

You can build and spin up the entire infrastructure locally using a single command:

1. **Clone the repository:**
   ```bash
   git clone <your-repository-url>
   cd automarket-service
   ```
2. **Create a `.env` file:**
   Create a `.env` file in the root folder with your database credentials:
   ```env
   APP_NAME=automarket-service
   DB_NAME=automarket_db
   DB_USER=your_user
   DB_PASSWORD=your_secure_password
   DB_PORT=5432
   REDIS_PORT=6379
   BACKEND_PORT=8080
   ```
3. **Run via Docker Compose:**
   ```bash
   docker-compose up --build
   ```
   The application will be live at `http://localhost:8080`.

---

### 📋 API Reference

#### 🚗 Advertisements (`/api/v1/advertisements`)
* `GET /` — Get paginated list of all active listings (Defaults to 10 items, sorted by newest)
* `GET /search` — Multi-parameter car search with pagination (`AdvertisementSearchDto`)
* `GET /{id}` — Fetch extended details of a specific vehicle (`AdvertisementResponseExtendedDto`)
* `POST /` — Create a new car listing (`CreateAdvertisementDto`)
* `PUT /` — Update listing specs, requires query validation params `advertisementId` and `userId`
* `DELETE /` — Remove listing, requires ownership query params `advertisementId` and `userId`

#### 📂 Car Catalog (`/api/v1/catalog`)
* `GET /colors` — List all available car colors (`List<Color>`)
* `GET /colors/{id}` — Fetch specific color by ID
* `GET /cities` — List all indexed deployment cities (`List<City>`)
* `GET /cities/{id}` — Fetch specific city by ID
* `GET /brands` — Get all available car brands (`BrandResponseDto`)
* `GET /brands/{id}` — Fetch brand details by ID
* `GET /brands/country/{id}` — Find all car brands under a specific country ID
* `GET /models` — Get all car models with pagination (`BrandAndModelResponseDto`)
* `GET /models/{id}` — Fetch specific model specifications by ID
* `GET /models/brand/{id}` — Fetch all models belonging to a specific brand
* `GET /generations` — Get all vehicle generations with pagination (`GenerationResponseDto`)
* `GET /generations/{id}` — Fetch vehicle generation details by ID
* `GET /countries` — List all car manufacturing countries (`CountryResponseDto`)
* `GET /countries/{id}` — Fetch country details by ID

#### 👤 Users (`/api/v1/users`)
* `GET /` — List all registered profiles (Paginated, sorted by ID)
* `GET /email/{email}` — Look up user profile by exact email string
* `GET /phoneNumber/{phoneNumber}` — Look up user profile by phone number string
* `GET /userName/{userName}` — Find a list of users matching a given username
* `GET /role/{role}` — Retrieve paginated profile list filtered by role types
* `GET /search` — Query user profiles by optional `email` or `phoneNumber` request params
* `GET /count/{userName}` — Get total counter metrics reporting identical names (`UserCounterResponseDto`)
* `POST /` — Register a new user account (`CreateUserDto`)
* `PUT /update/{id}` — Update user profile details by Path ID (`UpdateUserDto`)
* `DELETE /{id}` — Purge user account and associated profile data by Path ID

#### 💬 Reviews & Ratings (`/api/v1/reviews`)
* `GET /` — Get all user reviews (Paginated, sorted by newest)
* `GET /{id}` — Fetch a specific review entry using its ID record
* `POST /` — Post a new transaction/seller review (`CreateReviewDto`)
* `PUT /` — Update an existing review, verified by request parameters `userId` and `reviewId`
* `DELETE /` — Remove review, verified by request parameters `reviewId` and `userId`
