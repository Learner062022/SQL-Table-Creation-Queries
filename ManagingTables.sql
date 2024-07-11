CREATE TABLE IF NOT EXISTS stocks (
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL
);

ALTER TABLE stocks ADD COLUMN sell_by DATE;

CREATE TABLE IF NOT EXISTS customer_details (
    first_name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F', 'X')) NOT NULL,
    DOB DATE NOT NULL,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    email_address VARCHAR(100) NOT NULL PRIMARY KEY,
    address VARCHAR(255) NOT NULL
);

ALTER TABLE customer_details DROP COLUMN gender;

CREATE TABLE IF NOT EXISTS companies_stock_prices (
    name VARCHAR(100) NOT NULL,
    ticker_symbol VARCHAR(10) NOT NULL PRIMARY KEY,
    share_price DECIMAL(9, 2) UNSIGNED NOT NULL CHECK (share_price <= 429496.72)
);

CREATE TABLE IF NOT EXISTS cars (
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    number_plate CHAR(7) NOT NULL PRIMARY KEY,
    year YEAR NOT NULL,
    state_code CHAR(3) NOT NULL CHECK (state_code IN ('WA', 'QLD', 'NSW', 'SA', 'VIC', 'TAS', 'NT', 'ACT'))
);

ALTER TABLE cars ADD COLUMN driving_license_number CHAR(11);

ALTER TABLE cars MODIFY COLUMN state_code VARCHAR(17);

CREATE TABLE IF NOT EXISTS baby_details (
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F', 'X')) NOT NULL,
    weight DECIMAL(5, 2) UNSIGNED NOT NULL,
    height DECIMAL(4, 2) UNSIGNED NOT NULL,
    birth_datetime DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS famous_landmarks (
    name VARCHAR(255) NOT NULL,
    rating TINYINT UNSIGNED CHECK (rating BETWEEN 1 AND 5) NOT NULL,
    longitude DECIMAL(17, 14) NOT NULL,
    latitude DECIMAL(17, 14) NOT NULL,
    closest_city_or_town VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    distance_from_perth_km INT UNSIGNED NOT NULL,
    PRIMARY KEY (longitude, latitude)
);
