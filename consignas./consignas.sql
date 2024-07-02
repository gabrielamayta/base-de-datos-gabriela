1--Nos informa que la empresa dejará de prestar operaciones en Canadá, por lo que nos solicitan 
--que eliminemos todos los empleados,departamentos y locaciones pertenecientes a Canadá 
--junto con el país.


2--Nos solicitan un listado que contenga nombre, apellido, departamento y país de 
--todos los elementos que trabajan en United Kingdom.

SELECT e.first_name, e.last_name, d.department_name, c.country_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_name = 'United Kingdom';


--Eliminar todos los trabajos que no posean empleados asociados, la query tiene que tener la capacidad de eliminar los jobs que no posean empleados de una sola ejecución sin indicar de
--manera manual el número de jobs_id a eliminar.

DELETE FROM jobs
WHERE job_id NOT IN (
    SELECT DISTINCT job_id
    FROM employees
);


--Calcular la cantidad de personas, el sueldo promedio, mínimo y máximo de todos los puestos laborales (job_title),
-- descartando aquellos que tengan un sólo empleado.
SELECT j.job_title,
       COUNT(e.employee_id) AS employee_count,
       AVG(e.salary) AS average_salary,
       MIN(e.salary) AS minimum_salary,
       MAX(e.salary) AS maximum_salary
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
GROUP BY j.job_title
HAVING COUNT(e.employee_id) > 1;
