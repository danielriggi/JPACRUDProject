DROP DATABASE IF EXISTS nfldb;
CREATE DATABASE nfldb;

-- Switch to the nfldb database
USE nfldb; 

CREATE USER test@localhost IDENTIFIED BY "test";

GRANT SELECT, INSERT, UPDATE, DELETE on nfldb.* TO test@localhost;


CREATE TABLE players (
   id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
   first_name varchar(255) NOT NULL,
   last_name varchar(255) NOT NULL,
   birth_date date,
   position_group varchar(45),
   position varchar(45),
   college_name varchar(255),
   height decimal(5,2),
   weight decimal(5,2),
   rookie_year int,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);

INSERT INTO players (first_name, last_name, birth_date, position_group, position,
                     college_name, height, weight, rookie_year) VALUES
    ("Daniel", "Riggi", '1989-03-21', "OL", "T", "Cornell", 76.0, 250.0, 2011);

