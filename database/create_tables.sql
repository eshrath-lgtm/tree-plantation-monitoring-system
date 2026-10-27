-- Tree Plantation and Monitoring Management System
-- Initial database schema
-- Member 1: Database and Backend

CREATE DATABASE IF NOT EXISTS tree_plantation_db;

USE tree_plantation_db;

-- 1. Tree Species
CREATE TABLE tree_species (
    species_id INT AUTO_INCREMENT PRIMARY KEY,
    species_name VARCHAR(100) NOT NULL,
    description VARCHAR(255)
);

-- 2. Plantation Locations
CREATE TABLE locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL,
    address VARCHAR(255)
);

-- 3. People and Organizations
CREATE TABLE persons_organizations (
    planter_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(20) NOT NULL,
    contact_info VARCHAR(100)
);

-- 4. Plantation Records
CREATE TABLE plantations (
    plantation_id INT AUTO_INCREMENT PRIMARY KEY,
    species_id INT NOT NULL,
    location_id INT NOT NULL,
    planter_id INT NOT NULL,
    plantation_date DATE NOT NULL,
    tree_count INT NOT NULL,
    FOREIGN KEY (species_id)
        REFERENCES tree_species(species_id),
    FOREIGN KEY (location_id)
        REFERENCES locations(location_id),
    FOREIGN KEY (planter_id)
        REFERENCES persons_organizations(planter_id)
);

-- 5. Tree Condition Monitoring
CREATE TABLE tree_condition (
    condition_id INT AUTO_INCREMENT PRIMARY KEY,
    plantation_id INT NOT NULL,
    condition_status VARCHAR(20) NOT NULL,
    monitoring_date DATE NOT NULL,
    FOREIGN KEY (plantation_id)
        REFERENCES plantations(plantation_id)
);
