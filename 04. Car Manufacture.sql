create table manufacturers( 
	id serial primary key,
	name varchar(50)
);

create table models(
	id int generated always as identity(start 1000 increment 1) primary key,
	model_name varchar(50),
	manufacturer_id int,
	constraint fk_models_manufacturers
	FOREIGN key (manufacturer_id)
	references manufacturers(id)
	);

create table production_years(
	id serial primary key,
	established_on date,
	manufacturer_id int,
	constraint fk_production_years_manufacturers
	FOREIGN key (manufacturer_id)
	references manufacturers(id)
);

insert into manufacturers (name)
VALUES
('BMW'),
('Tesla'),
('Lada');

insert into 
	models (model_name, manufacturer_id)
VALUES
	('X1',1 ),
	('i6',1 ),
	('Model S',2 ),
	('Model X', 2),
	('Model 3', 2),
	('Nova', 3);

insert into 
	production_years (established_on, manufacturer_id)
values
	('1916-03-01', 1),
	('2003-01-01', 2),
	('1966-05-01', 3);
