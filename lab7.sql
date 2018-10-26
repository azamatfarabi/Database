CREATE DATABASE lab6;

CREATE TABLE locations (
  location_id SERIAL PRIMARY KEY,
  street_address VARCHAR(25),
  postal_code VARCHAR(12),
  city VARCHAR(30),
  state_province VARCHAR(12)
);

CREATE TABLE departments (
  department_id SERIAL PRIMARY KEY,
  department_name VARCHAR(50) UNIQUE,
  budget INTEGER,
  location_id INTEGER REFERENCES locations
);

CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  phone_number VARCHAR(20),
  salary INTEGER,
  manager_id INTEGER REFERENCES employees,
  department_id INTEGER REFERENCES departments
);

CREATE TABLE job_grades (
  grade CHAR(1),
  lowest_salary INTEGER,
  highest_salary INTEGER
);

SELECT e.last_name , e.first_name, e.department_id, l.city, l.state_province

FROM employees AS e JOIN departments AS d ON d.department_id = e.department_id JOIN locations l ON (e.last_name LIKE '%b%');

SELECT d.department_name, l.city, l.state_province FROM departments AS d LEFT JOIN locations AS l USING(location_id);

SELECT e1.first_name,e2.first_name FROM employees AS e1 FULL OUTER JOIN employees e2 ON e1.employee_id = e2.manager_id;

SELECT j.grade, avg(e.salary) FROM employees AS e INNER JOIN departments USING(department_id) INNER JOIN job_grades AS j ON(grade);

SELECT e.first_name, e.last_name FROM employees AS e JOIN departments USING (department_id) JOIN locations USING (location_id) WHERE city = 'London';