USE PurpleLaneFurnitureStore
GO

--Question 1
SELECT mf.[Name], [Total Product Sold] = CONVERT(VARCHAR, SUM(Quantity))+' product(s)'
FROM MsFurniture mf JOIN DetailSalesTransaction dst ON mf.FurnitureID = dst.FurnitureSold JOIN MsFurnitureCategory mfc ON mf.FurnitureCategoryID = mfc.FurnitureCategoryID 
WHERE SalesPrice > 150000 AND mfc.[Name] IN ('chair', 'stool')
GROUP BY mf.[Name]

--Question 2
SELECT StaffName, [Total Product Sold Before November] = SUM(Quantity)
FROM MsStaff ms JOIN HeaderSalesTransaction hst ON ms.StaffID = hst.StaffID JOIN DetailSalesTransaction dst ON hst.SalesTransactionID = dst.SalesTransactionID
WHERE MONTH(SalesTransactionDate) < 11
GROUP BY StaffName
HAVING SUM(Quantity) > 10

--Question 3
SELECT CustomerName, [Total Sales Transactions] = COUNT(hst.SalesTransactionID), [Total Price of Product Sold] = SUM(Quantity) * SalesPrice
FROM MsCustomer mc JOIN HeaderSalesTransaction hst ON mc.CustomerID = hst.CustomerID JOIN DetailSalesTransaction dst ON hst.SalesTransactionID = dst.SalesTransactionID JOIN MsFurniture mf ON dst.FurnitureSold = mf.FurnitureID
WHERE CustomerName LIKE ('% %') AND CustomerName NOT LIKE ('% % %')
GROUP BY CustomerName, SalesPrice
HAVING COUNT(hst.SalesTransactionID) > 1

--Question 4
SELECT SupplierName, [Total Purchase Transactions] = COUNT(hpt.PurchaseTransactionID), [Total Price of Product Purchased] = SUM(Quantity) * PurchasePrice
FROM MsSupplier ms, HeaderPurchaseTransaction hpt, DetailPurchaseTransaction dpt, MsFurniture mf
WHERE ms.SupplierID = hpt.SupplierID AND hpt.PurchaseTransactionID = dpt.PurchaseTransactionID AND dpt.FurniturePurchased = mf.FurnitureID AND LEN(SupplierName) > 10
GROUP BY SupplierName, PurchasePrice
HAVING SUM(Quantity) * PurchasePrice > 5000000

--Question
SELECT [Product Category Name] = mfc.[Name], [Total Products Sold] = CONVERT(VARCHAR, SUM(Quantity))+' product(s)'
FROM MsFurnitureCategory mfc JOIN MsFurniture mf ON mfc.FurnitureCategoryID = mf.FurnitureCategoryID JOIN DetailSalesTransaction dst ON dst.FurnitureSold = mf.FurnitureID, (SELECT [MQuantity] = MAX(Quantity) FROM DetailSalesTransaction)[max]
WHERE mf.[Name] NOT LIKE ('%g%')
GROUP BY mfc.[Name], [max].MQuantity
HAVING SUM(Quantity) > [max].MQuantity

--Question 6


--Question 7
SELECT StaffName, [Gender] = LEFT(Gender, 1), [Total Product Purchased] = SUM(Quantity)
FROM MsStaff ms JOIN HeaderPurchaseTransaction hpt ON ms.StaffID = hpt.StaffID JOIN DetailPurchaseTransaction dpt ON dpt.PurchaseTransactionID = hpt.PurchaseTransactionID, (SELECT [AQuantity] = AVG(Quantity) FROM DetailPurchaseTransaction WHERE PurchaseTransactionID IN (SELECT PurchaseTransactionID FROM HeaderPurchaseTransaction WHERE YEAR(PurchaseTransactionDate) = '2020'))[AVG]
GROUP BY StaffName, Gender, [AVG].AQuantity
HAVING SUM(Quantity) > [AVG].AQuantity

--Question 8
SELECT CustomerName, Email, [Phone Number] = REPLACE(PhoneNumber, '08', '+628'), [Total Product Sold] = CAST(SUM(Quantity) AS VARCHAR)+' product(s)'
FROM MsCustomer mc JOIN HeaderSalesTransaction hst ON mc.CustomerID = hst.CustomerID JOIN DetailSalesTransaction dst ON dst.SalesTransactionID = hst.SalesTransactionID, (SELECT [AQuantity] = AVG(Quantity) FROM DetailSalesTransaction)[AVG]
WHERE CustomerName NOT LIKE ('%j%')
GROUP BY CustomerName, Email, PhoneNumber, [AVG].AQuantity
HAVING SUM(Quantity) > [AVG].AQuantity

--Question 9
GO
CREATE VIEW Q4LargeSupplierTransactionsData AS
SELECT SupplierName, [Supplier Address] = [Address], [Total Price of Product Purchased] = SUM(Quantity) * PurchasePrice, [Maximum Product Purchased] = MAX(Quantity)
FROM MsSupplier ms JOIN HeaderPurchaseTransaction hpt ON ms.SupplierID = hpt.SupplierID JOIN DetailPurchaseTransaction dpt ON dpt.PurchaseTransactionID = hpt.PurchaseTransactionID JOIN MsFurniture mf ON mf.FurnitureID = dpt.FurniturePurchased
WHERE MONTH(PurchaseTransactionDate) > '11'
GROUP BY SupplierName, [Address], PurchasePrice
HAVING MAX(Quantity) > 15
GO

--Question 10
GO
CREATE VIEW CustomerTransactionData AS
SELECT CustomerName, [Total Product Sold] = SUM(Quantity), [Max Product Sold In a Transaction] = MAX(Quantity)
FROM MsCustomer mc, HeaderSalesTransaction hst, DetailSalesTransaction dst
WHERE mc.CustomerID = hst.CustomerID AND hst.SalesTransactionID = dst.SalesTransactionID AND CustomerName LIKE ('% %')
GROUP BY CustomerName
HAVING MAX(Quantity) > 1
