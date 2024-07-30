-- Foreign Key Relationship
ALTER TABLE Employees
ADD CONSTRAINT FK_Department
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

DESC Employees;


-- Data Integrity
ALTER TABLE Employees
MODIFY COLUMN FirstName VARCHAR(20) NOT NULL,
MODIFY COLUMN LastName VARCHAR(20) NOT NULL,
MODIFY COLUMN DepartmentID VARCHAR(20) NOT NULL,
MODIFY COLUMN HireDate DATE NOT NULL,
MODIFY COLUMN Position VARCHAR(50) NOT NULL,
MODIFY COLUMN Salary DECIMAL(10, 2) NOT NULL;

SELECT * FROM Employees 
WHERE EmployeeID IS NULL

DESC Employees;

ALTER TABLE Departments
MODIFY COLUMN DepartmentName VARCHAR(50) NOT NULL,
MODIFY COLUMN Location VARCHAR(50) NOT NULL;

DESC Departments;

-- Use CHECK Constraints for Data Integrity
ALTER TABLE Employees
ADD CONSTRAINT CK_Salary_Positive
CHECK (Salary > 0);
-- ERROR
INSERT INTO Employees VALUES (5555, 'Sayed', 'Ashraf', 'S1', '2019-02-01', 'Surveyor', 0)

-- Disallowed Function, We might use triggers
ALTER TABLE Employees
ADD CONSTRAINT CK_HireDate_Past
CHECK (HireDate <= CURRENT_DATE);

-- Making Sure The data is correct (Validation)
SELECT * FROM Employees;
SELECT * FROM Departments;
