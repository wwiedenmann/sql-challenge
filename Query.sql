#1. List the following details of each employee: employee number, last name, first name, gender, and salary.

Select E.emp_no, 
		E.last_name, 
		E.first_name, 
		E.gender,
		S.salary
		
From "Employees" as E
	Join "Salaries" as S on S.emp_no = E.emp_no
	
#2. List employees who were hired in 1986.

Select *

From "Employees" 
Where 
hire_date between '1986-01-01' and '1986-01-31';

#3. List the manager of each department with the following information: department number, department name, the managers employee number, last name, first name, and start and end employment dates.

Select DM.dept_no, 
		D.dept_name,
		DM.emp_no,
		E.last_name,
		E.first_name,
		DM.from_date,
		DM.to_date

From "Dept_manager" DM
	Join "Employees" E on DM.emp_no = E.emp_no
	Join "Departments" D on DM.dept_no = D.dept_no


#4. List the department of each employee with the following information: employee number, last name, first name, and department name.
Select E.emp_no,
		E.last_name,
		E.first_name,
		D.dept_name

From "Employees" E
	Join "Dept_empt" DE on E.emp_no = DE.emp_no
	Join "Departments" D on D.dept_no = DE.dept_no;

#5. List all employees whose first name is "Hercules" and last names begin with "B."

Select *

From "Employees" E
Where E.first_name = 'Hercules' 
	and E.last_name like 'B%'

#6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select E.emp_no,	
		E.last_name,
		E.first_name,
		D.dept_name
		
From "Employees" E
	Join "Dept_empt" DE on E.emp_no = DE.emp_no
	Join "Departments" D on D.dept_no = DE.dept_no

Where D.dept_name ='Sales'

#7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select E.emp_no,	
		E.last_name,
		E.first_name,
		D.dept_name
		
From "Employees" E
	Join "Dept_empt" DE on E.emp_no = DE.emp_no
	Join "Departments" D on D.dept_no = DE.dept_no

Where D.dept_name ='Sales' or D.dept_name ='Development'

#8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select E.last_name,
		count(E.last_name) 

From "Employees" E

Group By E.last_name
Order By count(E.last_name)  desc

