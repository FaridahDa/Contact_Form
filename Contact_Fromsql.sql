select * 
from contact_us;
CREATE DATABASE pythoncontactform2; 
USE pythoncontactform2;

CREATE TABLE contact_us (
	id int(11) AUTO_INCREMENT primary key,
  	first_name varchar(20) NOT NULL,
  	last_name varchar(20) NOT NULL,
  	email varchar(30) NOT NULL,
    phone_number varchar(20) NOT NULL,
    country varchar(20) NOT NULL,
    contact_subject varchar(20) NOT NULL,
    message varchar(250) NOT NULL
);

INSERT INTO contact_us(first_name, last_name, email, phone_number,country, contact_subject, message)
VALUES ('Faridah', 'Dada', 'faridahdada@outlook.com', '07914628056', 'United Kingdom', 'Complaint', 'Hello, I seem to have an issue with my order, please fix!');

 DROP TABLE contact_us;
 

 CREATE TABLE contact_us2 (
	id int(11) not null AUTO_INCREMENT primary key,
  	first_name varchar(20) NOT NULL,
  	last_name varchar(20) NOT NULL,
  	email varchar(30) NOT NULL,
    phone_number varchar(20) NOT NULL,
    country varchar(20) NOT NULL,
    contact_subject varchar(20) NOT NULL,
    message varchar(250) NOT NULL
    );
    
INSERT INTO contact_us2(id,first_name, last_name, email, phone_number,country, contact_subject, message)
VALUES (2,'Faridah', 'Dada', 'faridahdada@outlook.com', '07914628056', 'United Kingdom', 'Complaint', 'Hello, I seem to have an issue with my order, please fix!');