create table titles (
	title_id VARCHAR(5) PRIMARY KEY, 
	title VARCHAR (20)
);

create table employees (
	emp_no INT PRIMARY KEY,
	emp_title_id varchar(5),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id), 
	birth_date DATE,
	first_Name VARCHAR(20) NOT NULL, 
	last_name VARCHAR (30) NOT NULL, 
	sex VARCHAR(1) NOT NULL, 
	hire_date DATE	
);

create table departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

create table dept_emp (
	emp_no INT,
	dept_no varchar(4),
	PRIMARY KEY(emp_no, dept_no),	
	FOREIGN KEY (emp_no) 	 REFERENCES employees (emp_no), 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)  
);

create table dept_manager (
	dept_no VARCHAR(4),
	emp_no INT,
	PRIMARY KEY(dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),  
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) 
);

create table salaries (
	emp_no INT,
	salary INT,
	PRIMARY KEY(emp_no, salary),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);