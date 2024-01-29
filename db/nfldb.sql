DROP DATABASE IF EXISTS nfldb;
CREATE DATABASE nfldb;

-- Switch to the nfldb database
USE nfldb; 

CREATE USER test@localhost IDENTIFIED BY "test";

GRANT SELECT, INSERT, UPDATE, DELETE on nfldb.* TO test@localhost;


CREATE TABLE players (
   id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
   display_name varchar(255) NOT NULL,
   first_name varchar(255) NOT NULL,
   last_name varchar(255) NOT NULL,
   status varchar(45),
   birth_date date,
   position_group varchar(45),
   position varchar(45),
   college_name varchar(255),
   height decimal(5,2),
   weight decimal(5,2),
   rookie_year int,
   headshot varchar(255),
   draft_number int,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);

INSERT INTO players (display_name, first_name, last_name, status, birth_date, position_group, position,
                     college_name, height, weight, rookie_year, headshot, draft_number) VALUES
    ("Daniel Riggi", "Daniel", "Riggi", "ACT", '1989-03-21', "OL", "T", "Cornell", 76.0, 250.0, 2011, "https://lh3.googleusercontent.com/pw/ABLVV84pgTVXtlcrTJOVkkN_Ny8fkS6j2os2eZBRSconMsnu3FFtHJxxclltM0mIQ5-F7ayK09xAzc8hp9uvdlRn0JOm-p06BoALTiBiTqn_ZPPNsZu1-p9E=w2400", 1);

