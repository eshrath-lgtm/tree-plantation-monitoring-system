Tree Plantation and Monitoring Management System

Database Design

Database Name: "tree_plantation"

Technology: MySQL

1. Tables

The database contains four tables:

1. species

- "species_id" – Primary Key
- "common_name"
- "scientific_name"
- "species_type"

2. location

- "location_id" – Primary Key
- "name"
- "area"
- "place_type"

3. planter

- "planter_id" – Primary Key
- "name"
- "kind"
- "contact"

4. plantation

- "plantation_id" – Primary Key
- "species_id" – Foreign Key
- "location_id" – Foreign Key
- "planter_id" – Foreign Key
- "plantation_date"
- "tree_count"
- "tree_condition"
- "last_checked"
- "note"

2. Primary Keys

- "species.species_id"
- "location.location_id"
- "planter.planter_id"
- "plantation.plantation_id"

3. Foreign Keys

- "plantation.species_id" references "species.species_id"
- "plantation.location_id" references "location.location_id"
- "plantation.planter_id" references "planter.planter_id"

4. Relationships

- One species can have multiple plantation records.
- One location can have multiple plantation records.
- One planter can have multiple plantation records.

5. Purpose

This database stores tree species, plantation locations, planters, and plantation monitoring information. It helps track the number of planted trees and their conditions, such as Healthy, Weak, Damaged, and Dead.
