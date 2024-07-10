-- Create the database
CREATE DATABASE worldcup_data;

USE worldcup_data;

-- Create the Teams table
CREATE TABLE Teams (
    Team_Name VARCHAR(30) PRIMARY KEY,
    Captain VARCHAR(50)
);

-- Insert data into Teams table
INSERT INTO Teams VALUES
('Australia','Mitchell Marsh'),
('India','Rohit Sharma'),
('England','Jos Buttler'),
('New Zealand','Kane Williamson'),
('South Africa','Aiden Markram'),
('Pakistan','Babar Azam'),
('Afghanistan','Rashid Khan'),
('Bangladesh','Najmul Hossain Shanto'),
('Sri Lanka','Wanindu Hasaranga'),
('West Indies','Rovman Powell'),
('Ireland','Paul Stirling'),
('Zimbabwe','Sikandar Raza'),
('Namibia','Gerhard Erasmus'),
('Nepal','Rohit Paudel'),
('Netherlands','Scott Edwards'),
('Oman','Aqib Ilyas'),
('Papua New Guinea','Assad Vala'),
('Scotland','Richie Berrington'),
('United Arab Emirates','Muhammad Waseem'),
('United States of America','Monank Patel');

-- Create the Winners_List table
CREATE TABLE Winners_List (
    Year INT PRIMARY KEY,
    Winner VARCHAR(20),
    Runner_Up VARCHAR(20),
    Player_of_the_Series VARCHAR(30),
    Top_Run_Scorer VARCHAR(30),
    Highest_Wicket_Taker VARCHAR(30)
);

-- Insert data into Winners_List table
INSERT INTO Winners_List VALUES
(2007,'India','Pakistan','Shahid Afridi','Matthew Hayden','Umar Gul'),
(2009,'Pakistan','Sri Lanka','Tillakaratne Dilshan','Tillakaratne Dilshan','Umar Gul'),
(2010,'England','Australia','Kevin Pietersen','Mahela Jayawardene','Dirk Nannes'),
(2012,'West Indies','Sri Lanka','Shane Watson','Shane Watson','Ajantha Mendis'),
(2014,'Sri Lanka','India','Virat Kohli','Virat Kohli','Imran Tahir'),
(2016,'West Indies','England','Virat Kohli','Tamim Iqbal','Mohammad Nabi'),
(2021,'Australia','New Zealand','Mitchell Marsh','Babar Azam','Wanindu Hasaranga'),
(2022,'England','Pakistan','Sam Curran','Virat Kohli','Wanindu Hasaranga');

-- Add Venue column to Winners_List
ALTER TABLE Winners_List
ADD COLUMN Venue VARCHAR(20);

-- Update Venue column in Winners_List
UPDATE Winners_List
SET Venue = 'South Africa'
WHERE Year = 2007;

UPDATE Winners_List
SET Venue = 'England'
WHERE Year = 2009;

UPDATE Winners_List
SET Venue = 'West Indies'
WHERE Year = 2010;

UPDATE Winners_List
SET Venue = 'Sri Lanka'
WHERE Year = 2012;

UPDATE Winners_List
SET Venue = 'Bangladesh'
WHERE Year = 2014;

UPDATE Winners_List
SET Venue = 'India'
WHERE Year = 2016;

UPDATE Winners_List
SET Venue = 'UAE/Oman'
WHERE Year = 2021;

UPDATE Winners_List
SET Venue = 'Australia'
WHERE Year = 2022;

-- Create the Batting_Records table
CREATE TABLE Batting_Records (
    Year INT PRIMARY KEY,
    Player_Name VARCHAR(30),
    Team VARCHAR(20),
    Matches INT,
    Innings INT,
    Runs INT,
    Highest_Score INT,
    Average DECIMAL(5, 2),
    Strike_Rate DECIMAL(5, 2)
);

-- Insert data into Batting_Records table
INSERT INTO Batting_Records VALUES
(2007,'Matthew Hayden','Australia',6,6,265,73,88.33,144.80),
(2009,'Tillakaratne Dilshan','Sri Lanka',7,7,317,96,52.83,144.74),
(2010,'Mahela Jayawardene','Sri Lanka',6,6,302,100,60.40,159.78),
(2012,'Shane Watson','Australia',6,6,249,72,49.80,150.00),
(2014,'Virat Kohli','India',6,6,319,77,106.33,129.14),
(2016,'Tamim Iqbal','Bangladesh',6,6,295,103,73.75,142.51),
(2021,'Babar Azam','Pakistan',6,6,303,70,60.60,126.25),
(2022,'Virat Kohli','India',6,6,296,82,98.66,136.40);
 
-- Create the Bowling_Records table
CREATE TABLE Bowling_Records (
    Year INT PRIMARY KEY,
    Player_Name VARCHAR(30),
    Team VARCHAR(20),
    Matches INT,
    Innings INT,
    Wickets INT,
    Best VARCHAR(5),
    Economy DECIMAL(3, 2)
);

-- Insert data into Bowling_Records table
INSERT INTO Bowling_Records VALUES
(2007,'Umar Gul','Pakistan',7,7,13,'4/25',5.60),
(2009,'Umar Gul','Pakistan',7,7,13,'5/6',6.44),
(2010,'Dirk Nannes','Australia',7,7,14,'4/18',7.03),
(2012,'Ajantha Mendis','Sri Lanka',6,6,15,'6/8',6.12),
(2014,'Imran Tahir','South Africa',5,5,12,'4/21',6.55),
(2016,'Mohammad Nabi','Afghanistan',7,7,12,'4/20',6.07),
(2021,'Wanindu Hasaranga','Sri Lanka',8,8,16,'3/9',5.20),
(2022,'Wanindu Hasaranga','Sri Lanka',8,8,15,'3/8',6.42);

-- Select all from Teams ordered by Team_Name
SELECT * 
FROM Teams
ORDER BY Team_Name;

-- Select all from Winners_List
SELECT *
FROM Winners_List;

-- Select all from Batting_Records
SELECT * 
FROM Batting_Records;

-- Select all from Bowling_Records
SELECT *
FROM Bowling_Records;

-- Count the number of times each team has won
SELECT Winner, COUNT(Winner) AS No_Of_Times
FROM Winners_List
GROUP BY Winner
ORDER BY No_Of_Times DESC;

-- Count the number of times each team has been the runner-up
SELECT Runner_Up, COUNT(Runner_Up) AS No_Of_Times_Runner_Up
FROM Winners_List
GROUP BY Runner_Up
ORDER BY No_Of_Times_Runner_Up DESC;

-- Join Winners_List with Teams to get the captain of the winning team
SELECT W.Winner, T.Captain_Name
FROM Winners_List AS W
INNER JOIN Teams AS T
ON W.Winner = T.Team_Name;

-- Delete from Winners_List where Year = 2021
DELETE FROM Winners_List
WHERE Year = 2021;

-- Drop tables
DROP TABLE Teams;
DROP TABLE Winners_List;
DROP TABLE Batting_Records;
DROP TABLE Bowling_Records;
