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


--insert data into vets table
INSERT INTO vets (name, age, date_of_graduation) VALUES('william tatcher', 45, DATE '2000-04-23');
INSERT INTO vets (name, age, date_of_graduation) VALUES('maisy smith', 26, DATE '2019-01-17');
INSERT INTO vets (name, age, date_of_graduation) VALUES('stephanie mendez', 64, DATE '1981-05-04');
INSERT INTO vets (name, age, date_of_graduation) VALUES('jack harkness', 38, DATE '2008-06-08');

-- insert data into specialization table
INSERT INTO specialization(species_id, vets_id) VALUES (1, 1);
INSERT INTO specialization(species_id, vets_id) VALUES (1,3), (2,3);
INSERT INTO specialization(species_id, vets_id) VALUES (2, 5);

--insert data into visits table
INSERT INTO visits (animals_id, vets_id, visit_date) VALUES((SELECT id from animals where name = 'Agumon'),(SELECT id from vets where name = 'william tatcher'), DATE '2020-05-24');

INSERT INTO visits (animals_id, vets_id, visit_date)
VALUES((SELECT id from animals where name = 'Agumon'),(SELECT id from vets where name = 'stephanie mendez'), DATE '2020-07-22'),
((SELECT id from animals where name = 'Pikachu'),(SELECT id from vets where name = 'maisy smith'), DATE '2020-01-05'),
((SELECT id from animals where name = 'Pikachu'),(SELECT id from vets where name = 'maisy smith'), DATE '2020-03-08'),
((SELECT id from animals where name = 'Pikachu'),(SELECT id from vets where name = 'maisy smith'), DATE '2020-05-14'),
((SELECT id from animals where name = 'Gabumon'),(SELECT id from vets where name = 'jack harkness'), DATE '2021-02-02');

INSERT INTO visits (animals_id, vets_id, visit_date)
VALUES((SELECT id from animals where name = 'Devimon'),(SELECT id from vets where name = 'stephanie mendez'), DATE '2021-05-04'),
((SELECT id from animals where name = 'plantmon'),(SELECT id from vets where name = 'maisy smith'), DATE '2019-12-21'),
((SELECT id from animals where name = 'plantmon'),(SELECT id from vets where name = 'maisy smith'), DATE '2021-04-07'),
((SELECT id from animals where name = 'plantmon'),(SELECT id from vets where name = 'william tatcher'), DATE '2020-08-10'),
((SELECT id from animals where name = 'charmander'),(SELECT id from vets where name = 'jack harkness'), DATE '2021-02-24');

INSERT INTO visits (animals_id, vets_id, visit_date)
VALUES((SELECT id from animals where name = 'squirtle'),(SELECT id from vets where name = 'stephanie mendez'), DATE '2019-09-29'),
((SELECT id from animals where name = 'blossom'),(SELECT id from vets where name = 'stephanie mendez'), DATE '2020-05-24'),
((SELECT id from animals where name = 'blossom'),(SELECT id from vets where name = 'william tatcher'), DATE '2021-01-11'),
((SELECT id from animals where name = 'angemon'),(SELECT id from vets where name = 'jack harkness'), DATE '2020-10-03'),
((SELECT id from animals where name = 'angemon'),(SELECT id from vets where name = 'jack harkness'), DATE '2020-11-04');

INSERT INTO visits (animals_id, vets_id, visit_date)
VALUES((SELECT id from animals where name = 'boarmon'),(SELECT id from vets where name = 'maisy smith'), DATE '2019-01-24'),
((SELECT id from animals where name = 'boarmon'),(SELECT id from vets where name = 'maisy smith'), DATE '2019-05-15'),
((SELECT id from animals where name = 'boarmon'),(SELECT id from vets where name = 'maisy smith'), DATE '2020-02-27'),
((SELECT id from animals where name = 'boarmon'),(SELECT id from vets where name = 'maisy smith'), DATE '2020-08-03');

-- day 1 week 2

-- populated the visit and owners table

-- This will add 3.594.280 visits considering you have 10 animals, 4 vets, and it will use around ~87.000 timestamps (~4min approx.)
INSERT INTO visits (animals_id, vets_id, visit_date) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

