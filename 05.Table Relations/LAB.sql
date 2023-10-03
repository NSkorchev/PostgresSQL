CREATE TABLE cities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30)
)

CREATE TABLE persons(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30)
	city_id INT,
	CONSTRAINT fk_persons_cities
		FOREIGN KEY (city_id)
			REFERENCES cities(id)
);