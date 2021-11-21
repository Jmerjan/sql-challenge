show datestyle;

CREATE TABLE Employees (
    emp_no INT   NOT NULL,
	emp_title_id VARCHAR Not Null,
    birth_date date   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    gender VARCHAR   NOT NULL,
    hire_date date   NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from Employees;

Create Table salaries(
	emp_no INT NOT NULL,
	salary money Not Null,
	Foreign Key (emp_no) References Employees(emp_no)
);
select * from salaries;

CREATE TABLE Departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
	PRIMARY KEY (dept_no)
);

select * from Departments;

Create Table dept_emp(
	emp_no INT NOT NULL,
	dept_no varchar Not Null,
	Foreign Key (emp_no) References Employees(emp_no),
	Foreign Key (dept_no) References Departments(dept_no)
);

select * from dept_emp;

Create Table dept_manager(
	dept_no varchar Not Null,
	emp_no INT NOT NULL,
	Primary Key (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_manager;

Create Table salaries(
	emp_no INT NOT NULL,
	salary money Not Null,
	Foreign Key (emp_no) References Employees(emp_no)
);
select * from salaries;

Create Table titles(
	title_id varchar Not Null,
	title varchar Not Null,
	Primary Key (title_id)
);
select * from titles;

Alter Table Employees Add Constraint fk_Employees_emp_title_id Foreign Key(emp_title_id)
References titles (title_id)

Alter Table Salaries Add Constraint fk_Employees_emp_no Primary Key (emp_no)

Alter Table dept_emp Add Constraint fk_dept_emp_emp_no Primary Key (emp_no)