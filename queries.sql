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

