-- JOIN example: List employees with their department names
SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, e.Salary
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- UNION example: Combine lists of employees from Sales and Marketing departments
SELECT FirstName, LastName, 'Sales/Marketing' AS Department
FROM Employees
WHERE DepartmentID IN (1, 2)
UNION
-- Add employees from IT department with a different label
SELECT FirstName, LastName, 'IT' AS Department
FROM Employees
WHERE DepartmentID = 3;