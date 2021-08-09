Employee DB Schema
Departments
-
dept_no varchar pk
dept_name varchar

Dept_Emp
-
emp_no int pk fk - Employees.emp_no fk - Salaries.emp_no
dept_no varchar fk - Departments.dept_no
from_date date
to_date date

Dept_Manager
-
dept_no varchar pk fk - Departments.dept_no
emp_no int fk - Employees.emp_no
from_date date
to_date date

Employees
-
emp_no int pk 
birth_date date
first_name varchar
last_name varchar
gender varchar
hire_date date

Salaries
-
emp_no int pk fk - Employees.emp_no
salary int
from_date date
to_date date

Titles
-
emp_no int pk fk - Employees.emp_no
title varchar
from_date date
to_date date

 
Queries for Analysis
-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Create new table with query results
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
