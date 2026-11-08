Tree Plantation and Monitoring Management System

Database Design

Database Name: "tree_plantation"

Technology: MySQL

1. Species Table

Column Name| Data Type| Constraint
species_id| INT| Primary Key, Auto Increment
common_name| VARCHAR(100)| NOT NULL
scientific_name| VARCHAR(100)| -
species_type| VARCHAR(50)| -

2. Location Table

Column Name| Data Type| Constraint
location_id| INT| Primary Key, Auto Increment
name| VARCHAR(100)| NOT NULL
area| VARCHAR(100)| -
place_type| VARCHAR(50)| -

3. Planter Table

Column Name| Data Type| Constraint
planter_id| INT| Primary Key, Auto Increment
name| VARCHAR(100)| NOT NULL
kind| VARCHAR(50)| -
contact| VARCHAR(100)| -

4. Plantation Table

Column Name| Data Type| Constraint
plantation_id| INT| Primary Key, Auto Increment
species_id| INT| Foreign Key
location_id| INT| Foreign Key
planter_id| INT| Foreign Key
plantation_date| DATE| NOT NULL
tree_count| INT| NOT NULL
tree_condition| VARCHAR(20)| NOT NULL, Default: Healthy
last_checked| DATE| -
note| VARCHAR(255)| -

5. Foreign Key Relationships

Foreign Key| References
plantation.species_id| species.species_id
plantation.location_id| location.location_id
plantation.planter_id| planter.planter_id

6. Relationships

- One species can have multiple plantation records.
- One location can have multiple plantation records.
- One planter can have multiple plantation records.

7. Purpose

This database stores tree species, plantation locations, planters, and plantation monitoring information. It helps track the number of planted trees and their conditions, such as Healthy, Weak, Damaged, and Dead.
