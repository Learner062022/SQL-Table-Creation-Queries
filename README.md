# SQLTableCreationQueries

This repository contains SQL queries for creating and managing various tables required for different scenarios. These queries demonstrate best practices in database design, including careful selection of data types, primary keys and constraints.

## Description 
The SQL queries in this repository are designed to handle different scenarios involving table creation, alteration and data management. Each query ensures optimal use of resources and includes necessary constraints to maintain data integrity. The project aims to provide a comprehensive set of squeries that can be easily integrated and used in different database environments.

## Why This Project is Useful
  - **Educational Resource**: A valuablke resource for learning and understanding SQL table creation and management.
  - **Practical Examples**: Provides practicle examples for various real-world scenarios.
  - **Best practices**: Demonstrates best practices in database design and management.
  - **Reusability**: The queries can be reused and adapted for various database projects.

## Getting Started
To create and manage these tables, follow these steps:
1. Clone this repository:
```sh
git clone https://github.com/Learner062022/SQLTableCreationQueries.git
```
2. Navigate to the repository directory:
```sh
cd <SQLTableCreationQueries>
```
3. Execute the SQL file in your SQL environment.
```sh
mysql -u <username> -p <database_name> < ManagingTables.sql
```
## Tables Overview
All the SQL queries for the following tables are contained in the `ManagingTables.sql` file:
  - **Stock Table**: Records shop items, including fields for item name, description, price, and quantity.
  - **Customer Details Table**: Stores customers' details, such as first name, surname, date of birth, phone number, email address and address. Gender is optional.
  - **Company Stock Prices Table**: Stores companies' current stock prices, including their name, ticker symbol and share price.
  - **Car Information Table**: Stores information about cars, including make, model, number plate, year and registration state.
  - **Baby Details Table:** Records information about babies born at a hospital, including name, surname, gender, weight, height and birth date.
  - **Famous Landmarks Table**: Stores information about various famous landmarks, including name, rating, longitude, latitude, nearest city or town, country and distance from Perth.

## Contributing
Contributions are welcome! Please submit a pull request with any improvements or new scenarios.

## License
[GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.txt)
