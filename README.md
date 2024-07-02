# SQL-Table-Creation-Queries

This repository contains a file with SQL queries to create and manage various tables required for different scenarios.

## Description of SQL Queries
### Stock Table
Creates a table to record stock at a shop with each item having a name, short description, price and quantity in stock.
```sql
CREATE TABLE IF NOT EXISTS stocks (
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL
);
```
### Add Sell By Date to Stock Table
Adds an optional "sell by" date field to the stock table.
```sql
ALTER TABLE stocks ADD COLUMN sell_by DATE;
```
### Customer Details Table
Creates a table to store basic customer details including name, surname, gender, date of birth, phone number, email address, and address. Gender is restricted to "M", "F", or "X".
```sql
CREATE TABLE IF NOT EXISTS customer_details (
    first_name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F', 'X')) NOT NULL,
    DOB DATE NOT NULL,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    email_address VARCHAR(100) NOT NULL PRIMARY KEY,
    address VARCHAR(255) NOT NULL
);
```
### Remove Gender from Customer Details Table
Removes the gender column from the customer details table.
```sql
ALTER TABLE customer_details DROP COLUMN gender;
```
### Company Stock Prices Table
Creates a table to store the current stock prices of companies including the company name, ticker symbol, and current share price. Share prices cannot be negative and are capped at $429,496.72.
```sql
CREATE TABLE IF NOT EXISTS companies_stock_prices (
    name VARCHAR(100) NOT NULL,
    ticker_symbol VARCHAR(10) NOT NULL PRIMARY KEY,
    share_price DECIMAL(9, 2) UNSIGNED NOT NULL CHECK (share_price <= 429496.72)
);
```
### Car Information Table
Creates a table to store information about a car including make, model, number plate, year, and a three-letter state code where it is registered.
```sql
CREATE TABLE IF NOT EXISTS cars (
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    number_plate CHAR(7) NOT NULL PRIMARY KEY,
    year YEAR NOT NULL,
    state_code CHAR(3) NOT NULL CHECK (state_code IN ('WA', 'QLD', 'NSW', 'SA', 'VIC', 'TAS', 'NT', 'ACT'))
);
```
### Add Driving License Number to Car Information Table
Adds a field for the driving license number of the car owner to the car information table.
```sql
ALTER TABLE cars ADD COLUMN driving_license_number CHAR(11);
```
### Modify State Field in Car Information Table
Adjusts the state field to accommodate the full name of any Australian state.
```sql
ALTER TABLE cars MODIFY COLUMN state_code VARCHAR(17);
```
### Baby Details Table
Creates a table to store information about a baby born at a hospital including name, surname, gender, weight, height, and date of birth. Gender is restricted to "M", "F", or "X".
```sql
CREATE TABLE IF NOT EXISTS baby_details (
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F', 'X')) NOT NULL,
    weight DECIMAL(5, 2) UNSIGNED NOT NULL,
    height DECIMAL(4, 2) UNSIGNED NOT NULL,
    birth_datetime DATETIME NOT NULL
);
```
### Famous Landmarks Table
Creates a table to store information about various famous landmarks including the landmark's name, a star rating out of five, longitude, latitude, the city or town it is in (or closest to), the country it is in, and the distance from Perth in kilometers.
```sql
CREATE TABLE IF NOT EXISTS famous_landmarks (
    name VARCHAR(255) NOT NULL,
    rating TINYINT UNSIGNED CHECK (rating BETWEEN 1 AND 5) NOT NULL,
    longitude DECIMAL(9, 6) NOT NULL,
    latitude DECIMAL(9, 6) NOT NULL,
    closest_city_or_town VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    distance_from_perth_km DECIMAL(6, 2) UNSIGNED NOT NULL,
    PRIMARY KEY (longitude, latitude)
);
```
## Getting Started
To create and manage these tables, follow these steps:
1. Clone this repository.
2. Execute the file in an SQL environment.
```sh
git clone https://github.com/Learner062022/SQL-Table-Creation-Queries.git
cd <repository-directory>
mysql -u <username> -p <database_name> < ManagingTables
```
