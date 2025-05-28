-- Create databases and tables
CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(255) NOT NULL
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert sample data into Departments
INSERT INTO Departments (DepartmentName) VALUES
('Sales'),
('Marketing'),
('IT');

-- Insert sample data into Employees
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary) VALUES
('John', 'Doe', 1, 60000),
('Jane', 'Smith', 2, 75000),
('David', 'Lee', 1, 55000),
('Emily', 'Brown', 2, 68000),
('Michael', 'Wilson', 3, 80000),
('Sarah', 'Johnson', 3, 72000);