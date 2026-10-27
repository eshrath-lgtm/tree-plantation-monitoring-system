# Tree Plantation and Monitoring Management System
## Database Design

### 1. tree_species
Stores information about different tree species.

| Column | Data Type | Key |
|---|---|---|
| species_id | INT | Primary Key |
| species_name | VARCHAR(100) | |
| description | VARCHAR(255) | |

### 2. locations
Stores plantation locations.

| Column | Data Type | Key |
|---|---|---|
| location_id | INT | Primary Key |
| location_name | VARCHAR(100) | |
| address | VARCHAR(255) | |

### 3. persons_organizations
Stores information about people and organizations involved in planting.

| Column | Data Type | Key |
|---|---|---|
| planter_id | INT | Primary Key |
| name | VARCHAR(100) | |
| type | VARCHAR(20) | |
| contact_info | VARCHAR(100) | |

### 4. plantations
Stores plantation activities.

| Column | Data Type | Key |
|---|---|---|
| plantation_id | INT | Primary Key |
| species_id | INT | Foreign Key |
| location_id | INT | Foreign Key |
| planter_id | INT | Foreign Key |
| plantation_date | DATE | |
| tree_count | INT | |

### 5. tree_condition
Stores plantation monitoring records.

| Column | Data Type | Key |
|---|---|---|
| condition_id | INT | Primary Key |
| plantation_id | INT | Foreign Key |
| condition_status | VARCHAR(20) | |
| monitoring_date | DATE | |

## Relationships
- One tree species can appear in many plantation records.
- One location can have many plantation records.
- One person or organization can be associated with many plantation records.
- One plantation can have multiple monitoring records.

## Current Status
Initial database structure designed.
SQL implementation and testing are pending.
