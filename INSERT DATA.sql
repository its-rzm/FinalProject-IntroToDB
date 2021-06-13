USE PurpleLaneFurnitureStore
GO

--Insert to Staff
INSERT INTO MsStaff VALUES
	('ST001', 'Ananda Fildah', 'Female', 'anandaf@purplelane.com', 081236457891, 'Jl.Abiasa Blok E1 No 2 Tangerang', 2500000),
	('ST002', 'Neny Fatimah', 'Female', 'nenyfa@purplelane.com', 081287459065, 'Jl.Kemenangan Blok A No 4 Tangerang Selatan', 2600000),
	('ST003', 'Hendra Saputra', 'Male', 'hendrasp@purplelane.com', 081255664379, 'Jl.Pahlawan Blok J No 1A Jakarta Pusat', 2500000),
	('ST004', 'Halim Hendriko ', 'Male', 'halimhn@purplelane.com', 081299864368, 'Jl.Bunga Blok G6 No 4 Parung Panjang', 2000000),
	('ST005', 'Sandra Cantika', 'Female', 'sandracan@purplelane.com', 081255990491, 'Jl.Buah Blok F5 No 7 Tangerang Selatan', 3000000),
	('ST006', 'Arion Arvin', 'Male', 'arionar@purplelane.com', 081258968897, 'Jl.Kenanga Blok K2 No 1 Tangerang', 3000000),
	('ST007', 'Alfine', 'Male', 'alfine@purplelane.com', 081255974562, 'Jl.Mawar Blok 18 No 2 Jakarta Selatan', 3500000),
	('ST008', 'Nicholas Jeco', 'Male', 'nichojeco@purplelane.com', 089955455491, 'Jl.Melati Blok 8 No 9 Jakarta Selatan', 1400000),
	('ST009', 'Axelle Azada', 'Male', 'axelleaz@purplelane.com', 081356749177, 'Jl.Balon Blok T No 3 Jakarta Pusat', 1600000),
	('ST010', 'Azura Adita', 'Female', 'azuradit@purplelane.com', 081275840481, 'Jl.Lampung Blok 19 No 1 Jakarta Selatan', 17700000),
	('ST011', 'Karima Mahesa', 'Female', 'karhes@purplelane.com', 081155919651, 'Jl.Timur 5 Blok D54 Tangerang', 3400000),
	('ST012', 'Alyssa Stephie', 'Female', 'alyssast@purplelane.com', 084535978953, 'Jl.Barat No 3 Jakarta Timur', 5500000),
	('ST013', 'Chashida Chawki', 'Male', 'chasidac@purplelane.com', 081655170212, 'Jl.Matahari 6D No 1 Tangerang', 4000000),
	('ST014', 'Adilah Putri', 'Female', 'adilahp@purplelane.com', 081367890324, 'Jl.Pahlawan Blok 16 No 8 Tangerang Selatan', 5000000),
	('ST015', 'Dhialhaq Ersa', 'Female', 'ersad@purplelane.com', 084587982300, 'Jl.Sukajaya Blok J No 4 Jakarta Selatan', 8000000)

--Insert to Supplier
INSERT INTO MsSupplier VALUES
	('SU001', 'Ratu Hananda', 'Jl.Kenangan Blok J2 No 3 Jakarta Selatan'),
	('SU002', 'Rizky Jason', 'Jl.Anggur C3 No 11 Jakarta Pusat'),
	('SU003', 'Naro Jaka', 'Jl.Bakiak 4 No 14 Tangerang Selatan'),
	('SU004', 'Beby Tira', 'Jl.Cantik Blok 18 No 6 Tangerang'),
	('SU005', 'Birney Nala', 'Jl.Semangka 68B Jakarta Selatan '),
	('SU006', 'Bernanda Saito', 'Jl.Slamat 3 No 8 Bogor'),
	('SU007', 'Azka Satria', 'Jl.Istimewa No 29E Jakarta Timur'),
	('SU008', 'Atirra Adisti', 'Jl.Kemewahan Kav VII Jakarta Pusat'),
	('SU009', 'Darma Karya', 'Jl.Rumput No 88 Jakarta Utara'),
	('SU010', 'Adelito Salim', 'Jl.Panjang 6 No 3 Bandung'),
	('SU011', 'Anjani Ansel', 'Jl.Nyata Blok 3 No 6A Cilegon'),
	('SU012', 'Aramita Arya', 'Jl.Pejuang No 62 Tasikmalaya'),
	('SU013', 'Arelia Naya', 'Jl.Gagah 2F No 7 Pekalongan'),
	('SU014', 'Elfarah Aruna', 'Jl.Perdamaian No 9 Palangkaraya'),
	('SU015', 'Fianka Allisa', 'Jl.Payung Blok 15 No 5A Batam')

--Insert to Customer
INSERT INTO MsCustomer VALUES
	('CU001', 'Angel Carli', '089977356786', 'Jl.Janji Kav VI Malang', 'Female', 'angelca@gmail.com'),
	('CU002', 'Carlina Barra', '089124573892', 'Jl.Kranji 8 No 8B Jakarta Pusat', 'Female', 'carlina@gmail.com'),
	('CU003', 'Yohan Liam', '089988679309', 'Jl.Planet Blok 3B No 10 Jakarta Timur', 'Male', 'yohanli@gmail.com'),
	('CU004', 'Ethan Alfie', '089923064578', 'Jl.Kristal No 11 Bekasi', 'Male', 'ethanal@gmail.com'),
	('CU005', 'Jesica Sophia', '081288468390', 'Jl.Tsunami 34A No 7 Semarang', 'Female', 'jesicas@gmail.com'),
	('CU006', 'Jessy Violeta', '089111339990', 'Jl.Kramat 17 Jakarta Utara', 'Female', 'jessyv@gmail.com'),
	('CU007', 'Dinda Athif', '081298349812', 'Jl.Sukabakti C13 No 6 Tegal', 'Female', 'dindath@gmail.com'),
	('CU008', 'Fasha Caren', '081145367267', 'Jl.Agung No 84D Salatiga', 'Female', 'fashacar@gmail.com'),
	('CU009', 'Julio Watimena', '089944567389', 'Jl.Kencana Kav V Jakarta Pusat', 'Male', 'juliowat@gmail.com'),
	('CU010', 'Puan Haliza', '082109882793', 'Jl.Parung Blok 11 No 3 Tangerang', 'Female', 'puanhal@gmail.com'),
	('CU011', 'Kania Sofia', '089900334577', 'Jl.Ciputat Blok 18 No 1 Tangerang Selatan', 'Female', 'kanias@gmail.com'),
	('CU012', 'Jasmine Carlin', '08890072896', 'Jl.Cipete No 5D Jakarta Selatan', 'Female', 'jasminecar@gmail.com'),
	('CU013', 'Nabil Rakha', '081290556782', 'Jl.Populer Blok 8 No 11 Jakarta Barat', 'Male', 'nabilrak@gmail.com'),
	('CU014', 'Chiko Cleon', '082278198763', 'Jl.Makmur 7D No 9 Tangerang', 'Male', 'chikoc@gmail.com'),
	('CU015', 'Darell Delmon', '0811906725862', 'Jl.Indah No 10 Jakarta Selatan', 'Male', 'darelldel@gmail.com')

--Insert to Furniture Category
INSERT INTO MsFurnitureCategory VALUES
	('PC001', 'Chair'),
	('PC002', 'Stool'),
	('PC003', 'Dining Table'),
	('PC004', 'Coffee Table'),
	('PC005', 'Bed'),
	('PC006', 'Sofa'),
	('PC007', 'Wardrobe'),
	('PC008', 'Cabinet'),
	('PC009', 'Drawer')

--Insert to Furniture
INSERT INTO MsFurniture VALUES
	('PR001', 'PC006', 'softa', 50, 1000000, 1500000),
	('PR002', 'PC009', 'drawere', 30, 900000, 1200000),
	('PR003', 'PC007', 'Drobel', 30, 2000000, 3000000),
	('PR004', 'PC008', 'CabinEl', 20, 1500000, 2500000),
	('PR005', 'PC002', 'Stoel', 100, 150000, 250000),
	('PR006', 'PC003', 'Table me', 30, 1800000, 3000000),
	('PR007', 'PC004', 'CofTable', 40, 120000, 180000),
	('PR008', 'PC005', 'BedZee', 30, 2000000, 2500000),
	('PR009', 'PC001', 'Chairle', 150, 200000, 300000),
	('PR010', 'PC001', 'Sofee', 50, 1000000, 1500000),
	('PR011', 'PC003', 'derew', 30, 900000, 1200000),
	('PR012', 'PC005', 'Wardrober', 30, 2000000, 3000000),
	('PR013', 'PC006', 'CABlet', 20, 1500000, 2500000),
	('PR014', 'PC007', 'Leoel', 100, 150000, 250000),
	('PR015', 'PC009', 'Dine', 30, 1800000, 3000000)

--Insert to Header Purchase Transaction
INSERT INTO HeaderPurchaseTransaction VALUES
	('PA001', 'ST001', 'SU001', '2021-01-01'),
	('PA002', 'ST002', 'SU002', '2021-01-11'),
	('PA003', 'ST003', 'SU003', '2021-03-21'),
	('PA004', 'ST004', 'SU004', '2021-02-14'),
	('PA005', 'ST005', 'SU005', '2021-01-22'),
	('PA006', 'ST006', 'SU006', '2021-02-20'),
	('PA007', 'ST007', 'SU007', '2021-01-12'),
	('PA008', 'ST008', 'SU008', '2021-04-14'),
	('PA009', 'ST009', 'SU009', '2021-03-18'),
	('PA010', 'ST010', 'SU010', '2021-02-20'),
	('PA011', 'ST011', 'SU011', '2021-03-25'),
	('PA012', 'ST012', 'SU012', '2021-05-22'),
	('PA013', 'ST013', 'SU013', '2021-01-24'),
	('PA014', 'ST014', 'SU014', '2021-03-02'),
	('PA015', 'ST015', 'SU015', '2021-02-02')

--Insert to Detail Purchase Transaction
INSERT INTO DetailPurchaseTransaction VALUES
	('PA001', 'PR001', 13),
	('PA002', 'PR005', 11),
	('PA002', 'PR001', 5),
	('PA003', 'PR003', 6),
	('PA003', 'PR006', 2),
	('PA004', 'PR005', 22),
	('PA005', 'PR007', 17),
	('PA005', 'PR009', 17),
	('PA005', 'PR003', 5),
	('PA006', 'PR009', 24),
	('PA007', 'PR001', 11),
	('PA007', 'PR002', 10),
	('PA008', 'PR009', 16),
	('PA008', 'PR005', 15),
	('PA009', 'PR008', 5),
	('PA009', 'PR002', 15),
	('PA010', 'PR002', 18),
	('PA011', 'PR006', 6),
	('PA011', 'PR009', 16),
	('PA012', 'PR004', 3),
	('PA013', 'PR003', 4),
	('PA014', 'PR008', 5),
	('PA014', 'PR004', 6),
	('PA015', 'PR004', 11),
	('PA015', 'PR006', 7)

--Insert to Header Sales Transaction
INSERT INTO HeaderSalesTransaction VALUES
	('SA001', 'ST001', 'CU001', '2021-01-03'),
	('SA002', 'ST002', 'CU002', '2021-02-01'),
	('SA003', 'ST003', 'CU003', '2021-03-03'),
	('SA004', 'ST004', 'CU004', '2021-03-14'),
	('SA005', 'ST005', 'CU005', '2021-04-21'),
	('SA006', 'ST006', 'CU006', '2021-02-22'),
	('SA007', 'ST007', 'CU007', '2021-01-12'),
	('SA008', 'ST008', 'CU008', '2021-03-11'),
	('SA009', 'ST009', 'CU009', '2021-03-03'),
	('SA010', 'ST010', 'CU010', '2021-04-04'),
	('SA011', 'ST011', 'CU011', '2021-02-12'),
	('SA012', 'ST012', 'CU012', '2021-05-21'),
	('SA013', 'ST013', 'CU013', '2021-05-17'),
	('SA014', 'ST014', 'CU014', '2021-04-12'),
	('SA015', 'ST015', 'CU015', '2021-05-10')

--Insert to Detail Sales Transaction
INSERT INTO DetailSalesTransaction VALUES
	('SA001', 'PR001', 10),
	('SA002', 'PR002', 6),
	('SA003', 'PR006', 5),
	('SA004', 'PR004', 7),
	('SA005', 'PR005', 12),
	('SA006', 'PR009', 19),
	('SA007', 'PR007', 9),
	('SA008', 'PR008', 2),
	('SA009', 'PR008', 7),
	('SA010', 'PR003', 16),
	('SA011', 'PR001', 17),
	('SA012', 'PR005', 18),
	('SA013', 'PR003', 4),
	('SA014', 'PR006', 5),
	('SA015', 'PR003', 8),
	('SA001', 'PR006', 6),
	('SA011', 'PR005', 9),
	('SA012', 'PR001', 4),
	('SA005', 'PR006', 11),
	('SA002', 'PR005', 14),
	('SA003', 'PR002', 3),
	('SA001', 'PR004', 9),
	('SA011', 'PR007', 10),
	('SA007', 'PR001', 2),
	('SA008', 'PR007', 7),
	('SA009', 'PR009', 15),
	('SA014', 'PR004', 6),
	('SA006', 'PR010', 2),
	('SA005', 'PR009', 4),
	('SA009', 'PR002', 12)