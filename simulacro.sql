1- SELECT department_name FROM departments
ORDER by department_name ASC

2- SELECT salary FROM employees
ORDER by salary DESC

3-SELECT min_salary, max_salary, job_title FROM jobs
WHERE job_title like "%manager"
ORDER BY max_salary DESC, min_salary DESC

4-SELECT region_name, c.country_name FROM regions r
JOIN countries c ON r.region_id = c.region_id
GROUP BY r.region_name

5-SELECT e.first_name, e.last_name, e.salary, department_name FROM departments d
JOIN employees e ON d.department_id  = e.department_id
WHERE salary BETWEEN 9000 AND 17000
ORDER BY salary ASC

6-