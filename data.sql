/* Insert animal data into the table each information matching the data-Type of the Table column */

INSERT INTO animals (name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES ('Agumon', DATE '2020-02-03', 0, true, 10.23 );

INSERT INTO animals (name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES ('Gabumon', DATE '2018-11-15', 2, true, 8 );

INSERT INTO animals (name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES ('Pikachu', DATE '2021-01-07', 1, false, 15.04 );

INSERT INTO animals (name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES ('Devimon', DATE '2017-05-12', 5, true, 11 );

/** DAY 2 ***/

INSERT INTO animals(name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES('charmander', DATE '2020-02-08', 0, false, -11 );

INSERT INTO animals(name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES('plantmon', DATE '2021-11-15', 2, true, -5.7 );

INSERT INTO animals(name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES('squirtle', DATE '1993-04-02', 3, false, -12.13 );

INSERT INTO animals(name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES('angemon', DATE '2005-06-12', 1, true, -45 );

INSERT INTO animals(name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES('boarmon', DATE '2005-06-07', 7, true, 20.4 );

INSERT INTO animals(name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES('blossom', DATE '1998-10-13', 3, true, 17 );

INSERT INTO animals(name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES('ditto', DATE '2022-05-14', 4, true, 22 );



-- Add data to owners table 
INSERT INTO owners(fullname, age)VALUES('sam smith', 34);
INSERT INTO owners(fullname, age)VALUES('jennifer orwell', 19);
INSERT INTO owners(fullname, age)VALUES('bob', 45);
INSERT INTO owners(fullname, age)VALUES('melody pond', 77);
INSERT INTO owners(fullname, age)VALUES('dean winchester', 14);
INSERT INTO owners(fullname, age)VALUES(' jodie whittaker', 38);

--Add data to species table 
INSERT INTO species(name) VALUES('pokemon');
INSERT INTO species(name) VALUES('digimon');

--Update animal table for species_id to have a value
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;

--update owners table for owners_id to have a value
UPDATE animals SET owners_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owners_id = 2 WHERE name = 'Gabumon'OR name = 'Pikachu';
UPDATE animals SET owners_id = 3 WHERE name = 'Devimon'OR name = 'plantmon';
UPDATE animals SET owners_id = 4 WHERE name = 'blossom'OR name = 'charmander' OR name ='squirtle';
UPDATE animals SET owners_id = 4 WHERE name = 'angemon'OR name = 'boarmon';