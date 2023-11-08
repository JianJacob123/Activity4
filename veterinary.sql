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

--CREATE TABLES APPOINTMENTS
CREATE TABLE appointments (appointid INT NOT NULL PRIMARY KEY, animalid INT NOT NULL,
						 FOREIGN KEY(animalid) REFERENCES animal(animalid),
						 appointdate DATE, reason VARCHAR(255) NOT NULL);

--CREATE TABLES DOCTORS
create table doctors(
doctorid int primary key,
dfirstname varchar(50),
dlastname varchar(50),
speacialty varchar(100),
phone varchar(15),
email varchar(100)
);

--CREATE TABLES INVOICES
CREATE TABLE invoices(invoiceid INT NOT NULL PRIMARY KEY, appointid INT NOT NULL,
						 FOREIGN KEY(appointid) REFERENCES appointments(appointid),
						 totalamount NUMERIC(10,2), paymentdate TIME);


--CREATE TABLE MEDICALRECORDS
create table medicalrecords(
recordid int primary key,
animalid int not null,
foreign key (animalid) references animals (animalid),
recorddate timestamp,
doctorid int not null,
foreign key (doctorid) references doctors (doctorid),
diagnosis text,
prescription text,
notes text
);