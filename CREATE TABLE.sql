CREATE DATABASE [PurpleLaneFurnitureStore]

USE [PurpleLaneFurnitureStore]

GO

CREATE TABLE MsStaff(
	StaffID CHAR (5) PRIMARY KEY,
	StaffName VARCHAR (20) NOT NULL,
	Gender VARCHAR (10) NOT NULL,
	Email VARCHAR (30) NOT NULL,
	PhoneNumber VARCHAR (14) NOT NULL,
	[Address] VARCHAR (50) NOT NULL,
	Salary INT NOT NULL,
	CONSTRAINT cekStaffId CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
	CONSTRAINT cekStaffName CHECK (LEN(StaffName) > 5),
	CONSTRAINT cekStaffGender CHECK (Gender = 'Male' OR Gender = 'Female'),
	CONSTRAINT cekStaffEmail CHECK (Email LIKE '%@purplelane.com'),
	CONSTRAINT cekStaffSalary CHECK (Salary BETWEEN 1000000 AND 25000000)
)

CREATE TABLE MsSupplier(
	SupplierID CHAR (5) PRIMARY KEY,
	SupplierName VARCHAR (20) NOT NULL,
	[Address] VARCHAR (50) NOT NULL,
	CONSTRAINT cekSuppId CHECK (SupplierID LIKE 'SU[0-9][0-9][0-9]')
)

CREATE TABLE MsCustomer(
	CustomerID CHAR (5) PRIMARY KEY,
	CustomerName VARCHAR (20) NOT NULL,
	PhoneNumber VARCHAR (14) NOT NULL,
	[Address] VARCHAR (50) NOT NULL,
	Gender VARCHAR (10) NOT NULL,
	Email VARCHAR (30) NOT NULL,
	CONSTRAINT cekCustId CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CONSTRAINT cekCustName CHECK (LEN(CustomerName) > 5),
	CONSTRAINT cekCustGender CHECK (Gender = 'Male' OR Gender = 'Female'),
	CONSTRAINT cekCustEmail CHECK (Email LIKE '%@%')
)

CREATE TABLE MsFurnitureCategory(
	FurnitureCategoryID CHAR (5) PRIMARY KEY,
	[Name] VARCHAR (30) NOT NULL,
	CONSTRAINT cekFurtCategory CHECK (FurnitureCategoryID LIKE 'PC[0-9][0-9][0-9]')
)

CREATE TABLE MsFurniture(
	FurnitureID CHAR (5) PRIMARY KEY,
	FurnitureCategoryID CHAR (5) NOT NULL REFERENCES MsFurnitureCategory (FurnitureCategoryID) ON DELETE CASCADE ON UPDATE CASCADE,
	[Name] VARCHAR (30) NOT NULL,
	Stock INT NOT NULL,
	PurchasePrice INT NOT NULL,
	SalesPrice INT NOT NULL,
	CONSTRAINT cekFurtId CHECK (FurnitureID LIKE 'PR[0-9][0-9][0-9]'),
)

CREATE TABLE HeaderPurchaseTransaction(
	PurchaseTransactionID CHAR (5) PRIMARY KEY,
	StaffID CHAR (5) NOT NULL REFERENCES MsStaff (StaffID) ON DELETE CASCADE ON UPDATE CASCADE,
	SupplierID CHAR (5) NOT NULL REFERENCES MsSupplier (SupplierID) ON DELETE CASCADE ON UPDATE CASCADE,
	PurchaseTransactionDate DATE NOT NULL,
	CONSTRAINT cekHPTId CHECK (PurchaseTransactionID LIKE 'PA[0-9][0-9][0-9]')
)

CREATE TABLE DetailPurchaseTransaction(
	PurchaseTransactionID CHAR (5) NOT NULL REFERENCES HeaderPurchaseTransaction (PurchaseTransactionID) ON DELETE CASCADE ON UPDATE CASCADE,
	FurniturePurchased CHAR (5) NOT NULL REFERENCES MsFurniture (FurnitureID) ON DELETE CASCADE ON UPDATE CASCADE,
	Quantity INT NOT NULL,
	PRIMARY KEY(PurchaseTransactionID, FurniturePurchased)
)

CREATE TABLE HeaderSalesTransaction(
	SalesTransactionID CHAR (5) PRIMARY KEY,
	StaffID CHAR (5) NOT NULL REFERENCES MsStaff (StaffID) ON DELETE CASCADE ON UPDATE CASCADE,
	CustomerID CHAR (5) NOT NULL REFERENCES MsCustomer (CustomerID) ON DELETE CASCADE ON UPDATE CASCADE,
	SalesTransactionDate DATE NOT NULL,
	CONSTRAINT cekHSTId CHECK (SalesTransactionID LIKE 'SA[0-9][0-9][0-9]')
)

CREATE TABLE DetailSalesTransaction(
	SalesTransactionID CHAR (5) NOT NULL REFERENCES HeaderSalesTransaction (SalesTransactionID) ON DELETE CASCADE ON UPDATE CASCADE,
	FurnitureSold CHAR (5) NOT NULL REFERENCES MsFurniture (FurnitureID) ON DELETE CASCADE ON UPDATE CASCADE,
	Quantity INT NOT NULL,
	PRIMARY KEY(SalesTransactionID, FurnitureSold)
)