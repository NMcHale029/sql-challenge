# sql-challenge



### Data Modeling
Scetched ERD using [QuickDBD](https://app.quickdatabasediagrams.com/)
image saved as 'Data_Modeling_QuickDBD.png'

### Data Engineering
pgAdmin 4 was used to write script: Employee_schema.sql
6 tables were created from 6 CSV files (In data folder).
Data types, primary keys, and foreign keys were defined.
CSV files were imported to the corresponding tables.
- titles
- employees
- departments
- dept_emp
- dept_managers
- salaries

### Data Analysis
pgAdmin 4 was used to write script: Employee_queries.sql
Queries created for the following:
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
