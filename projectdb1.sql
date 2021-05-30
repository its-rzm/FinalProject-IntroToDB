CREATE DATABASE Projectdb1

USE Projectdb1

CREATE TABLE Staff(
StaffID CHAR (5) PRIMARY KEY CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
[Name] VARCHAR (50) NOT NULL CHECK (LEN([Name]) > 5) ,
Gender VARCHAR (MAX) NOT NULL CHECK (Gender = 'Male' OR Gender = 'Female'),
Email VARCHAR (50) CHECK (Email LIKE '%@purplelane.com'),
PhoneNumber CHAR (12),
[Address] VARCHAR (100),
Salary INT CHECK (Salary BETWEEN 1000000 AND 25000000)
)

CREATE TABLE Supplier(
SupplierID CHAR (5) PRIMARY KEY CHECK (SupplierID LIKE 'SU[0-9][0-9][0-9]'),
[Name] VARCHAR (50) NOT NULL,
[Address] VARCHAR (100)
)

CREATE TABLE PurchaseTransaction(
PurchaseTransactionID CHAR (5) PRIMARY KEY CHECK (PurchaseTransactionID LIKE 'PA[0-9][0-9][0-9]'),
StaffID CHAR (5) REFERENCES Staff (StaffID),
SupplierID CHAR (5) REFERENCES Supplier (SupplierID),
TransactionDate DATE,
FurniturePurchased VARCHAR (50),
Quantity INT
)

CREATE TABLE Customer(
CustomerID CHAR (5) PRIMARY KEY CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]'),
[Name] VARCHAR (50) NOT NULL CHECK (LEN([Name]) > 5),
PhoneNumber CHAR (12),
[Address] VARCHAR (100),
Gender VARCHAR (MAX) NOT NULL CHECK (Gender = 'Male' OR Gender = 'Female'),
Email VARCHAR (50) CHECK (Email LIKE '%@%')
)

CREATE TABLE SalesTransaction(
SalesTransactionID CHAR (5) PRIMARY KEY CHECK (SalesTransactionID LIKE 'SA[0-9][0-9][0-9]'),
StaffID CHAR (5) REFERENCES Staff (StaffID),
CustomerID CHAR (5) REFERENCES Customer (CustomerID),
TransactionDate DATE,
FurnitureSold VARCHAR (50),
Quantity INT
)

CREATE TABLE FurnitureSold(
FurnitureSoldID CHAR (5) PRIMARY KEY CHECK (FurnitureSoldID LIKE 'PR[0-9][0-9][0-9]'),
[Name] VARCHAR (50) NOT NULL,
Stock INT,
PurchasePrice INT,
SalesPrice INT
)

CREATE TABLE Furniture(
FurnitureID CHAR (5) PRIMARY KEY CHECK (FurnitureID LIKE 'PC[0-9][0-9][0-9]'),
[Name] VARCHAR (50) NOT NULL
)

INSERT INTO Staff VALUES
('ST001', 'Ananda Fildah', 'Female', 'anandaf@purplelane.com', 081236457891, 'Jl.Abiasa', 2500000),
('ST002', 'Neny Fatimah', 'Female', 'Nenyfa@purplelane.com', 081287459065, 'Jl.Kemenangan', 2600000),
('ST003', 'Hendra Saputra', 'Male', 'Hendrasp@purplelane.com', 081255664379, 'Jl.Pahlawan', 2500000),
('ST004', 'Halim Hendriko ', 'Male', 'Halimhn@purplelane.com', 081299864368, 'Jl.Bunga', 2000000),
('ST005', 'Sandra Cantika', 'Female', 'Sandracan@purplelane.com', 081255990491, 'Jl.Buah', 3000000)

INSERT INTO Supplier VALUES
('SU001', 'Ratu Hananda', 'Jl.Kenanga'),
('SU002', 'Rizky Jason', 'Jl.Anggur'),
('SU003', 'Naro Jaka', 'Jl.Bakiak'),
('SU004', 'Beby Tira', 'Jl.Cantik'),
('SU005', 'Azka Satria', 'Jl.Kenanga')

INSERT INTO PurchaseTransaction VALUES
('PA001','ST001', 'SU001', '2021-01-01', 'Sofa', 15),
('PA002','ST002', 'SU002', '2021-01-11', 'Wardrobe', 6),
('PA003','ST003', 'SU003', '2021-03-21', 'Cabinet', 10),
('PA004','ST004', 'SU004', '2021-02-14', 'Drawer', 12),
('PA005','ST005', 'SU005', '2021-01-22', 'Stool', 6)

INSERT INTO Customer VALUES
('CU001', 'Angel Carli', 089977356786, 'Jl.Janji', 'Female', 'angelca@gmail.com'),
('CU002', 'Carlina Barra', 089124573892, 'Jl.Kranji', 'Female', 'carlina@gmail.com'),
('CU003', 'Yohan Liam', 089988679309, 'Jl.Planet', 'Male', 'yohanli@gmail.com'),
('CU004', 'Ethan Alfie', 089923064578, 'Jl.Kristal', 'Male', 'ethanal@gmail.com'),
('CU005', 'Jesica Sophia', 081288468390, 'Jl.Tsunami', 'Female', 'jesicas@gmail.com')

INSERT INTO SalesTransaction VALUES
('SA001', 'ST001', 'CU001', '2021-01-03', 'Sofa', 2),
('SA002', 'ST002', 'CU002', '2021-02-01', 'Stool', 3),
('SA003', 'ST003', 'CU003', '2021-03-03', 'Sofa', 2),
('SA004', 'ST004', 'CU004', '2021-03-14', 'Cabinet', 5),
('SA005', 'ST005', 'CU005', '2021-04-21', 'Wardrobe', 1)

INSERT INTO FurnitureSold VALUES
('PR001', 'Sofa', 50, 1000000, 1500000),
('PR002', 'Drawer', 30, 900000, 1200000),
('PR003', 'Wardrobe', 30, 2000000, 3000000),
('PR004', 'Cabinet', 20, 1500000, 2500000),
('PR005', 'Stool', 20, 80000, 120000)


INSERT INTO Furniture VALUES
('PC001', 'Sofa'),
('PC002', 'Wardrobe'),
('PC003', 'Drawer'),
('PC004', 'Cabinet'),
('PC005', 'Stool')

DROP TABLE SalesTransaction
DROP TABLE Customer
DROP TABLE PurchaseTransaction
DROP TABLE Supplier
DROP TABLE Staff
DROP TABLE FurnitureSold
DROP TABLE Furniture