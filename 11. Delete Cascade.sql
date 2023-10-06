alter table 
	countries
add constraint 
	fk_countries_continents
FOREIGN key 
	(continent_code)
references 
	continents(continent_code)
on delete cascade;

alter table 
	countries
add constraint 
	fk_countries_currencies
foreign key 
	(currency_code)
REFERENCES 
	currencies(currency_code)
on delete cascade;

