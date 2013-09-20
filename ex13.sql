/* add dead column to person table */
alter table person add column dead integer;

/* add phone_number column to person table */
alter table person add column phone_number integer;

/* add salary column to person table */
alter table person add column salary float;

/* add dob column to person and pet  */
alter table person add column dob DATETIME;
alter table pet add column dob DATETIME;

/* add purchased_on column to person_pet */
alter table person_pet add column purchased_on DATETIME;

/* add parent to pet column that is an integer and holds id of pet's parent */
alter table pet add column parent integer;

/* update database with new column data */
update person set dead = 0;
update person set phone_number = "123456789";
update person set salary = 50.00;
update person set dob = 
