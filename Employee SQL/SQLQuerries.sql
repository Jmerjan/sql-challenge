-- Homework Questions

--List the following details of each employee: employee number, last name, first name, sex, and salary.
Select employees.emp_no, employees.last_name, employees.first_name, employees.gender, Salaries.Salary
from Employees
inner join Salaries on
Employees.emp_no=Salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
show datestyle;

Select employees.emp_no, employees.last_name, employees.first_name,
Extract (YEAR from hire_date) as Year
from employees
where hire_date> '31/12/1985' and hire_date<'1/1/1987';

---List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
Select departments.dept_no, dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
join employees
on dept_manager.emp_no=employees.emp_no
join departments
on departments.dept_no=dept_manager.dept_no;
--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no;
join departments 
on dept_emp.dept_no=departments.dept_no;



--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select employees.last_name,employees.first_name, employees.gender,
from employees
where first_name='Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select employees.last_name,employees.first_name, employees.emp_no, dept_emp.emp_no, dept_emp.dept_no, departments.dept_no, departments.dept_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no =dept_emp.dept_no
where departments.dept_name='Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select employees.last_name,employees.first_name, employees.emp_no, dept_emp.emp_no, dept_emp.dept_no, departments.dept_no, departments.dept_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no =dept_emp.dept_no
where departments.dept_name='Sales' or departments.dept_name='Development';


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select employees.last_name, Count(last_name)
From employees
Group By last_name
Order By Count(last_name) Desc;



