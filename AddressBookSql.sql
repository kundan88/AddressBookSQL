----UC1--Create Database---
CREATE DATABASE AddressBook

USE AddressBook

----UC2--Create AddressBook Table---

CREATE TABLE AddressBook
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	FirstName VARCHAR(20) NOT NULL,
	LastName VARCHAR(20) NOT NULL,
	Address VARCHAR(100) NOT NULL,
	City VARCHAR(20) NOT NULL,
	State VARCHAR(20) NOT NULL,
	Zip BIGINT NOT NULL,
	PhoneNumber BIGINT NOT NULL,
	Email VARCHAR(50) NOT NULL
);

-----UC3--Insert Values in AddressBook---

INSERT INTO AddressBook VALUES('Shree','Patil','Latur','Latur','MH',413517,7777788888,'shree@gmail.com')
INSERT INTO AddressBook VALUES('Sunil','jain','Colaba','Mumbai','MH',400005,9664813070,'sunil@gmail.com')
INSERT INTO AddressBook VALUES('ravi','varma','Ameerpeth','Hyd','TS',123453,9975000720,'ravi@gmail.com')
INSERT INTO AddressBook VALUES('karan','reddy','karimnagar','karimNagar','TS',123456,9956442187,'karan@gmial.com')
INSERT INTO AddressBook VALUES('ritesh','sharma','nagpur','Nagpur','MH',412234,9999977777,'trek@gmial.com')

SELECT * FROM AddressBook

----UC4--Edit Contact Person---

UPDATE AddressBook SET Address = 'Udgir' WHERE FirstName = 'Shree'

----UC5--Delete Person Name----

DELETE FROM AddressBook WHERE FirstName = 'ravi'

---UC6---Retrive person city or state

SELECT * FROM AddressBook WHERE City = 'karimnagar' or State = 'TS'

---UC7---Count ---

SELECT COUNT(City) FROM AddressBook WHERE City = 'nagpur' and State = 'MH'


SELECT * FROM AddressBook WHERE City = 'Mumbai' ORDER BY FirstName

ALTER TABLE AddressBook
ADD NAME VARCHAR(100), TYPE VARCHAR(100)




