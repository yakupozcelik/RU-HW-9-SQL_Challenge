DROP TABLE IF EXISTS "employees" CASCADE; 
DROP TABLE IF EXISTS "departments" CASCADE;
DROP TABLE IF EXISTS "dept_manager" ;
DROP TABLE IF EXISTS "dept_emp" ;
DROP TABLE IF EXISTS "salaries" ;
DROP TABLE IF EXISTS "titles" ;


CREATE TABLE "employees" (
	"emp_no" INT NOT NULL,
	"birth_date" DATE NOT NULL,
	"first_name" VARCHAR NOT NULL,
	"last_name" VARCHAR NOT NULL,
	"gender"  VARCHAR NOT NULL,
	"hire_date" DATE NOT NULL,
	PRIMARY KEY ("emp_no")

);

CREATE TABLE "departments" (
	"dept_no" VARCHAR NOT NULL,
	"dept_name" VARCHAR NOT NULL,
	PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_manager"(
	"dept_no" VARCHAR NOT NULL,
	"emp_no" INT NOT NULL,
	"from_date" DATE NOT NULL,
	"to_date" DATE NOT NULL,
	FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")

);

CREATE TABLE "dept_emp" (
 	"emp_no" INT NOT NULL,
	"dept_no" VARCHAR NOT NULL,
	"from_date" DATE NOT NULL,
	"to_date" DATE NOT NULL,
    FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
	PRIMARY KEY ("emp_no", "dept_no") 
);

CREATE TABLE "salaries" (
	"emp_no" INT NOT NULL,
	"salary" INT NOT NULL,
	"from_date" DATE NOT NULL,
	"to_date" DATE NOT NULL,
	FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	PRIMARY KEY ("emp_no", "from_date") 
	
);

CREATE TABLE "titles" (
	"emp_no" INT NOT NULL,
	"title" VARCHAR NOT NULL,
	"from_date" DATE NOT NULL,
	"to_date" DATE NOT NULL,
	FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	PRIMARY KEY ("emp_no", "title", "from_date") 
);


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





