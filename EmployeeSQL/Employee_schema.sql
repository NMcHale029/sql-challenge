-- DROP TABLE dept_emp;
-- DROP TABLE dept_manager;
-- DROP TABLE salaries;
-- DROP TABLE titles;
-- DROP TABLE employees;
-- DROP TABLE departments;

CREATE TABLE "titles" (
    "title_id" VARCHAR(30) PRIMARY KEY NOT NULL,
    "title" VARCHAR(30) NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" int PRIMARY KEY NOT NULL,
    "emp_title_id" VARCHAR(30) NOT NULL,
    "birth_date" date NOT NULL,
    "first_name" VARCHAR(30)  NOT NULL,
    "last_name" VARCHAR(30) NOT NULL,
    "sex" VARCHAR(30) NOT NULL,
    "hire_date" date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR(30)PRIMARY KEY NOT NULL,
    "dept_name" VARCHAR(30) NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" int NOT NULL,
    "dept_no" VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(30) NOT NULL,
    "emp_no" int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE "salaries" (
    "emp_no" int NOT NULL,
    "salary" int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;