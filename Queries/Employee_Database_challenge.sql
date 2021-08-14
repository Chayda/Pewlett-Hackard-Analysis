-- Retrieve emp_no, first_name, last_name from Employees table.
SELECT emp_no, first_name, last_name
FROM Employees;

-- Retrieve title, from_date, to_date from Titles table.
SELECT title, from_date, to_date
FROM Titles;

-- Create new table (using INTO), joining Employees and Titles on primary key emp_no.
-- name Retirement Titles will hold title of current employees born between 1952 and 1955.
SELECT	e.emp_no,
	e.first_name, 
	e.last_name, 
	t.title, 
	t.from_date, 
	t.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Create Unique Titles table
-- Retrieve entries of retiring employess only showing their current positions (remove duplicate rows)
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Create Retiring Titles table
SELECT count(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY(title)
ORDER BY count(title) DESC;

-- Creating Mentorship Eligibility Table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name, 
	e.last_name,
	de.from_date,
	de.to_date,
	t.title	
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01 ' AND '1965-12-31')
ORDER BY e.emp_no;