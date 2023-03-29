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


