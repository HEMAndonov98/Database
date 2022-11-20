-- Create a new database
CREATE DATABASE Hotel;
USE Hotel;

CREATE TABLE employees
(
	Id INT PRIMARY KEY,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    Title VARCHAR(30),
    Notes LONGTEXT
);

AlTER TABLE employees
CHANGE COLUMN FirstName FirstName VARCHAR(30) NOT NULL,
CHANGE COLUMN LastName LastName VARCHAR(30) NOT NULL;

CREATE TABLE customers
(
	AccountNumber INT PRIMARY KEY,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    PhoneNumber VARCHAR(20),
    EmergencyName VARCHAR(30),
    EmergencyNumber VARCHAR(20),
    Notes LONGTEXT
);

AlTER TABLE customers
CHANGE COLUMN FirstName FirstName VARCHAR(30) NOT NULL,
CHANGE COLUMN LastName LastName VARCHAR(30) NOT NULL;

CREATE TABLE RoomStatus
(
	RoomStatus BIT NOT NULL,
    Notes LONGTEXT
);

ALTER TABLE RoomStatus
DROP PRIMARY KEY;

CREATE TABLE RoomTypes
(
	RoomType VARCHAR(20) NOT NULL,
    Notes LONGTEXT
);

CREATE TABLE BedTypes
(
	BedType VARCHAR(20) NOT NULL,
    Notes LONGTEXT
);

CREATE TABLE Rooms
(
	RoomNumber INT PRIMARY KEY NOT NULL,
    RoomType VARCHAR(20) NOT NULL,
    BedType VARCHAR(20) NOT NULL,
    Rate DECIMAL(3,2),
    RoomStatus BIT NOT NULL,
    Notes LONGTEXT
);

CREATE TABLE payments
(
	Id INT PRIMARY KEY NOT NULL,
    EmployeeId INT,
    PaymentDate DATETIME DEFAULT CURRENT_TIMESTAMP(),
    AccountNumber INT,
    FirstDateOccupied DATETIME NOT NULL,
    LastDateOccupied DATETIME NOT NULL
);

ALTER TABLE payments
Add COLUMN AmountCharged DECIMAL(3,2),
ADD COLUMN TaxRate DECIMAL(2,2),
ADD COLUMN TaxAmount DECIMAL(2,2),
ADD Column PaymentTotal DECIMAL(3,2),
ADD COLUMN Notes LONGTEXT;

CREATE TABLE occupancies
(
	Id INT PRIMARY KEY NOT NULL,
	EmployeeId INT,
	DateOccupied DATETIME,
    AccountNumber INT,
    RoomNumber INT NOT NULL,
    RateApplied DECIMAL(3,2),
    PhoneCharge DECIMAL(3,2),
    Notes LONGTEXT
);