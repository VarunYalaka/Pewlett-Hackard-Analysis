-- Retirement_titles Table ---

SELECT 
e.emp_no, 
e.first_name, 
e.last_name, 
t.title, 
t.from_date, 
t.to_date
INTO retirement_titles
FROM employees as e 
INNER JOIN titles as t 
ON e.emp_no = t.emp_no
WHERE birth_date between '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no


-- Unique_Titles_Table ---

SELECT DISTINCT ON (r.emp_no) 
r.emp_no, 
r.first_name, 
r.last_name, 
r.title 
INTO unique_titles_table
FROM retirement_titles as r 
WHERE to_date = '9999-01-01'
ORDER BY r.emp_no ASC, r.to_date DESC


-- Retiring_Titles_Table ---

SELECT count(title), title 
INTO retiring_titles_table
FROM unique_titles_table
GROUP BY title
ORDER BY count(title) DESC 



-- Mentorship_Eligibilty_Table -- 
SELECT DISTINCT ON (e.emp_no) 
e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date, 
de.from_date, 
de.to_date, 
t.title
INTO mentorship_eligibilty_table
FROM employees as e 
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date between '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no


-- Total Current Employees ---
Select count(emp_no) as Total_Current_Employees 
INTO Total_Current_Employees 
from employees;

-- Total_Retirement_Employees by Title --
Select title , count(emp_no)
INTO Total_RetirementEmployees
from unique_titles_table
Group by title;

-- Retirement_Employees_count -- 
select count(emp_no) AS Retirement_Employees_count from unique_titles_table

-- Total Mentorship Eligibility Members by Title --
Select title, count(emp_no)
INTO Mentorship_Eligibility_Members
from mentorship_eligibilty_table
Group by title; 

-- Mentorship Eligibility Members count -- 
Select count(emp_no) as Mentorship_Eligibility_Members_count from mentorship_eligibilty_table
