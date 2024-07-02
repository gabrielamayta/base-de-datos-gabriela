1--Se necesita saber cuántos empleados hay en cada departamento y cuanto gasta en salarios cada uno, 
--para esto nos solicita que creemos un listado de tres columnas donde indiquemos el nombre
--del departamento, la cantidad de empleados y el gasto total en sueldos de empleados por departamento.

1- SELECT e.first_name, d.department_name,
COUNT (e.employee_id) AS empleados,
SUM (e.salary) AS max_salary FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY e.first_name;

2-- Nos solicita un listado que contenga nombre, apellido, departamento y pais de 
--todos los empleados que trabajan en Estados Unidos. 

2- SELECT e.first_name, e.last_name, e.department_id, c.country_name FROM employees e
JOIN countries c on c.country_id = c.country_id
WHERE c.country_name = ("United States of America")

3--El encargado del departamento de ventas nos informó que detecto que hay algunos empleados que 
--no poseen un número de teléfono cargado, nos solicitó que le pasemos la lista de aquellos 
--empleados que no tienen cargado un número de teléfono, esta lista debe estar confeccionada por id 
--de empleado, nombre, apellido, correo electrónico, número de teléfono y id de departamento. 
--Y que por favor le carguemos momentáneamente el numero de la empresa (111.222.3344) para evitar 
--tener valores null en esos campos 

3- UPDATE employees
SET phone_number = ("111.222.33.44")
WHERE phone_number is NULL

SELECT e.employee_id, e.first_name, e.last_name, e.email, e.phone_number, e.department_id FROM employees
JOIN departments d on e.department_id = d.department_id
WHERE e.phone_number is NULL


4--Debido a una politica de mejora de sueldos nos solicitan que incrementemos un 20% 
--el salario de todos los empleados que cobren 8000 o menos que trabajen de programadores o 
--empleados de compra (Purchasing Clerk).
UPDATE employees
SET salary = salary *20
WHERE salary < 8000
AND (job_id = 'Programmer' OR job_id = 'Purchasing Clerk');

