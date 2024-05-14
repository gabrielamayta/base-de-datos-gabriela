1-Mostrar los nombres de todos los departamentos de la empresa en orden alfabético. 

SELECT department_name FROM departments
ORDER by department_name ASC

2-Mostrar todos los posibles salarios ordenados de mayor a menor y sin repetir.

 SELECT salary FROM employees
ORDER by salary DESC

3-. Mostrar los puestos laborales de manager (que incluya la palabra manager)
junto con sus salarios minimos y maximos, ordenado de mayor a menor
primero por salario máximo y luego por el mínimo

SELECT min_salary, max_salary, job_title FROM jobs
WHERE job_title like "%manager"
ORDER BY max_salary DESC, min_salary DESC

4- Mostrar los nombres de todos los países con su región correspondiente. 
 Pensar cómo ordenar para que los países de una misma región queden juntos.
 
SELECT region_name, c.country_name FROM regions r
JOIN countries c ON r.region_id = c.region_id
GROUP BY r.region_name

5- Mostrar nombre, apellido, departamento y salario de los empleados/as que cobren entre 9000 y 17000,
ordenado por el criterio que quieran.

SELECT e.first_name, e.last_name, e.salary, department_name FROM departments d
JOIN employees e ON d.department_id  = e.department_id
WHERE salary BETWEEN 9000 AND 17000
ORDER BY salary ASC

6-. Mostrar la cantidad total de países que hay por región, descartando los que tengan 5 o menos.
