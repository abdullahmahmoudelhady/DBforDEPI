-- New Tables and Data

-- Create Projects table
USE DBforDEPI;
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    Budget DECIMAL(15, 2) NOT NULL
);

-- Create Assignments table
CREATE TABLE Assignments (
    AssignmentID INT PRIMARY KEY,
    EmployeeID INT,
    ProjectID INT,
    Role VARCHAR(50),
    AssignmentDate DATE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

-- Create OrderDetails table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert the new data for each table 

-- Insert data into Projects 
INSERT INTO Projects VALUES
(1, 'Office Building', '2024-03-01', '2024-12-15', 500000.00),
(2, 'New Warehouse Construction', '2024-05-10', '2024-11-30', 750000.00);

-- Insert data into Assignments 
INSERT INTO Assignments VALUES
(1, 13030, 1, 'Senior Site Accountant', '2024-03-01'),
(2, 11112, 2, 'Construction Manager', '2024-05-10');

-- Insert data into Customers 
INSERT INTO Customers VALUES
(1, 'Madinet Masr', '0123456789', 'contact@madinetmasr.com', '1 Madinet Masr'),
(2, 'DownTown Mall', '0123446789', 'info@downtownmall.com', 'DownTown Mall');

-- Insert data into Orders 
INSERT INTO Orders VALUES
(1, 1, '2024-03-05', 5500000000.00),
(2, 2, '2024-05-15', 3455500000.00);

-- Insert data into Products table
INSERT INTO Products VALUES
(1, 'Concrete Mix', 1003333.00),
(2, 'Town House', 500000.00);

-- Insert data into OrderDetails table
INSERT INTO OrderDetails VALUES
(1, 1, 1, 2000, 1003333.00),
(2, 2, 2, 500, 500000.00);

