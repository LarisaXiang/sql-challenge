CREATE TABLE departments (
dept_no VARCHAR (20) PRIMARY KEY,
dept_name VARCHAR (50)); 

CREATE TABLE dept_manager (
dept_no VARCHAR(20) NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
PRIMARY KEY (dept_no, emp_no));


CREATE TABLE titles (
title_id VARCHAR PRIMARY KEY,
title VARCHAR);

CREATE TABLE employees (
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR(30),
birth_date VARCHAR(10),
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR, 
hire_date VARCHAR(10),
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));


CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR(20),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
PRIMARY KEY (emp_no, dept_no));

CREATE TABLE salaries (
emp_no INTEGER PRIMARY KEY,
salary MONEY);

SELECT * FROM departments; 
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries; 
SELECT * FROM titles; 