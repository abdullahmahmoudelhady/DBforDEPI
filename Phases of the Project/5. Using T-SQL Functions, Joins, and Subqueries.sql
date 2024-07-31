-- Requirement 1:  Employee Details with Function Manipulation
SELECT 
    UPPER(e.FirstName) AS FirstName_Upper,
    LOWER(e.LastName) AS LastName_Lower,
    CHAR_LENGTH(e.Position) AS PositionLength,
    d.DepartmentName
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID;


-- Requirement 2:  Department Budget Summary
SELECT 
    d.DepartmentName,
    ROUND(SUM(e.Salary), -3) AS TotalSalaryExpenditure,
    COUNT(e.EmployeeID) AS NumberOfEmployees
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY 
    d.DepartmentName
ORDER BY 
    TotalSalaryExpenditure DESC;

-- Requirement 3: Project Assignments
SELECT 
    UPPER(p.ProjectName) AS ProjectName,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName,
    a.Role
FROM 
    Projects p
JOIN 
    Assignments a ON p.ProjectID = a.ProjectID
JOIN 
    Employees e ON a.EmployeeID = e.EmployeeID;

-- Requirement 4: Customer Order Analysis
SELECT 
    LOWER(c.CustomerName) AS CustomerName,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.TotalAmount) AS TotalAmountSpent
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
GROUP BY 
    c.CustomerName;

-- Requirement 5:  Product Details Extraction
SELECT 
    LEFT(p.ProductName, 10) AS TruncatedProductName,
    LEFT(p.ProductName, 2) AS ProductCategory,
    COALESCE(SUM(od.Quantity), 0) AS TotalQuantityOrdered
FROM 
    Products p
LEFT JOIN 
    OrderDetails od ON p.ProductID = od.ProductID
GROUP BY 
    p.ProductName;

-- Requirement 6:  High Salary Employees in Specific Departments
 SELECT 
    e.FirstName,
    e.LastName,
    e.Salary,
    d.DepartmentName
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    e.Salary > (
        SELECT 
            AVG(e2.Salary)
        FROM 
            Employees e2
        WHERE 
            e2.DepartmentID = e.DepartmentID
    );
