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

-- Insert values owners
INSERT INTO owners(ownerid, ofirstname, olastname, address, phone, email)
VALUES (1, 'Juan', 'Dela Cruz', '123 Main St, Manila', '123-456-7890', 'juan@example.com'),
(2, 'Maria', 'Santos', '456 Elm St, Quezon City','987-654-3210', 'maria@example.com'),
(3, 'Antonio', 'Gonzales', '789 Oak St, Cebu','555-123-4567', 'antonio@example.com'),
(4, 'Elena', 'Rodriguez', '345 Pine St, Davao','777-888-9999', 'elena@example.com'),
(5, 'Ricardo', 'Lim', '987 Cedar St, Makati','222-333-4444', 'ricardo@example.com'),
(6, 'Isabel', 'Reyes', '111 Acacia St, Pasig','999-000-1111', 'isabel@example.com'),
(7, 'Luis', 'Torres', '555 Maple St, Mandaluyong','123-555-7777', 'luis@example.com'),
(8, 'Carmen', 'Fernandez', '222 Birch St, Taguig','333-222-1111', 'carmen@example.com'),
(9, 'Pedro', 'Santillan', '888 Spruce St, Bacolod','888-777-6666', 'pedro@example.com'),
(10, 'Sofia', 'Villanueva', '777 Walnut St, Iloilo','111-999-3333', 'sofia@example.com');