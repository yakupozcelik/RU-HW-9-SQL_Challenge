SELECT employees.emp_no, 
		employees.last_name,
		employees.first_name,
		employees.gender,
		salaries.salary
FROM employees as employees
	LEFT JOIN salaries as salaries
	ON (employees.emp_no = salaries.emp_no)
ORDER BY employees.emp_no;
		


SELECT emp_no, first_name, last_name, hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT departments.dept_no, 
departments.dept_name, 
dept_managers.emp_no, 
employees.last_name,
employees.first_name,
dept_managers.from_date,
dept_managers.to_date
FROM dept_manager as dept_managers
	INNER JOIN departments as departments
		ON (dept_managers.dept_no = departments.dept_no)
	INNER JOIN employees as employees 
	 	ON (dept_managers.emp_no = employees.emp_no)
ORDER BY employees.emp_no;


SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
FROM employees as emp
	INNER JOIN dept_emp as demp
		ON (emp.emp_no = demp.emp_no)
	INNER JOIN departments as d
		ON (demp.dept_no = d.dept_no)
ORDER BY emp.emp_no;



SELECT * 
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';



SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
FROM employees as emp
	INNER JOIN dept_emp as demp
		ON (emp.emp_no = demp.emp_no)
	INNER JOIN departments as d
		ON (demp.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY emp.emp_no;


SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
FROM employees as emp
	INNER JOIN dept_emp as demp
		ON (emp.emp_no = demp.emp_no)
	INNER JOIN departments as d
		ON (demp.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY emp.emp_no;


SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
