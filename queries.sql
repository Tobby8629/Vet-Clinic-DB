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

--set all species to unspecified
begin;
update animals set species = 'unspecified';
SELECT * FROM animals;
ROllBACK;
SELECT * FROM animals;


-- set the species to each animals
BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE name NOT LIKE '%mon';
SELECT * FROM animals;
COMMIT;
SELECT * FROM animals;


-- DELETE all animals
BEGIN;
DELETE FROM animals;
SELECT * FROM animals;
ROllBACK;
SELECT * FROM animals;

--DELETE animals born after 2022 and update weight_kg

BEGIN;
DELETE FROM animals WHERE date_of_birth > DATE '2022-01-01';
SELECT * FROM animals;

--savepoint
SAVEPOINT sp1;
SAVEPOINT

--update all weight_kg
update animals set weight_kg = weight_kg * -1;
SELECT * FROM animals;

--roll back to sp1
ROLLBACK TO sp1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
SELECT * FROM animals;
COMMIT

--how many animals are ther 
SELECT count(*) FROM animals;

--how many animal has tried to escape 
SELECT count(*) FROM animals WHERE escape_attempt = 0;

-- what is the average weight of animals?
SELECT avg(weight_kg) FROM animals;

-- who escaped the most, neutered or not neutered?
SELECT neutered, sum(escape_attempt) FROM animals GROUP BY neutered;

--what is the minimum and maximum weight of each type of animal ?
SELECT species, max(weight_kg), min(weight_kg) FROM animals GROUP BY species;

--what is average number of escape attempts per animal type of those born BETWEEN 1990 and 2000?
SELECT species, avg(escape_attempt) FROM animals WHERE date_of_birth BETWEEN DATE '1990-01-01' AND '2000-12-31' GROUP BY species;



-- DAY #
-- using JOIN to answer the following questions

-- what animals belong to melody pond?
 SELECT species.name, count(species.name) from species
 join animals on animals.species_id = species.id 
 WHERE animals.owners_id = 4 GROUP BY species.name;

 --list of all animals that are pokemon ?
 SELECT animals.name from animals 
 join species on animals.species_id = species.id
 WHERE animals.species_id = 1;

 -- list  all owners and their animals, remember to include those that don't own any animal.
  SELECT * from owners
 LEFT JOIN animals on animals.owners_id = owners.id;

 -- How many animals are there per species?
 SELECT species.name, count(*) from species
 JOIN animals ON animals.species_id = species.id
 GROUP BY species.name;

 -- List all digimon owned by jennifer orwell ?
 SELECT * from animals
 JOIN species ON animals.species_id = species.id
 WHERE animals.owners_id = 2 AND animals.species_id = 2;

 -- List all animals owned by Dean Winchester that haven't tried to escape.
 SELECT * from animals
 JOIN owners ON animals.owners_id = owners_id
 WHERE animals.owners_id = 5 AND animals.escape_attempt = 0;

 -- Who owns the most animals?
 SELECT owners.fullname, max(animals.owners_id) from animals
 JOIN owners ON animals.owners_id = owners.id
 GROUP BY owners.fullname ORDER BY max DESC;