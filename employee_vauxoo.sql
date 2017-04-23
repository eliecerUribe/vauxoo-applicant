-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
	id serial NOT NULL,
	name varchar(20) NOT NULL,
	description varchar(60) NOT NULL,
	CONSTRAINT pk_department_employee PRIMARY KEY (id)
);

CREATE TABLE employee (
	id serial NOT NULL,
	id_department integer,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	CONSTRAINT pk_employee PRIMARY KEY (id),
	CONSTRAINT fk_employee_department_rel FOREIGN KEY (id_department)
		REFERENCES employee_department (id)
);

CREATE TABLE employee_hobby (
	id serial NOT NULL,
	name varchar(20) NOT NULL,
	description varchar(60) NOT NULL,
	CONSTRAINT pk_employee_hobby PRIMARY KEY (id)
);

CREATE TABLE employee_hobby_rel (
	id serial NOT NULL,
	id_employee integer NOT NULL,
	id_hobby integer NOT NULL,
	CONSTRAINT pk_employee_hobby_rel PRIMARY KEY (id),
	CONSTRAINT fk_hb_employee FOREIGN KEY (id_employee)
		REFERENCES employee (id),
	CONSTRAINT fk_hb_employee_hobby FOREIGN KEY (id_hobby)
		REFERENCES employee_hobby (id)
);

CREATE TABLE employee_boss (
	id serial NOT NULL,
	id_employee integer NOT NULL,
	id_boss integer NOT NULL,
	CONSTRAINT pk_employee_boss PRIMARY KEY (id),
	CONSTRAINT fk_eb_employee FOREIGN KEY (id_employee)
		REFERENCES employee (id),
	CONSTRAINT fk_eb_boss FOREIGN KEY (id_employee)
		REFERENCES employee (id)
);

INSERT INTO employee_department VALUES (101, 'Sistema', 'IT y Desarrollo');
INSERT INTO employee_department VALUES (102, 'RRHH', 'Esta es una descp');
INSERT INTO employee_department VALUES (103, 'Contaduria', 'Esta es una descp2');
INSERT INTO employee_department VALUES (104, 'Almacen', 'Esta es una descp3');
INSERT INTO employee_department VALUES (105, 'Ventas', 'Esta es una descp4');
INSERT INTO employee_department VALUES (106, 'Administracion', 'Esta es una descp5');

INSERT INTO employee VALUES (1, 101, 'Kendrick', 'Lamar');
INSERT INTO employee VALUES (2, 102, 'James', 'Blake');
INSERT INTO employee VALUES (3, 103, 'Emma', 'Watson');
INSERT INTO employee VALUES (4, 104, 'Sofia', 'Cappola');

INSERT INTO employee_hobby VALUES (1101, 'Musica', 'Esta es una descp1');
INSERT INTO employee_hobby VALUES (1102, 'Cine', 'Esta es una descp2');
INSERT INTO employee_hobby VALUES (1103, 'Bailar', 'Esta es una descp3');

INSERT INTO employee_hobby_rel VALUES (1, 1, 1101);
INSERT INTO employee_hobby_rel VALUES (2, 1, 1102);
INSERT INTO employee_hobby_rel VALUES (3, 2, 1103);
INSERT INTO employee_hobby_rel VALUES (4, 2, 1101);
INSERT INTO employee_hobby_rel VALUES (5, 3, 1102);
INSERT INTO employee_hobby_rel VALUES (6, 3, 1103);
INSERT INTO employee_hobby_rel VALUES (7, 4, 1101);
INSERT INTO employee_hobby_rel VALUES (8, 4, 1103);

INSERT INTO employee_boss VALUES (1, 1, 2);
INSERT INTO employee_boss VALUES (2, 2, 3);
INSERT INTO employee_boss VALUES (3, 3, 4);
INSERT INTO employee_boss VALUES (4, 4, 3);
