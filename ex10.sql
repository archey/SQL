select * from pet;

update pet set name = "Tyler's Pet" where id in (
	select pet.id
	from pet, person_pet, person
	where
	person.id = person_pet.person_id and 
	pet.id = person_pet.pet_id and
	person.first_name = "Tyler"
);

select * from pet;
