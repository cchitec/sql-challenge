--1
select 
employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex, salaries.salary 
from employees 
inner join salaries ON employees.emp_no = salaries.emp_no;

--2
select 
first_name, 
last_name, 
hire_date 
from employees 
where hire_date between '1/1/1986' and '12/31/1986';

--3
select 
dept_manager.dept_no, 
dept_manager.emp_no, 
departments.dept_name, 
employees.last_name, employees.first_name 
from dept_manager inner join employees on dept_manager.emp_no=employees.emp_no
inner join departments on departments.dept_no=dept_manager.dept_no;

--4
select 
employees.emp_no, 
employees.last_name, 
employees.first_name, 
departments.dept_name 
from employees 
inner join dept_emp on dept_emp.emp_no=employees.emp_no
inner join departments on departments.dept_no=dept_emp.dept_no;

--5
select 
first_name, 
last_name, 
sex 
from employees where first_name='Hercules' and last_name like 'B%';

--6
select 
employees.emp_no, 
employees.last_name, 
employees.first_name, 
departments.dept_name 
from employees
inner join dept_emp on dept_emp.emp_no=employees.emp_no
inner join departments on departments.dept_no=dept_emp.dept_no
where departments.dept_name='Sales';

--7
select 
employees.emp_no, 
employees.last_name, 
employees.first_name, 
departments.dept_name 
from employees
inner join dept_emp on dept_emp.emp_no=employees.emp_no
inner join departments on departments.dept_no=dept_emp.dept_no
where departments.dept_name='Sales' OR departments.dept_name='Development';

--8
select
last_name,
COUNT(*) AS employees
from employees
group BY last_name
order by employees DESC