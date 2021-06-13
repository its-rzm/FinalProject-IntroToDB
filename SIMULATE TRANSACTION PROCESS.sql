USE PurpleLaneFurnitureStore
GO

INSERT INTO HeaderPurchaseTransaction VALUES
	('PA016', 'ST002', 'SU002', '2021-05-01'),
	('PA017', 'ST004', 'SU005', '2021-05-10'),
	('PA018', 'ST008', 'SU006', '2021-05-21'),
	('PA019', 'ST012', 'SU008', '2021-06-02'),
	('PA020', 'ST015', 'SU010', '2021-06-10')

INSERT INTO DetailPurchaseTransaction VALUES
	('PA016', 'PR001', 1),
	('PA016', 'PR003', 2),
	('PA016', 'PR005', 5),
	('PA017', 'PR002', 3),
	('PA018', 'PR004', 4),
	('PA018', 'PR006', 2),
	('PA019', 'PR007', 7),
	('PA019', 'PR009', 1),
	('PA019', 'PR008', 5),
	('PA020', 'PR010', 24)

INSERT INTO HeaderSalesTransaction VALUES
	('SA016', 'ST003', 'CU012', '2021-05-03'),
	('SA017', 'ST006', 'CU010', '2021-05-09'),
	('SA018', 'ST007', 'CU009', '2021-05-23'),
	('SA019', 'ST010', 'CU011', '2021-06-05'),
	('SA020', 'ST013', 'CU014', '2021-06-07')

INSERT INTO DetailSalesTransaction VALUES
	('SA016', 'PR004', 10),
	('SA016', 'PR005', 6),
	('SA017', 'PR012', 5),
	('SA017', 'PR015', 7),
	('SA017', 'PR007', 12),
	('SA018', 'PR008', 19),
	('SA019', 'PR009', 9),
	('SA019', 'PR001', 2),
	('SA020', 'PR002', 7),
	('SA020', 'PR006', 16)