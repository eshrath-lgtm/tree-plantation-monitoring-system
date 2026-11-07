CREATE DATABASE IF NOT EXISTS tree_plantation;

USE tree_plantation;

DROP TABLE IF EXISTS tree_condition;
DROP TABLE IF EXISTS plantations;
DROP TABLE IF EXISTS persons_organizations;
DROP TABLE IF EXISTS locations;
DROP TABLE IF EXISTS tree_species;

CREATE TABLE species (
    species_id INT AUTO_INCREMENT PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(100),
    species_type VARCHAR(50)
);

CREATE TABLE location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    area VARCHAR(100),
    place_type VARCHAR(50)
);

CREATE TABLE planter (
    planter_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    kind VARCHAR(50),
    contact VARCHAR(100)
);

CREATE TABLE plantation (
    plantation_id INT AUTO_INCREMENT PRIMARY KEY,
    species_id INT NOT NULL,
    location_id INT NOT NULL,
    planter_id INT NOT NULL,
    plantation_date DATE NOT NULL,
    tree_count INT NOT NULL,
    tree_condition VARCHAR(20) NOT NULL DEFAULT 'Healthy',
    last_checked DATE,
    note VARCHAR(255),
    FOREIGN KEY (species_id) REFERENCES species(species_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id),
    FOREIGN KEY (planter_id) REFERENCES planter(planter_id)
);
