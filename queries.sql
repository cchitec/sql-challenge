select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary from employees inner join salaries ON employees.emp_no=salaries.emp_no;

select first_name, last_name, hire_date from employees where hire_date between '1/1/1986' and '12/31/1986';

select dept_manager.dept_no, 
dept_manager.emp_no, 
departments.dept_name, 
employees.last_name, employees.first_name 
from dept_manager inner join employees on dept_manager.emp_no=employees.emp_no
inner join departments on departments.dept_no=dept_manager.dept_no;

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees 
inner join dept_emp on dept_emp.emp_no=employees.emp_no
inner join departments on departments.dept_no=dept_emp.dept_no;

select first_name, last_name, sex from employees where first_name='Hercules' and last_name like 'B%';

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees
inner join dept_emp on dept_emp.emp_no=employees.emp_no
inner join departments on departments.dept_no=dept_emp.dept_no
where departments.dept_name='Sales';

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees
inner join dept_emp on dept_emp.emp_no=employees.emp_no
inner join departments on departments.dept_no=dept_emp.dept_no
where departments.dept_name='Sales' OR departments.dept_name='Development';

select last_name, count(last_name) as cdln from employees group by last_name order by cdln desc;