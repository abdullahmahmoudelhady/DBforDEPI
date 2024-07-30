CREATE DATABASE DBforDEPI;

-- Employees Table
USE DBforDEPI;
CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY, FirstName VARCHAR(20), LastName VARCHAR(20), DepartmentID VARCHAR(20), HireDate DATE, Position VARCHAR(50), Salary DECIMAL(10, 2)
)

-- Departments Table
USE DBforDEPI;
CREATE TABLE Departments (
DepartmentID VARCHAR(20) PRIMARY KEY, DepartmentName VARCHAR(50), Location VARCHAR(50)
)
