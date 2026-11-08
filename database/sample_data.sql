USE tree_plantation;

INSERT INTO species (common_name, scientific_name, species_type) VALUES
('Mango', 'Mangifera indica', 'Fruit Tree'),
('Neem', 'Azadirachta indica', 'Medicinal Tree'),
('Banyan', 'Ficus benghalensis', 'Shade Tree');

INSERT INTO location (name, area, place_type) VALUES
('University Campus', 'Sylhet', 'Educational'),
('City Park', 'Sylhet', 'Public Park'),
('Roadside Area', 'Sylhet', 'Roadside');

INSERT INTO planter (name, kind, contact) VALUES
('Eshrath Alom Nuha', 'Person', '01700000001'),
('Green Club', 'Organization', '01700000002'),
('Environmental Society', 'Organization', '01700000003');

INSERT INTO plantation (species_id, location_id, planter_id, plantation_date, tree_count, tree_condition, last_checked, note) VALUES
(1, 1, 1, '2026-10-20', 20, 'Healthy', '2026-11-01', 'Growing well'),
(2, 2, 2, '2026-10-22', 15, 'Weak', '2026-11-02', 'Needs regular watering'),
(3, 3, 3, '2026-10-25', 10, 'Healthy', '2026-11-03', 'Growing normally');
