1--Se necesita saber cuántos empleados hay en cada tipo de trabajo y cuanto se gasta en salarios,
 --para esto nos solicita que creemos un listado de tres columnas donde indiquemos el nombre del tipo 
--de trabajador, la cantidad de empleados y el gasto total en sueldos de empleados por tipo de trabajo
--y necesita tenerla ordenada por cantidad de empleados.

SELECT j.job_title,
COUNT(e.employee_id) AS employee_count,
SUM(e.salary) AS total_salary
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY employee_count DESC;

2--Nos solicitan un listado que contenga nombre, apellido, departamento y país de todos los elementos
-- que trabajan en United Kingdom.

SELECT e.first_name, e.last_name, d.department_name, j.job_title, l.city FROM employees e
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;


3--Debido a una política de mejora de sueldos nos solicitan que incrementemos un 55% el salario 
--de todos los empleados que cobren menos de 7500 y pertenezcan al departamento de IT o Financiero 
--(finance)

UPDATE employees
SET salary = salary * 1.55
WHERE salary < 7500
  AND department_id IN (
      SELECT department_id
      FROM departments
      WHERE department_name IN ('IT', 'Finance')
  );


4--Nos informa que la empresa dejará de prestar operaciones en Canada, por lo que nos solicitan que 
--eliminemos todos los empleados, departamentos y locaciones
 --pertenecientes a Canada junto con el país.

 DELETE FROM employees 
WHERE department_id IN (
    SELECT department_id 
    FROM departments 
    WHERE location_id IN (
        SELECT location_id 
        FROM locations 
        WHERE country_id = 'CA'
    )
);

DELETE FROM departments 
WHERE location_id IN (
    SELECT location_id 
    FROM locations 
    WHERE country_id = 'CA'
);

DELETE FROM locations 
WHERE country_id = 'CA';

DELETE FROM countries 
WHERE country_id = 'CA';

COMMIT;


5--Nos solicitan actualizar el número de teléfono de los gerentes de ventas que no tengan un numero 
--de telefono asociado, se debe registrar el numero ‘333.444.555’

UPDATE employees
SET phone_number = ("333.444.555")
WHERE phone_number is NULL

6--Nos informan de la creación de un nuevo departamento dentro de la empresa que tendrá el nombre 
--consultants, este está en la locación ubicada en ‘2004 Charade Rd’ de Seattle y un nuevo tipo de 
--trabajo de nombre ‘consultant’. adicionalmente nos envió la información de estos 3 consultores que 
--deben cargarse perteneciendo a este nuevo departamento y tipo de trabajo:

INSERT INTO departments(department_id,department_name,location_id)
VALUES (12,"consultants",1700);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES (20, 'Consultant', '7500.0', '16000.0');

INSERT INTO employees(first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
VALUES('Raul', 'Lopez', 'rlopez@gmail.com', '333.445.556', '2024-07-1', 20, 5000, 105, 12),
    ('Andres', 'Gonzales', 'agonzales@gmail.com', '333.445.556', '2024-07-1', 20, 6000, 106, 12),
    ('Laura', 'Fernandez', 'lfernandez@gmail.com', '333.445.556', '2024-07-1', 20, 7500, 107, 12)