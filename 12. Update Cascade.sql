alter table 
	countries_rivers
add constraint 
	fk_countries_rivers_rivers
foreign key 
	(river_id)
REFERENCES 
	rivers(id)
on update cascade;


alter table 
	countries_rivers
add constraint 
	fk_countries_rivers_countries
FOREIGN key 
	(country_code)
references 
	countries(country_code)
on update cascade;


