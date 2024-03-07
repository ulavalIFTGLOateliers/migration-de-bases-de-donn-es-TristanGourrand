SHOW TABLES ;
SHOW DATABASES ;
USE atelier_bd ;

ALTER TABLE singer RENAME TO Musician;
ALTER TABLE Musician RENAME COLUMN singerName TO musicianName ;
ALTER TABLE Musician ADD COLUMN  role varchar(50) ;
ALTER TABLE Musician ADD COLUMN bandName varchar(50) ;
UPDATE Musician M SET M.role = 'vocals' , M.bandName = 'Crazy Duo' WHERE musicianName = 'Alina' ;
UPDATE Musician M SET M.role = 'guitar' , M.bandName = 'Mysterio' WHERE musicianName = 'Mysterio' ;
UPDATE Musician M SET M.role = 'percussion' , M.bandName = 'Crazy Duo' WHERE musicianName = 'Rainbow' ;
UPDATE Musician M SET M.role = 'piano' , M.bandName = 'Luna' WHERE musicianName = 'Luna' ;

CREATE TABLE IF NOT EXISTS Band (bandName VARCHAR(50),
                                 creation YEAR,
                                 genre VARCHAR(50),
                                 PRIMARY KEY (bandName)) ;

INSERT INTO Band (bandName, creation, genre) VALUES ('Crazy Duo', 2015, 'rock'), ('Luna', 2009, 'classical'),
('Mysterio', 2019, 'pop') ;

