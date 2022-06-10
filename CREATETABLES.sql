create table plant (
	plant_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    plant_name VARCHAR(40),
    zone INTEGER,
    season ENUM ("Spring", "Summer", "Fall", "Winter")
);

create table seeds (
	seed_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    expiration_date DATE,
    quantity INTEGER,
    reorder BOOL,
    plant_id INTEGER,
    FOREIGN KEY (plant_id) REFERENCES plant(plant_id)
);

create table garden_bed (
	space_number INTEGER PRIMARY KEY AUTO_INCREMENT,
    date_planted DATE,
    doing_well BOOL,
	plant_id INTEGER,
    FOREIGN KEY (plant_id) REFERENCES plant(plant_id)
);

select *
from plant;


    