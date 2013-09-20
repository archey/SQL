/*drop table if exists*/
drop table if exists person;
drop table if exists pet;
drop table if exists person_pet;

/* create tables */
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

/*insert values into tables */
insert into person (id, first_name, last_name, age)
	values(0, "Tyler", "Bennett", 25);

insert into pet (id, name, breed, age, dead)
	values(0, "Angel", "Labrador", 14, 0);

insert into pet values (1, "Gigantor", "Robot", 1, 1);
insert into person_pet (person_id, pet_id) values (0, 0);
insert into person_pet values (0, 1);
insert into person_pet (person_id, pet_id) values (0, 0);
insert into person_pet values (0, 1);
select * from person;
select name, age from pet;
select name, age from pet where dead = 0;
select * from person where first_name != "Tyler";
select name, age from pet where age >= 10;
select first_name, age from person where age < 25;

select pet.id, pet.name, pet.age, pet.dead
	from pet, person_pet, person
	where
	pet.id = person_pet.pet_id and
	person_pet.person_id = person.id and
	person.first_name = "Tyler";

/* make sure there's dead pets */
select name, age from pet where dead = 1;

/* aww poor robot */
delete from pet where dead = 1;

/* make sure the robot is gone */
select * from pet;

/* let's resurrect the robot */
insert into pet values (1, "Gigantor", "Robot", 1, 0);

/* the robot lives */
select * from pet;

/* add height and weight columns to person table */
alter table person add column height integer;
alter table person add column weight integer;
