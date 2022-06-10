SELECT plant_name 
FROM plant
INNER JOIN
	(SELECT seeds.plant_id FROM seeds INNER JOIN garden_bed ON seeds.plant_id=garden_bed.plant_id) AS planted_plants ON plant.plant_id=planted_plants.plant_id;

INSERT INTO seeds (expiration_date, quantity, reorder, plant_id)
VALUES (08/05/2020, 100, 0, (SELECT plant_id FROM plant WHERE plant_name LIKE 'Hosta'));