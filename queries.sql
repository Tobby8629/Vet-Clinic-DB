/* query the animal table to get information*/
SELECT * FROM animals;

/* QUERY ALL ANIMAL WHOSE NAME ENDS WITH MON */
SELECT * FROM animals WHERE name LIKE '%mon';

/* CHECK THE ANIMAL WITH DOB BETWEEN 2016 T0 2019 */
SELECT * FROM animals WHERE date_of_birth BETWEEN DATE '2016-1-1' AND '2019-12-31';

/* LIST NAME OF ANIMAL THAT ARE NEUTERED WITH ESCAPE ATTEMPTS LESS THAN 3 */
SELECT name FROM animals WHERE neutered = true AND escape_attempt < 3;

/*QUERY the TABLE FOR date of birth of all animals named either "Agumon" or "Pikachu". */
SELECT date_of_birth FROM animals WHERE name = 'Pikachu' OR name = 'Agumon';

/* QUERY THE TABLE TO List name and escape attempts of animals that weigh more than 10.5kg */
SELECT name, escape_attempt FROM animals WHERE weight_kg > 10.5;

/* QUERY TABLE FOR ALL NEUTERED ANIMALS */
SELECT * FROM animals WHERE neutered = true;

/* QUERY TABLE FOR ALL ANIMALS NAME THAT IS NO GABUMON*/
SELECT * FROM animals WHERE name <> 'Gabumon';

/* QUERY TABLE FOR ANIMALS WITH WEIGHT BETWEEN 10.4KG AND 17.3KG */
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;


/** DAY 2 ***/

/*** TRANSACTIONS ***/
BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
select * from animals;
COMMIT;
select * from animals;

-- update other species to pokemon
BEGIN;
UPDATE animals SET species = 'pokemon' WHERE name NOT LIKE '%mon';
UPDATE 5
select * from animals;
COMMIT;
select * from animals;


-- delete all animals
BEGIN;
DELETE FROM animals;
DELETE 11
select * from animals;
ROllBACK;

--delete animals born after 2022 and update weight_kg

begin;
BEGIN
delete from animals where date_of_birth > DATE '2022-01-01';
DELETE 1

--savepoint
SAVEPOINT sp1;
SAVEPOINT

--update all weight_kg
update animals set weight_kg = weight_kg * -1;
UPDATE 10
select * from animals;

--roll back to sp1
ROLLBACK TO sp1;
ROLLBACK
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
UPDATE 4
select * from animals;
commit;

--how many animals are ther 
select count(*) from animals;

--how many animal has tried to escape 
select count(*) from animals where escape_attempt = 0;

-- what is the average weight of animals?
select avg(weight_kg) from animals;

-- who escaped the most, neutered or not neutered?
select neutered, sum(escape_attempt) from animals Group by neutered;

--what is the minimum weight of each type of animal ?
select species, min(weight_kg) from animals group by species;

--what is the minimum weight of each type of animal ?
select species, max(weight_kg) from animals group by species;

--what is average number of escape attempts per animal type of those born between 1990 and 2000?
select species, avg(escape_attempt) from animals where date_of_birth between DATE '1990-01-01' AND '2000-12-31' group by species;



