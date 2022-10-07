-- CREATING DEPT TABLE
Create Table departments (
 dept_no Varchar(30) NOT NULL,
 dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY(dept_no),
	UNIQUE (dept_name)
);

SELECT * FROM departments

Create Table employees (
     emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
)
SELECT * FROM employees;

Create table dept_manager(
dept_no varchar(4) not null,
emp_no int not null,
from_date date not null, 
to_date date not null,
	
Foreign key (emp_no) References Employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),	
PRIMARY KEY (emp_no, dept_no)
)

SELECT * FROM dept_manager

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
)

SELECT * FROM salaries

Drop table dept_emp
CREATE TABLE dept_emp(
emp_no INT NOT NULL,
dept_no varchar(4) not null,
from_date date not null,
to_date date not null,
FOREIGN key (emp_no) References Employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),	
Primary key (emp_no,dept_no )
)

Drop table titles
create table titles(
    emp_no INT NOT NULL,
	title varchar(50) not null,
	from_date date not null,
	to_date date not null,
FOREIGN key (emp_no) References Employees(emp_no),
Primary key (emp_no, title, from_date)	
)
----------------------------------------
select * from employees
select Count (first_name) as "Total-count" from employees where birth_date between '1952-01-01' AND '1955-12-31';
select Count (first_name) as "Total-count" from employees where birth_date between '1952-01-01' AND '1952-12-31';

select first_name, last_name from employees where birth_date between '1953-01-01' AND '1953-12-31';

select first_name, last_name, hire_date from employees where (birth_date between '1952-01-01' AND '1955-12-31') 
AND (hire_date between '1985-01-01' AND '1988-01-01');

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

select * from retirement_info






