USE tree_plantation;

-- 1. Search Query
SELECT p.plantation_id, s.common_name, l.name AS location,
       pl.name AS planter, p.tree_count, p.tree_condition
FROM plantation p
JOIN species s ON p.species_id = s.species_id
JOIN location l ON p.location_id = l.location_id
JOIN planter pl ON p.planter_id = pl.planter_id;

-- 2. Total Trees Report
SELECT SUM(tree_count) AS total_trees
FROM plantation;

-- 3. Trees by Condition Report
SELECT tree_condition, SUM(tree_count) AS total_trees
FROM plantation
GROUP BY tree_condition;

-- 4. INSERT Query
INSERT INTO species (common_name, scientific_name, species_type)
VALUES ('Jackfruit', 'Artocarpus heterophyllus', 'Fruit Tree');

-- Verify INSERT
SELECT * FROM species;

-- 5. UPDATE Query
UPDATE plantation
SET tree_condition = 'Healthy',
    note = 'Condition improved',
    last_checked = '2026-11-08'
WHERE plantation_id = 2;

-- Verify UPDATE
SELECT * FROM plantation
WHERE plantation_id = 2;

-- 6. DELETE Test
INSERT INTO plantation
(species_id, location_id, planter_id, plantation_date, tree_count, tree_condition, note)
VALUES
(4, 1, 1, '2026-11-08', 1, 'Healthy', 'Temporary delete test');

SET @test_id = LAST_INSERT_ID();

DELETE FROM plantation
WHERE plantation_id = @test_id;

-- Verify DELETE
SELECT * FROM plantation;
