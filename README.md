# T20WorldCup Data Hub

## Description
The T20 World Cup Data Hub project manages data related to T20 World Cup tournaments, including teams, winners, batting records, and bowling records. This SQL database setup includes tables for Teams, Winners List, Batting Records, and Bowling Records.

## Table Schemas

### Teams Table

| Column      | Type         | Description       |
|-------------|--------------|-------------------|
| Team_Name   | VARCHAR(30)  | Primary Key       |
| Captain     | VARCHAR(50)  | Team Captain      |

### Winners_List Table

| Column              | Type         | Description                          |
|---------------------|--------------|--------------------------------------|
| Year                | INT          | Primary Key                          |
| Winner              | VARCHAR(20)  | Winning Team                         |
| Runner_Up           | VARCHAR(20)  | Runner-Up Team                       |
| Player_of_the_Series| VARCHAR(30)  | Player of the Series                 |
| Top_Run_Scorer      | VARCHAR(30)  | Top Run Scorer                       |
| Highest_Wicket_Taker| VARCHAR(30)  | Highest Wicket Taker                 |

### Batting_Records Table

| Column         | Type         | Description                    |
|----------------|--------------|--------------------------------|
| Year           | INT          | Primary Key                    |
| Player_Name    | VARCHAR(30)  | Player Name                    |
| Team           | VARCHAR(20)  | Team Name                      |
| Matches        | INT          | Number of Matches Played       |
| Innings        | INT          | Number of Innings Batted       |
| Runs           | INT          | Total Runs Scored              |
| Highest_Score  | INT          | Highest Score in an Inning     |
| Average        | DECIMAL(5, 2)| Batting Average                |
| Strike_Rate    | DECIMAL(5, 2)| Batting Strike Rate            |

### Bowling_Records Table

| Column          | Type         | Description                    |
|-----------------|--------------|--------------------------------|
| Year            | INT          | Primary Key                    |
| Player_Name     | VARCHAR(30)  | Player Name                    |
| Team            | VARCHAR(20)  | Team Name                      |
| Matches         | INT          | Number of Matches Played       |
| Innings         | INT          | Number of Innings Bowled       |
| Wickets         | INT          | Total Wickets Taken            |
| Best            | VARCHAR(5)   | Best Bowling Figures           |
| Economy         | DECIMAL(3, 2)| Economy Rate                   |

## Features
- **Data Management:**
  - Create and populate tables for Teams, Winners List, Batting Records, and Bowling Records.
  - Insert, update, and delete operations for maintaining data accuracy.
  
- **Queries and Joins:**
  - Perform complex SQL queries to retrieve specific data (e.g., winners, top run scorers, highest wicket takers).
  - Utilize SQL joins to connect related tables and extract meaningful insights from the dataset.

## Installation
1. **Clone the repository:**
    ```bash
    git clone https://github.com/joshan-18/T20WorldCup-Data-Hub.git
    ```
2. **Navigate to the project directory:**
    ```bash
    cd T20WorldCup-Data-Hub
    ```
3. **Set up the database:**
   - Import the SQL script located in the `database` directory to your MySQL server.

4. **Execute SQL queries:**
    - Use MySQL Workbench or command-line interface to execute SQL queries for database operations.

## Usage
1. **Run SQL queries:**
   - Execute predefined queries to retrieve desired data from the database.
   
2. **Modify database structure:**
   - Update tables and columns as per evolving project requirements.
   
3. **Maintain data integrity:**
   - Regularly back up and optimize the database for efficient data retrieval.

## Screenshots

### Teams Table - Ordered by Team_Name
![Teams Table](https://github.com/joshan-18/T20WorldCup-Data-Hub/assets/167819562/b9599126-3333-48e3-9d9b-470e03c9c152)

### Winners_List Table
![Winners_List Table](https://github.com/joshan-18/T20WorldCup-Data-Hub/assets/167819562/b22315c5-abf0-48b9-906b-433c1ca6bf97)

### Batting_Records Table
![Batting_Records Table](https://github.com/joshan-18/T20WorldCup-Data-Hub/assets/167819562/2a55c818-31b5-4c37-bbd4-b5f9edd6dcdd)

### Bowling_Records Table
![Bowling_Records Table](https://github.com/joshan-18/T20WorldCup-Data-Hub/assets/167819562/1842f8c8-389d-4b9a-848d-7e31185207cf)

### Number of Times Each Team Has Won
![Number of Times Each Team Has Won](https://github.com/joshan-18/T20WorldCup-Data-Hub/assets/167819562/8440a7ec-de96-40e3-afc8-de1245bf4897)

### Number of Times Each Team Has Been the Runner-Up
![Number of Times Each Team Has Been the Runner-Up](https://github.com/joshan-18/T20WorldCup-Data-Hub/assets/167819562/9d7dad39-b75a-4f57-bec9-63fb07635273)

### Join: Winners_List with Teams to Get the Captain of the Winning Team
![Join: Winners_List with Teams](https://github.com/joshan-18/T20WorldCup-Data-Hub/assets/167819562/146ea197-7c6c-405a-a4cf-8bce1f41a1ba)


## Project Structure
- **Database:**
  - SQL scripts for creating tables and inserting data.
- **Queries:**
  - Predefined SQL queries for common data operations.
- **Documentation:**
  - Detailed explanation of database schema and data flow.

## Technologies Used
- **Database:**
  - MySQL
- **Tools:**
  - MySQL Workbench for database management
  - Command-line interface for executing SQL scripts

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact
- **Email:** joshanroy13@gmail.com
