/* This should fail because 0 is already taken. */
insert into person (id, first_name, last_name, age)
	values(0, 'Frank', 'Smith', 100);

/* We can force it by doing and insert and replace. */
insert or replace into person (id, first_name, last_name, age)
	values(0, 'Frank', 'Smith', 100);

select * from person;

/* And shorthand for that is just replace. */
replace into person (id, first_name, last_name, age)
	values(0, 'Zed', 'Shaw', 25);

/* Now you can see I'm back. */
select * from person;
