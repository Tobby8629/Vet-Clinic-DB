/* create the animal table for database */
CREATE TABLE animals (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(50),
  date_of_birth DATE,
  escape_attempt INT,
  neutered BOOLEAN,
  weight_kg DECIMAL,
)

/* Add species to the tabble columns */
ALTER TABLE animals ADD COLUMN species varchar(50);

-- DAY 3

--create owners table 
 CREATE TABLE owners (
  id BIGSERIAL PRIMARY KEY,
  fullname VARCHAR(80),
  age INT
  );

--create species table
CREATE TABLE species (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(50),
  );

-- remove species column from animal table 
ALTER TABLE animals DROP COLUMN species;

--Add column species_id which is a foreign key referencing species table
ALTER TABLE animals ADD COLUMN species_id BIGINT REFERENCES species (id);

--Add column owner_id which is a foreign key referencing the owners table
ALTER TABLE animals ADD COLUMN owners_id BIGINT REFERENCES owners (id);