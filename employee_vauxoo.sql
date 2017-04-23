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
