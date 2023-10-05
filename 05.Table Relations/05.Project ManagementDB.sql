CREATE TABLE clients(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100)	
);

CREATE TABLE projects(
	id SERIAL PRIMARY KEY,
	project_lead_id INT,
	client_id INT,
	CONSTRAINT fk_client_id
		FOREIGN KEY (client_id)
			REFERENCES clients(id)
);

CREATE TABLE employees(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	project_id INT,
	CONSTRAINT fk_project_id
		FOREIGN KEY (project_id)
			REFERENCES projects(id)
);
	
ALTER TABLE projects
ADD CONSTRAINT fk_project_lead_id
    FOREIGN KEY (project_lead_id)
    REFERENCES employees(id);
