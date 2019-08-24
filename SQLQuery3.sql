use db_zoo

select * from [dbo].[tbl_habitat];


SELECT * FROM [dbo].[tbl_species] where [species_order] = 3;

select * from [dbo].[tbl_nutrition] where [nutrition_cost] <= 600;

select [species_name] from [dbo].[tbl_species] where [species_nutrition] between 2202 AND 2206;

select [tbl_species].[species_name] as 'Species Name:', [tbl_nutrition].[nutrition_type] as 'Nutrition Type:' from [tbl_species]
left join [tbl_nutrition] on [dbo].[tbl_species].[species_nutrition] = [dbo].[tbl_nutrition].[nutrition_id];

select [specialist_fname],[specialist_lname],[specialist_contact] from [dbo].[tbl_specialist]
inner join [dbo].[tbl_care] on [dbo].[tbl_care].[care_specialist] = [dbo].[tbl_specialist].[specialist_id]
inner join [dbo].[tbl_species] on [species_care] = [dbo].[tbl_care].[care_id]
where [species_name] = 'penguin'
;

create database db_assignment;

create table tbl_name (
	name_id int primary key not null identity (1,1),
	fname varchar (30) not null,
	lname varchar (30)
	
	);

create table tbl_contact (
	contact_id int primary key not null identity (1,1),
	col_address varchar (80) not null,
	pnum varchar (20)
	);

insert into tbl_name
	(fname, lname)
	values
	('jon', 'smith'),
	('nancy', 'smith'),
	('jon', 'stine')
	;

select * from tbl_name;

insert into tbl_contact
	(col_address, pnum)
	values
	('house 1', '1234567'),
	('house 2', '4567890')
	;

select * from tbl_contact;


select * from  tbl_name inner join tbl_contact on tbl_contact.contact_id = tbl_name.name_id;