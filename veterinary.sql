Create Database Veterinary;

--CREATE TABLES
CREATE TABLE owners(ownerid INT NOT NULL PRIMARY KEY,
				   ofirstname VARCHAR(50) NOT NULL,
				   olastname VARCHAR(50) NOT NULL,
				   address VARCHAR(50) NOT NULL,
				   phone VARCHAR(15) NOT NULL,
				   email VARCHAR(100) NOT NULL);