Create Database Veterinary;

--CREATE TABLES
CREATE TABLE owners(ownerid INT NOT NULL PRIMARY KEY,
				   ofirstname VARCHAR(50) NOT NULL,
				   olastname VARCHAR(50) NOT NULL,
				   address VARCHAR(50) NOT NULL,
				   phone VARCHAR(15) NOT NULL,
				   email VARCHAR(100) NOT NULL);

--CREATE TABLES ANIMALS
create table animals(
animalid int primary key,
name varchar (50),
species varchar(50),
breed varchar(50),
dateofbirth date,
gender varchar(10),
color varchar(50),
ownerid int not null,
foreign key (ownerid) references owners (ownerid)
);