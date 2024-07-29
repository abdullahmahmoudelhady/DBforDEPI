-- Adding a FK Constraint
ALTER TABLE Employees
ADD CONSTRAINT fk_department
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

-- NOT NULL Constraints
ALTER TABLE employees MODIFY EmployeeID INT NOT NULL;

ALTER TABLE Employees
MODIFY COLUMN FirstName VARCHAR(20) NOT NULL,
MODIFY COLUMN LastName VARCHAR(20) NOT NULL;



-- Making sure no date is in the future (CHECK CONSTRAINTS)
ALTER TABLE Employees
ADD CONSTRAINT chk_hiring_date CHECK (HireDate <= CURDATE());

-- Making sure salaries are positive (CHECK CONSTRAINTS)
ALTER TABLE employees
ADD CONSTRAINT salary_positve CHECK (salary > 0 AND salary);

-- Data Consistency
USE group1;
SELECT * FROM employees 
WHERE EmployeeID IS NULL



