rem =======================================================
rem Paso 3: Crear las tablas
rem =======================================================

CREATE TABLE State (
    id VARCHAR2(255) PRIMARY KEY,
    updated_at DATE,
    created_at DATE,
    name VARCHAR2(255)
);

CREATE TABLE "User" (
    id VARCHAR2(255) PRIMARY KEY,
    updated_at DATE,
    created_at DATE,
    email VARCHAR2(255),
    password VARCHAR2(255),
    first_name VARCHAR2(255),
    last_name VARCHAR2(255)
);

CREATE TABLE City (
    id VARCHAR2(255) PRIMARY KEY,
    updated_at DATE,
    created_at DATE,
    state_id VARCHAR2(255),
    name VARCHAR2(255)
);

CREATE TABLE Place (
    id VARCHAR2(255) PRIMARY KEY, 
    updated_at DATE,
    created_at DATE,
    user_id VARCHAR2(255),
    name VARCHAR2(255),
    city_id VARCHAR2(255),
    description CLOB, 
    number_rooms INTEGER DEFAULT 0,
    number_bathrooms INTEGER DEFAULT 0,
    max_guest INTEGER DEFAULT 0,
    price_by_night INTEGER DEFAULT 0,
    latitude FLOAT,
    longitude FLOAT
);

CREATE TABLE Amenity (
    id VARCHAR2(255) PRIMARY KEY,
    updated_at DATE,
    created_at DATE,
    name VARCHAR2(255)
);

CREATE TABLE Review (
    id VARCHAR2(255) PRIMARY KEY,
    updated_at DATE,
    created_at DATE,
    user_id VARCHAR2(255),
    place_id VARCHAR2(255),
    text CLOB
);

CREATE TABLE PlaceAmenity (
    amenity_id VARCHAR2(255),
    place_id VARCHAR2(255)
);

rem =======================================================
rem Paso 4: Restricciones mediante ALTER TABLE
rem =======================================================

rem Restricción UNIQUE para el correo en User
ALTER TABLE "User" 
ADD CONSTRAINT uq_user_email UNIQUE (email);

rem Claves foráneas para City
ALTER TABLE City 
ADD CONSTRAINT fk_city_state 
FOREIGN KEY (state_id) REFERENCES State(id);

rem Claves foráneas para Place
ALTER TABLE Place 
ADD CONSTRAINT fk_place_user 
FOREIGN KEY (user_id) REFERENCES "User"(id);

ALTER TABLE Place 
ADD CONSTRAINT fk_place_city 
FOREIGN KEY (city_id) REFERENCES City(id);

rem Claves foráneas para Review
ALTER TABLE Review 
ADD CONSTRAINT fk_review_user 
FOREIGN KEY (user_id) REFERENCES "User"(id);

ALTER TABLE Review 
ADD CONSTRAINT fk_review_place 
FOREIGN KEY (place_id) REFERENCES Place(id);

rem Claves foráneas para PlaceAmenity
ALTER TABLE PlaceAmenity 
ADD CONSTRAINT pk_placeamenity 
PRIMARY KEY (amenity_id, place_id);

ALTER TABLE PlaceAmenity 
ADD CONSTRAINT fk_placeamenity_amenity 
FOREIGN KEY (amenity_id) REFERENCES Amenity(id);

ALTER TABLE PlaceAmenity 
ADD CONSTRAINT fk_placeamenity_place 
FOREIGN KEY (place_id) REFERENCES Place(id);