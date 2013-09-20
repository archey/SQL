create table person (
	id integer PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	age integer
);

create table pet (
	id integer PRIMARY KEY,
	name TEXT,
	breed TEXT,
	age TEXT,
	dead integer
);

create table person_pet (
	person_id integer,
	pet_id integer
);
