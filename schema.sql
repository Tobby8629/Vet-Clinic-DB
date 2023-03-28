/* create the animal table for database */
CREATE TABLE animals (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(50),
  date_of_birth DATE,
  escape_attempt INT,
  neutered BOOLEAN,
  weight_kg DECIMAL,
)

