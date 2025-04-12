-- Create Medicines Table 
CREATE TABLE Medicines ( 
    MedicineID INT PRIMARY KEY, 
    MedicineName VARCHAR(100), 
    Manufacturer VARCHAR(100), 
    UnitPrice DECIMAL(10, 2), 
    ExpiryDate DATE 
); 
 -- Create Suppliers Table 
CREATE TABLE Suppliers ( 
    SupplierID INT PRIMARY KEY, 
    SupplierName VARCHAR(100), 
    ContactDetails VARCHAR(100) 
); 
 -- Create Purchases Table 
CREATE TABLE Purchases ( 
    PurchaseID INT PRIMARY KEY, 
    SupplierID INT, 
    MedicineID INT, 
    PurchaseDate DATE, 
    Quantity INT, 
    TotalCost DECIMAL(10, 2), 
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID), 
    FOREIGN KEY (MedicineID) REFERENCES Medicines(MedicineID) 
); 
 -- Create Prescriptions Table 
CREATE TABLE Prescriptions ( 
    PrescriptionID INT PRIMARY KEY, 
    PatientName VARCHAR(100), 
    DoctorName VARCHAR(100), 
    PrescriptionDate DATE 
); 
 
-- Create Sales Table 
CREATE TABLE Sales ( 
    SaleID INT PRIMARY KEY, 
    MedicineID INT, 
    PrescriptionID INT, 
    SaleDate DATE, 
    Quantity INT, 
    TotalAmount DECIMAL(10, 2), 
    FOREIGN KEY (MedicineID) REFERENCES Medicines(MedicineID), 
    FOREIGN KEY (PrescriptionID) REFERENCES Prescriptions(PrescriptionID) 
); 
 -- Create Inventory Table 
CREATE TABLE Inventory ( 
    InventoryID INT PRIMARY KEY, 
    MedicineID INT, 
    StockQuantity INT, 
    FOREIGN KEY (MedicineID) REFERENCES Medicines(MedicineID) 
); 


INSERT INTO Medicines (MedicineID, MedicineName, Manufacturer, UnitPrice, ExpiryDate) 
VALUES  
(1, 'Paracetamol', 'ABC Pharma', 5.00, '2025-12-31'), 
(2, 'Amoxicillin', 'XYZ Pharma', 10.00, '2024-06-30'), 
(3, 'Ibuprofen', 'MedHealth', 7.50, '2024-09-15'), 
(4, 'Cetirizine', 'PharmaCare', 3.00, '2025-03-20'), 
(5, 'Omeprazole', 'Global Meds', 8.00, '2024-11-30'), 
(6, 'Metformin', 'HealthPlus', 4.50, '2025-07-25'), 
(7, 'Losartan', 'MedWorld', 9.00, '2024-08-10'), 
(8, 'Atorvastatin', 'CurePharma', 6.50, '2025-01-15'), 
(9, 'Levothyroxine', 'ABC Pharma', 5.50, '2024-12-20'), 
(10, 'Albuterol', 'XYZ Pharma', 12.00, '2025-05-30'), 
(11, 'Metronidazole', 'MedHealth', 3.50, '2024-10-05'), 
(12, 'Azithromycin', 'PharmaCare', 11.00, '2025-02-28'), 
(13, 'Ciprofloxacin', 'Global Meds', 8.50, '2024-07-15'), 
(14, 'Prednisone', 'HealthPlus', 6.00, '2025-04-10'), 
(15, 'Gabapentin', 'MedWorld', 7.00, '2024-11-25'), 
(16, 'Tramadol', 'CurePharma', 9.50, '2025-03-05'), 
(17, 'Hydrochlorothiazide', 'ABC Pharma', 4.00, '2024-09-30'), 
(18, 'Sertraline', 'XYZ Pharma', 10.50, '2025-06-15'), 
(19, 'Lisinopril', 'MedHealth', 5.00, '2024-12-10'), 
(20, 'Pantoprazole', 'PharmaCare', 7.50, '2025-01-20'),
(21, 'Diazepam', 'NeuroPharm', 6.75, '2025-08-12'),
(22, 'Fluoxetine', 'MindCare', 8.25, '2024-10-18'),
(23, 'Warfarin', 'CardioMed', 5.80, '2025-02-14'),
(24, 'Simvastatin', 'CholestHealth', 7.20, '2024-11-05'),
(25, 'Amlodipine', 'BP Solutions', 6.30, '2025-03-22'),
(26, 'Metoprolol', 'HeartGuard', 5.90, '2024-09-08'),
(27, 'Furosemide', 'AquaPharm', 4.75, '2025-01-30'),
(28, 'Doxycycline', 'AntiBiotix', 9.80, '2024-07-25'),
(29, 'Clonazepam', 'NeuroCalm', 7.40, '2025-05-15'),
(30, 'Escitalopram', 'MoodPlus', 10.20, '2024-12-28'),
(31, 'Pregabalin', 'NeuroRelief', 12.50, '2025-04-05'),
(32, 'Tamsulosin', 'UroCare', 8.90, '2024-08-20'),
(33, 'Montelukast', 'RespiraWell', 6.10, '2025-02-10'),
(34, 'Ranitidine', 'AcidFree', 5.20, '2024-10-30'),
(35, 'Duloxetine', 'NeuroBalance', 11.75, '2025-06-25'),
(36, 'Clopidogrel', 'BloodThin Inc', 9.30, '2024-11-15'),
(37, 'Meloxicam', 'ArthroEase', 7.80, '2025-03-18'),
(38, 'Trazodone', 'SleepWell', 6.40, '2024-09-22'),
(39, 'Bisoprolol', 'CardioSafe', 5.60, '2025-01-08'),
(40, 'Quetiapine', 'PsychoPharm', 13.20, '2024-12-05'),
(41, 'Venlafaxine', 'AnxioFree', 10.80, '2025-05-20'),
(42, 'Spironolactone', 'Diurex', 8.40, '2024-07-30'),
(43, 'Carvedilol', 'HeartPro', 7.10, '2025-02-15'),
(44, 'Memantine', 'NeuroMem', 14.00, '2024-10-10'),
(45, 'Risperidone', 'Mentis Pharma', 11.20, '2025-04-28'),
(46, 'Amitriptyline', 'Deprex', 6.80, '2024-08-05'),
(47, 'Finasteride', 'HairGrowth', 9.70, '2025-03-10'),
(48, 'Lorazepam', 'AnxioRelief', 7.30, '2024-11-20'),
(49, 'Zolpidem', 'SleepEase', 8.60, '2025-01-25'),
(50, 'Celecoxib', 'ArthroRelief', 10.40, '2024-09-15'),
(51, 'Oxcarbazepine', 'NeuroStable', 12.80, '2025-06-10'),
(52, 'Topiramate', 'MigraStop', 9.90, '2024-12-15'),
(53, 'Valproate', 'EpilepCare', 8.70, '2025-02-20'),
(54, 'Olanzapine', 'PsychoWell', 13.50, '2024-10-25'),
(55, 'Lamotrigine', 'MoodStabil', 11.90, '2025-05-05'),
(56, 'Mirtazapine', 'DepreLess', 10.60, '2024-07-20'),
(57, 'Donepezil', 'Memorix', 15.00, '2025-03-30'),
(58, 'Galantamine', 'AlzCare', 14.50, '2024-11-10'),
(59, 'Rivaroxaban', 'ThromboSafe', 16.20, '2025-04-15'),
(60, 'Apixaban', 'BloodFlow', 15.80, '2024-09-28'),
(61, 'Empagliflozin', 'DiabetoCare', 12.30, '2025-01-10'),
(62, 'Dapagliflozin', 'SugarFree', 11.80, '2024-08-15'),
(63, 'Sitagliptin', 'DiabetoPlus', 10.90, '2025-02-05'),
(64, 'Linagliptin', 'GlucoWell', 9.60, '2024-10-08'),
(65, 'Canagliflozin', 'RenalGluco', 13.70, '2025-05-12'),
(66, 'Liraglutide', 'ObeCare', 18.00, '2024-12-22'),
(67, 'Semaglutide', 'WeightLess', 20.50, '2025-06-30'),
(68, 'Dulaglutide', 'SugarBalance', 17.80, '2024-07-10'),
(69, 'Insulin Glargine', 'DiabetoMed', 25.00, '2025-03-15'),
(70, 'Insulin Aspart', 'QuickSugar', 22.50, '2024-11-28'),
(71, 'Insulin Lispro', 'FastActing', 23.00, '2025-04-20'),
(72, 'Insulin Degludec', 'LongSugar', 26.50, '2024-09-05'),
(73, 'Terbinafine', 'FungoKill', 8.20, '2025-01-18'),
(74, 'Fluconazole', 'YeastNoMore', 9.40, '2024-08-25'),
(75, 'Itraconazole', 'FungoClear', 11.30, '2025-02-12'),
(76, 'Voriconazole', 'FungoX', 14.80, '2024-10-15'),
(77, 'Posaconazole', 'FungoShield', 16.50, '2025-05-22'),
(78, 'Acyclovir', 'ViroStop', 7.90, '2024-12-08'),
(79, 'Valacyclovir', 'ViroLess', 9.20, '2025-03-25'),
(80, 'Oseltamivir', 'FluShield', 12.00, '2024-11-12'),
(81, 'Zanamivir', 'InfluStop', 13.50, '2025-04-08'),
(82, 'Ribavirin', 'ViroKill', 15.20, '2024-09-18'),
(83, 'Interferon', 'HepatoCare', 28.00, '2025-06-20'),
(84, 'Entecavir', 'HepatoSafe', 22.80, '2024-07-30'),
(85, 'Tenofovir', 'HepatoShield', 20.50, '2025-02-28');

INSERT INTO Suppliers (SupplierID, SupplierName, ContactDetails) 
VALUES  
(1, 'MediSupply Co.', 'contact@medisupply.com'), 
(2, 'PharmaDistributors', 'info@pharmadist.com'), 
(3, 'HealthPlus', 'support@healthplus.com'), 
(4, 'MedWorld', 'sales@medworld.com'), 
(5, 'CurePharma', 'info@curepharma.com'), 
(6, 'PharmaDirect', 'sales@pharmadirect.com'), 
(7, 'MedSource', 'info@medsource.com'), 
(8, 'Global Pharma', 'contact@globalpharma.com'), 
(9, 'Prime Meds', 'support@primemeds.com'), 
(10, 'VitalSupplies', 'info@vitalsupplies.com'), 
(11, 'MedLink', 'sales@medlink.com'), 
(12, 'PharmaCare', 'support@pharmacare.com'), 
(13, 'HealthMeds', 'info@healthmeds.com'), 
(14, 'CureDirect', 'sales@curedirect.com'), 
(15, 'MedExpress', 'support@medexpress.com'), 
(16, 'PharmaWorld', 'info@pharmaworld.com'), 
(17, 'LifePharma', 'contact@lifepharma.com'), 
(18, 'MedPlus', 'sales@medplus.com'), 
(19, 'PharmaNet', 'info@pharmanet.com'), 
(20, 'HealthDirect', 'support@healthdirect.com'),
(21, 'BioPharm Solutions', 'info@biopharmsol.com'),
(22, 'MediCorp International', 'contact@medicorp.com'),
(23, 'PharmaGen', 'support@pharmagen.com'),
(24, 'Global Health Distributors', 'sales@globalhealth.com'),
(25, 'Prime Pharmaceuticals', 'info@primepharma.com'),
(26, 'MediVet Supplies', 'contact@medivet.com'),
(27, 'PharmaPlus International', 'info@pharmaplusint.com'),
(28, 'LifeScience Distributors', 'sales@lifesciencedist.com'),
(29, 'BioCare Pharmaceuticals', 'support@biocarepharma.com'),
(30, 'MediTech Global', 'info@meditechglobal.com'),
(31, 'PharmaLink Worldwide', 'contact@pharmalink.com'),
(32, 'HealthBridge International', 'sales@healthbridge.com'),
(33, 'BioGen Meds', 'info@biogenmeds.com'),
(34, 'MediCare Distributors', 'support@medicaredist.com'),
(35, 'PharmaTrust', 'contact@pharmatrust.com'),
(36, 'Global MediSolutions', 'sales@globalmedis.com'),
(37, 'LifeMed Pharmaceuticals', 'info@lifemedpharma.com'),
(38, 'BioPharm Distributors', 'support@biopharmdist.com'),
(39, 'MediWorld International', 'contact@mediworld.com'),
(40, 'PharmaCore', 'sales@pharmacore.com'),
(41, 'HealthFirst Distributors', 'info@healthfirst.com'),
(42, 'BioTech Pharma', 'support@biotechpharma.com'),
(43, 'MediPlus Global', 'contact@mediplus.com'),
(44, 'PharmaNova', 'sales@pharmanova.com'),
(45, 'LifeCare Pharmaceuticals', 'info@lifecarepharma.com'),
(46, 'Global BioMed', 'support@globalbiomed.com'),
(47, 'MediGenix', 'contact@medigenix.com'),
(48, 'PharmaVision', 'sales@pharmavision.com'),
(49, 'HealthWay International', 'info@healthway.com'),
(50, 'BioMed Solutions', 'support@biomedsol.com'),
(51, 'MediPharm Global', 'contact@medipharm.com'),
(52, 'PharmaEdge', 'sales@pharmaedge.com'),
(53, 'LifeLine Distributors', 'info@lifelinedist.com'),
(54, 'BioHealth International', 'support@biohealth.com'),
(55, 'MediCare Plus', 'contact@medicareplus.com'),
(56, 'PharmaFirst', 'sales@pharmafirst.com'),
(57, 'HealthVantage', 'info@healthvantage.com'),
(58, 'BioPharm Global', 'support@biopharmglobal.com'),
(59, 'MediSolutions', 'contact@medisolutions.com'),
(60, 'PharmaMax', 'sales@pharmamax.com'),
(61, 'LifeScience Pharma', 'info@lifesciencepharma.com'),
(62, 'BioMed Distributors', 'support@biomeddist.com'),
(63, 'MediLink International', 'contact@medilinkint.com'),
(64, 'PharmaWell', 'sales@pharmawell.com'),
(65, 'HealthCore', 'info@healthcore.com'),
(66, 'BioTech Solutions', 'support@biotechsol.com'),
(67, 'MediVantage', 'contact@medivantage.com'),
(68, 'PharmaGenix', 'sales@pharmagenix.com'),
(69, 'LifeCare Distributors', 'info@lifecaredist.com'),
(70, 'BioHealth Pharma', 'support@biohealthpharma.com'),
(71, 'MediFirst International', 'contact@medifirst.com'),
(72, 'PharmaPlus Solutions', 'sales@pharmaplussol.com'),
(73, 'HealthBridge Pharma', 'info@healthbridgepharma.com'),
(74, 'BioMed International', 'support@biomedint.com'),
(75, 'MediCore Distributors', 'contact@medicoredist.com'),
(76, 'PharmaVantage', 'sales@pharmavantage.com'),
(77, 'LifeScience Solutions', 'info@lifesciencesol.com'),
(78, 'BioTech Distributors', 'support@biotechdist.com'),
(79, 'MediHealth International', 'contact@medihealth.com'),
(80, 'PharmaFirst Global', 'sales@pharmafirstglobal.com'),
(81, 'HealthPlus Distributors', 'info@healthplusdist.com'),
(82, 'BioPharm Solutions Intl', 'support@biopharmsolint.com'),
(83, 'MediGen Global', 'contact@medigen.com'),
(84, 'PharmaCore International', 'sales@pharmacoreint.com'),
(85, 'LifeMed Distributors', 'info@lifemeddist.com');

INSERT INTO Purchases (PurchaseID, SupplierID, MedicineID, PurchaseDate, Quantity, TotalCost) 
VALUES  
(1, 1, 1, '2023-10-01', 100, 500.00), 
(2, 2, 2, '2023-10-05', 50, 500.00), 
(3, 3, 3, '2023-10-10', 75, 562.50), 
(4, 4, 4, '2023-10-15', 200, 600.00), 
(5, 5, 5, '2023-10-20', 60, 480.00), 
(6, 6, 6, '2023-10-25', 150, 675.00), 
(7, 7, 7, '2023-10-30', 80, 720.00), 
(8, 8, 8, '2023-11-01', 90, 585.00), 
(9, 9, 9, '2023-11-05', 120, 660.00), 
(10, 10, 10, '2023-11-10', 70, 840.00), 
(11, 11, 11, '2023-11-15', 100, 350.00), 
(12, 12, 12, '2023-11-20', 60, 660.00), 
(13, 13, 13, '2023-11-25', 85, 722.50), 
(14, 14, 14, '2023-11-30', 110, 660.00), 
(15, 15, 15, '2023-12-05', 95, 665.00), 
(16, 16, 16, '2023-12-10', 75, 712.50), 
(17, 17, 17, '2023-12-15', 130, 520.00), 
(18, 18, 18, '2023-12-20', 140, 1470.00), 
(19, 19, 19, '2023-12-25', 90, 450.00), 
(20, 20, 20, '2023-12-30', 100, 750.00),
(21, 21, 21, '2024-01-05', 110, 742.50),
(22, 22, 22, '2024-01-10', 65, 536.25),
(23, 23, 23, '2024-01-15', 90, 522.00),
(24, 24, 24, '2024-01-20', 120, 864.00),
(25, 25, 25, '2024-01-25', 85, 535.50),
(26, 26, 26, '2024-01-30', 95, 560.50),
(27, 27, 27, '2024-02-05', 130, 617.50),
(28, 28, 28, '2024-02-10', 70, 686.00),
(29, 29, 29, '2024-02-15', 110, 814.00),
(30, 30, 30, '2024-02-20', 85, 867.00),
(31, 31, 31, '2024-02-25', 95, 1187.50),
(32, 32, 32, '2024-03-01', 80, 712.00),
(33, 33, 33, '2024-03-05', 100, 610.00),
(34, 34, 34, '2024-03-10', 120, 624.00),
(35, 35, 35, '2024-03-15', 90, 1057.50),
(36, 36, 36, '2024-03-20', 85, 790.50),
(37, 37, 37, '2024-03-25', 110, 858.00),
(38, 38, 38, '2024-03-30', 95, 608.00),
(39, 39, 39, '2024-04-05', 120, 672.00),
(40, 40, 40, '2024-04-10', 80, 1056.00),
(41, 41, 41, '2024-04-15', 90, 972.00),
(42, 42, 42, '2024-04-20', 110, 924.00),
(43, 43, 43, '2024-04-25', 85, 603.50),
(44, 44, 44, '2024-04-30', 95, 1330.00),
(45, 45, 45, '2024-05-05', 100, 1120.00),
(46, 46, 46, '2024-05-10', 120, 816.00),
(47, 47, 47, '2024-05-15', 90, 873.00),
(48, 48, 48, '2024-05-20', 85, 620.50),
(49, 49, 49, '2024-05-25', 110, 946.00),
(50, 50, 50, '2024-05-30', 95, 988.00),
(51, 51, 51, '2024-06-05', 120, 1536.00),
(52, 52, 52, '2024-06-10', 90, 891.00),
(53, 53, 53, '2024-06-15', 110, 957.00),
(54, 54, 54, '2024-06-20', 85, 1147.50),
(55, 55, 55, '2024-06-25', 100, 1190.00),
(56, 56, 56, '2024-06-30', 120, 1272.00),
(57, 57, 57, '2024-07-05', 90, 1350.00),
(58, 58, 58, '2024-07-10', 110, 1595.00),
(59, 59, 59, '2024-07-15', 85, 1377.00),
(60, 60, 60, '2024-07-20', 95, 1501.00),
(61, 61, 61, '2024-07-25', 120, 1476.00),
(62, 62, 62, '2024-07-30', 90, 1062.00),
(63, 63, 63, '2024-08-05', 110, 1199.00),
(64, 64, 64, '2024-08-10', 85, 816.00),
(65, 65, 65, '2024-08-15', 100, 1370.00),
(66, 66, 66, '2024-08-20', 120, 2160.00),
(67, 67, 67, '2024-08-25', 90, 1845.00),
(68, 68, 68, '2024-08-30', 110, 1958.00),
(69, 69, 69, '2024-09-05', 85, 2125.00),
(70, 70, 70, '2024-09-10', 100, 2250.00),
(71, 71, 71, '2024-09-15', 120, 2760.00),
(72, 72, 72, '2024-09-20', 90, 2385.00),
(73, 73, 73, '2024-09-25', 110, 902.00),
(74, 74, 74, '2024-09-30', 85, 799.00),
(75, 75, 75, '2024-10-05', 100, 1130.00),
(76, 76, 76, '2024-10-10', 120, 1776.00),
(77, 77, 77, '2024-10-15', 90, 1485.00),
(78, 78, 78, '2024-10-20', 110, 1012.00),
(79, 79, 79, '2024-10-25', 85, 782.00),
(80, 80, 80, '2024-10-30', 100, 1200.00),
(81, 81, 81, '2024-11-05', 120, 1620.00),
(82, 82, 82, '2024-11-10', 90, 1368.00),
(83, 83, 83, '2024-11-15', 110, 3080.00),
(84, 84, 84, '2024-11-20', 85, 1938.00),
(85, 85, 85, '2024-11-25', 100, 2050.00);

INSERT INTO Prescriptions (PrescriptionID, PatientName, DoctorName, PrescriptionDate) 
VALUES  
(1, 'John Doe', 'Dr. Alice Brown', '2023-11-01'), 
(2, 'Jane Smith', 'Dr. Bob Green', '2023-11-02'), 
(3, 'Mary Johnson', 'Dr. Carol White', '2023-11-03'), 
(4, 'David Brown', 'Dr. Alice Brown', '2023-11-04'), 
(5, 'Emily Davis', 'Dr. Bob Green', '2023-11-05'), 
(6, 'Michael Wilson', 'Dr. Carol White', '2023-11-06'), 
(7, 'Sarah Martinez', 'Dr. Alice Brown', '2023-11-07'), 
(8, 'James Anderson', 'Dr. Bob Green', '2023-11-08'), 
(9, 'Linda Thomas', 'Dr. Carol White', '2023-11-09'), 
(10, 'Robert Taylor', 'Dr. Alice Brown', '2023-11-10'), 
(11, 'Patricia Harris', 'Dr. Bob Green', '2023-11-11'), 
(12, 'William Clark', 'Dr. Carol White', '2023-11-12'), 
(13, 'Elizabeth Lewis', 'Dr. Alice Brown', '2023-11-13'), 
(14, 'Daniel Walker', 'Dr. Bob Green', '2023-11-14'), 
(15, 'Jennifer Hall', 'Dr. Carol White', '2023-11-15'), 
(16, 'Joseph Young', 'Dr. Alice Brown', '2023-11-16'), 
(17, 'Maria Allen', 'Dr. Bob Green', '2023-11-17'), 
(18, 'Charles King', 'Dr. Carol White', '2023-11-18'), 
(19, 'Susan Wright', 'Dr. Alice Brown', '2023-11-19'), 
(20, 'Thomas Scott', 'Dr. Bob Green', '2023-11-20'),
(21, 'Margaret Adams', 'Dr. David Lee', '2023-11-21'),
(22, 'Christopher Baker', 'Dr. Eve Wilson', '2023-11-22'),
(23, 'Jessica Carter', 'Dr. Frank Miller', '2023-11-23'),
(24, 'Matthew Evans', 'Dr. Grace Taylor', '2023-11-24'),
(25, 'Amanda Garcia', 'Dr. Henry Davis', '2023-11-25'),
(26, 'Andrew Hill', 'Dr. Irene Moore', '2023-11-26'),
(27, 'Melissa Jackson', 'Dr. Jack Martin', '2023-11-27'),
(28, 'Kevin Lopez', 'Dr. Karen Anderson', '2023-11-28'),
(29, 'Rebecca Nelson', 'Dr. Larry Thomas', '2023-11-29'),
(30, 'Brian Parker', 'Dr. Nancy Hall', '2023-11-30'),
(31, 'Stephanie Roberts', 'Dr. Oscar Young', '2023-12-01'),
(32, 'Gregory Sanchez', 'Dr. Patricia King', '2023-12-02'),
(33, 'Nicole Torres', 'Dr. Quincy Wright', '2023-12-03'),
(34, 'Eric Adams', 'Dr. Rachel Scott', '2023-12-04'),
(35, 'Christine Baker', 'Dr. Samuel Adams', '2023-12-05'),
(36, 'Joshua Carter', 'Dr. Tina Baker', '2023-12-06'),
(37, 'Megan Evans', 'Dr. Victor Carter', '2023-12-07'),
(38, 'Ryan Garcia', 'Dr. Wendy Evans', '2023-12-08'),
(39, 'Laura Hill', 'Dr. Xavier Garcia', '2023-12-09'),
(40, 'Jason Jackson', 'Dr. Yvonne Hill', '2023-12-10'),
(41, 'Heather Lopez', 'Dr. Zachary Jackson', '2023-12-11'),
(42, 'Nicholas Nelson', 'Dr. Amy Lopez', '2023-12-12'),
(43, 'Rachel Parker', 'Dr. Benjamin Nelson', '2023-12-13'),
(44, 'Justin Roberts', 'Dr. Cynthia Parker', '2023-12-14'),
(45, 'Katherine Sanchez', 'Dr. Daniel Roberts', '2023-12-15'),
(46, 'Brandon Torres', 'Dr. Emily Sanchez', '2023-12-16'),
(47, 'Danielle Adams', 'Dr. George Torres', '2023-12-17'),
(48, 'Timothy Baker', 'Dr. Heather Adams', '2023-12-18'),
(49, 'Vanessa Carter', 'Dr. Ian Baker', '2023-12-19'),
(50, 'Aaron Evans', 'Dr. Julia Carter', '2023-12-20'),
(51, 'Tiffany Garcia', 'Dr. Kevin Evans', '2023-12-21'),
(52, 'Dennis Hill', 'Dr. Laura Garcia', '2023-12-22'),
(53, 'Monica Jackson', 'Dr. Michael Hill', '2023-12-23'),
(54, 'Philip Lopez', 'Dr. Nicole Jackson', '2023-12-24'),
(55, 'Crystal Nelson', 'Dr. Oliver Lopez', '2023-12-25'),
(56, 'Keith Parker', 'Dr. Pamela Nelson', '2023-12-26'),
(57, 'Erica Roberts', 'Dr. Quentin Parker', '2023-12-27'),
(58, 'Walter Sanchez', 'Dr. Rose Roberts', '2023-12-28'),
(59, 'Monique Torres', 'Dr. Steven Sanchez', '2023-12-29'),
(60, 'Gerald Adams', 'Dr. Theresa Torres', '2023-12-30'),
(61, 'Brittany Baker', 'Dr. Ulysses Adams', '2023-12-31'),
(62, 'Christian Carter', 'Dr. Valerie Baker', '2024-01-01'),
(63, 'Veronica Evans', 'Dr. William Carter', '2024-01-02'),
(64, 'Dylan Garcia', 'Dr. Xena Evans', '2024-01-03'),
(65, 'Alexis Hill', 'Dr. Yosef Garcia', '2024-01-04'),
(66, 'Cody Jackson', 'Dr. Zoe Hill', '2024-01-05'),
(67, 'Sabrina Lopez', 'Dr. Adam Jackson', '2024-01-06'),
(68, 'Devin Nelson', 'Dr. Beth Lopez', '2024-01-07'),
(69, 'Jasmine Parker', 'Dr. Carl Nelson', '2024-01-08'),
(70, 'Mitchell Roberts', 'Dr. Dana Parker', '2024-01-09'),
(71, 'Holly Sanchez', 'Dr. Edward Roberts', '2024-01-10'),
(72, 'Tyler Torres', 'Dr. Fiona Sanchez', '2024-01-11'),
(73, 'Natalie Adams', 'Dr. Greg Torres', '2024-01-12'),
(74, 'Zachary Baker', 'Dr. Hannah Adams', '2024-01-13'),
(75, 'Allison Carter', 'Dr. Isaac Baker', '2024-01-14'),
(76, 'Chad Evans', 'Dr. Jenna Carter', '2024-01-15'),
(77, 'Brianna Garcia', 'Dr. Kyle Evans', '2024-01-16'),
(78, 'Brett Hill', 'Dr. Leah Garcia', '2024-01-17'),
(79, 'Molly Jackson', 'Dr. Mark Hill', '2024-01-18'),
(80, 'Collin Lopez', 'Dr. Nina Jackson', '2024-01-19'),
(81, 'Chelsea Nelson', 'Dr. Oscar Lopez', '2024-01-20'),
(82, 'Derek Parker', 'Dr. Penny Nelson', '2024-01-21'),
(83, 'Kelsey Roberts', 'Dr. Quinn Parker', '2024-01-22'),
(84, 'Garrett Sanchez', 'Dr. Ryan Roberts', '2024-01-23'),
(85, 'Hailey Torres', 'Dr. Sarah Sanchez', '2024-01-24');

INSERT INTO Sales (SaleID, MedicineID, PrescriptionID, SaleDate, Quantity, TotalAmount) 
VALUES  
(1, 1, 1, '2023-11-03', 10, 50.00), 
(2, 2, 2, '2023-11-04', 5, 50.00), 
(3, 3, 3, '2023-11-05', 15, 112.50), 
(4, 4, 4, '2023-11-06', 20, 60.00), 
(5, 5, 5, '2023-11-07', 10, 80.00), 
(6, 6, 6, '2023-11-08', 12, 54.00), 
(7, 7, 7, '2023-11-09', 8, 72.00), 
(8, 8, 8, '2023-11-10', 10, 65.00), 
(9, 9, 9, '2023-11-11', 15, 82.50), 
(10, 10, 10, '2023-11-12', 7, 84.00), 
(11, 11, 11, '2023-11-13', 10, 35.00), 
(12, 12, 12, '2023-11-14', 6, 66.00), 
(13, 13, 13, '2023-11-15', 8, 68.00), 
(14, 14, 14, '2023-11-16', 11, 66.00), 
(15, 15, 15, '2023-11-17', 9, 63.00), 
(16, 16, 16, '2023-11-18', 7, 66.50), 
(17, 17, 17, '2023-11-19', 13, 52.00), 
(18, 18, 18, '2023-11-20', 14, 147.00), 
(19, 19, 19, '2023-11-21', 9, 45.00), 
(20, 20, 20, '2023-11-22', 10, 75.00),
(21, 21, 21, '2023-11-23', 12, 81.00),
(22, 22, 22, '2023-11-24', 8, 66.00),
(23, 23, 23, '2023-11-25', 10, 58.00),
(24, 24, 24, '2023-11-26', 15, 108.00),
(25, 25, 25, '2023-11-27', 9, 56.70),
(26, 26, 26, '2023-11-28', 11, 64.90),
(27, 27, 27, '2023-11-29', 13, 61.75),
(28, 28, 28, '2023-11-30', 7, 68.60),
(29, 29, 29, '2023-12-01', 11, 81.40),
(30, 30, 30, '2023-12-02', 8, 81.60),
(31, 31, 31, '2023-12-03', 9, 112.50),
(32, 32, 32, '2023-12-04', 10, 89.00),
(33, 33, 33, '2023-12-05', 12, 73.20),
(34, 34, 34, '2023-12-06', 11, 57.20),
(35, 35, 35, '2023-12-07', 10, 117.50),
(36, 36, 36, '2023-12-08', 9, 83.70),
(37, 37, 37, '2023-12-09', 11, 85.80),
(38, 38, 38, '2023-12-10', 10, 64.00),
(39, 39, 39, '2023-12-11', 12, 67.20),
(40, 40, 40, '2023-12-12', 8, 105.60),
(41, 41, 41, '2023-12-13', 9, 97.20),
(42, 42, 42, '2023-12-14', 11, 92.40),
(43, 43, 43, '2023-12-15', 8, 56.80),
(44, 44, 44, '2023-12-16', 9, 126.00),
(45, 45, 45, '2023-12-17', 10, 112.00),
(46, 46, 46, '2023-12-18', 12, 81.60),
(47, 47, 47, '2023-12-19', 9, 78.30),
(48, 48, 48, '2023-12-20', 10, 73.00),
(49, 49, 49, '2023-12-21', 11, 94.60),
(50, 50, 50, '2023-12-22', 9, 93.60),
(51, 51, 51, '2023-12-23', 12, 153.60),
(52, 52, 52, '2023-12-24', 9, 89.10),
(53, 53, 53, '2023-12-25', 11, 95.70),
(54, 54, 54, '2023-12-26', 8, 108.00),
(55, 55, 55, '2023-12-27', 10, 119.00),
(56, 56, 56, '2023-12-28', 12, 127.20),
(57, 57, 57, '2023-12-29', 9, 135.00),
(58, 58, 58, '2023-12-30', 11, 159.50),
(59, 59, 59, '2023-12-31', 8, 118.40),
(60, 60, 60, '2024-01-01', 9, 142.20),
(61, 61, 61, '2024-01-02', 12, 147.60),
(62, 62, 62, '2024-01-03', 9, 106.20),
(63, 63, 63, '2024-01-04', 11, 119.90),
(64, 64, 64, '2024-01-05', 8, 76.80),
(65, 65, 65, '2024-01-06', 10, 137.00),
(66, 66, 66, '2024-01-07', 12, 216.00),
(67, 67, 67, '2024-01-08', 9, 184.50),
(68, 68, 68, '2024-01-09', 11, 195.80),
(69, 69, 69, '2024-01-10', 8, 200.00),
(70, 70, 70, '2024-01-11', 10, 225.00),
(71, 71, 71, '2024-01-12', 12, 276.00),
(72, 72, 72, '2024-01-13', 9, 238.50),
(73, 73, 73, '2024-01-14', 11, 90.20),
(74, 74, 74, '2024-01-15', 8, 75.20),
(75, 75, 75, '2024-01-16', 10, 113.00),
(76, 76, 76, '2024-01-17', 12, 177.60),
(77, 77, 77, '2024-01-18', 9, 133.65),
(78, 78, 78, '2024-01-19', 11, 101.20),
(79, 79, 79, '2024-01-20', 8, 73.60),
(80, 80, 80, '2024-01-21', 10, 120.00),
(81, 81, 81, '2024-01-22', 12, 162.00),
(82, 82, 82, '2024-01-23', 9, 123.12),
(83, 83, 83, '2024-01-24', 11, 308.00),
(84, 84, 84, '2024-01-25', 8, 182.40),
(85, 85, 85, '2024-01-26', 10, 205.00);

INSERT INTO Inventory (InventoryID, MedicineID, StockQuantity) 
VALUES  
(1, 1, 90),  -- 100 purchased - 10 sold
(2, 2, 45),  -- 50 - 5
(3, 3, 60),  -- 75 - 15
(4, 4, 180), -- 200 - 20
(5, 5, 50),  -- 60 - 10
(6, 6, 138), -- 150 - 12
(7, 7, 72),  -- 80 - 8
(8, 8, 80),  -- 90 - 10
(9, 9, 105), -- 120 - 15
(10, 10, 63), -- 70 - 7
(11, 11, 90), -- 100 - 10
(12, 12, 54), -- 60 - 6
(13, 13, 77), -- 85 - 8
(14, 14, 99), -- 110 - 11
(15, 15, 86), -- 95 - 9
(16, 16, 68), -- 75 - 7
(17, 17, 117), -- 130 - 13
(18, 18, 126), -- 140 - 14
(19, 19, 81), -- 90 - 9
(20, 20, 90), -- 100 - 10
(21, 21, 98), -- 110 - 12
(22, 22, 57), -- 65 - 8
(23, 23, 80), -- 90 - 10
(24, 24, 105), -- 120 - 15
(25, 25, 76), -- 85 - 9
(26, 26, 84), -- 95 - 11
(27, 27, 117), -- 130 - 13
(28, 28, 63), -- 70 - 7
(29, 29, 99), -- 110 - 11
(30, 30, 77), -- 85 - 8
(31, 31, 86), -- 95 - 9
(32, 32, 70), -- 80 - 10
(33, 33, 88), -- 100 - 12
(34, 34, 109), -- 120 - 11
(35, 35, 80), -- 90 - 10
(36, 36, 76), -- 85 - 9
(37, 37, 99), -- 110 - 11
(38, 38, 85), -- 95 - 10
(39, 39, 108), -- 120 - 12
(40, 40, 72), -- 80 - 8
(41, 41, 81), -- 90 - 9
(42, 42, 99), -- 110 - 11
(43, 43, 77), -- 85 - 8
(44, 44, 86), -- 95 - 9
(45, 45, 90), -- 100 - 10
(46, 46, 108), -- 120 - 12
(47, 47, 81), -- 90 - 9
(48, 48, 75), -- 85 - 10
(49, 49, 99), -- 110 - 11
(50, 50, 86), -- 95 - 9
(51, 51, 108), -- 120 - 12
(52, 52, 81), -- 90 - 9
(53, 53, 99), -- 110 - 11
(54, 54, 77), -- 85 - 8
(55, 55, 90), -- 100 - 10
(56, 56, 108), -- 120 - 12
(57, 57, 81), -- 90 - 9
(58, 58, 99), -- 110 - 11
(59, 59, 77), -- 85 - 8
(60, 60, 86), -- 95 - 9
(61, 61, 108), -- 120 - 12
(62, 62, 81), -- 90 - 9
(63, 63, 99), -- 110 - 11
(64, 64, 77), -- 85 - 8
(65, 65, 90), -- 100 - 10
(66, 66, 108), -- 120 - 12
(67, 67, 81), -- 90 - 9
(68, 68, 99), -- 110 - 11
(69, 69, 77), -- 85 - 8
(70, 70, 90), -- 100 - 10
(71, 71, 108), -- 120 - 12
(72, 72, 81), -- 90 - 9
(73, 73, 99), -- 110 - 11
(74, 74, 77), -- 85 - 8
(75, 75, 90), -- 100 - 10
(76, 76, 108), -- 120 - 12
(77, 77, 81), -- 90 - 9
(78, 78, 99), -- 110 - 11
(79, 79, 77), -- 85 - 8
(80, 80, 90), -- 100 - 10
(81, 81, 108), -- 120 - 12
(82, 82, 81), -- 90 - 9
(83, 83, 99), -- 110 - 11
(84, 84, 77), -- 85 - 8
(85, 85, 90); -- 100 - 10


