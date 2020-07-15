
-- TABLE Departments 
CREATE TABLE Departments (
Dept_no VARCHAR (255) PRIMARY KEY,
Dept_name VARCHAR (255));

-- TABLE Employees  

CREATE TABLE Employees (
Emp_no       INT PRIMARY KEY,
Birth_date   DATE,
First_name   VARCHAR (255),
Last_name    VARCHAR (255),
Gender       VARCHAR (15),
Hire_date    DATE);
 
-- TABLE Dept_emp  

CREATE TABLE Dept_emp (
Emp_no INTEGER REFERENCES Employees(Emp_no),
Dept_no VARCHAR (255) REFERENCES Departments(Dept_no),
From_date DATE,
To_date    DATE);

-- TABLE Dept_manager

CREATE TABLE Dept_manager (
Dept_no VARCHAR(255) REFERENCES Departments(Dept_no),
Emp_no INT REFERENCES Employees(Emp_no),
From_date  DATE,
To_date    DATE);

-- TABLE Salaries 

CREATE TABLE Salaries (
Emp_no INT REFERENCES Employees(Emp_no),
Salary   INT,
From_date  DATE,
To_date    DATE);

-- TABLE Titles

CREATE TABLE Titles (
Emp_no INT REFERENCES Employees(emp_no),
Title VARCHAR (255),
From_date DATE,
To_date    DATE);


SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT * FROM Dept_emp;
SELECT * FROM Dept_manager;
SELECT * FROM Salaries;
SELECT * FROM Titles;
