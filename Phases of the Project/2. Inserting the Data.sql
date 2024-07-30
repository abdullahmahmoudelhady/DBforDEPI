-- Employees Data
USE DBforDEPI;
INSERT INTO Employees VALUES
(11225, 'Ahmed', 'Hamdy', 'ODHO', '2018-01-29', 'OD Manager', 28000.00),
(12230, 'Abdelaziz', 'Omar', 'TAHO', '2016-03-19', 'TA Team Leader', 34000.00),
(14325, 'Jana', 'Hazem', 'ITHO', '2020-08-09', 'IT Specialist', 18000.00),
(11226, 'Zeyad', 'Ghattas', 'ODHO', '2024-01-29', 'OD Specialist', 13000.00),
(21339, 'Ahmed', 'Ragheb', 'CTOHO', '2009-03-05', 'CTO Manager', 48000.00),
(13030, 'Lamiaa', 'Awady', 'FHO', '2018-06-23', 'Senior Accountant', 15000.00),
(11112, 'Ahmed', 'Mahran', 'S1', '2007-02-21', 'Construction Manager', 65000.00)

-- Departments Data
USE DBforDEPI;
INSERT INTO Departments VALUES
('ODHO', 'Organizational Development', 'Head Office'),
('TAHO', 'Talent Acquisition', 'Head Office'),
('ITHO', 'Information Technology Support', 'Head Office'),
('ITS', 'Information Technology Support', 'Site'),
('CTOHO', 'Technical Office', 'Head Office'),
('FHO', 'Finance', 'Head Office'),
('S1', 'Construction', 'Site')
