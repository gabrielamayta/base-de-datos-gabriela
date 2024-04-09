Mostrar nombre y apellido y sueldo de todos los empleados y empleadas que ganen menos de 6.000 (seis mil) dólares.
SELECT first_name, last_name, salary FROM employees
WHERE salary < 6000

Mostrar nombre, apellido, departamente, ciudad y estado/provincia de cada empleado/a.
SELECT first_name, last_name,l.state_province, l.city FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id

Mostrar el nombre de todos los empleados junto con el nombre de su jefe (manager), ordenados por el nombre del jefe.
SELECT e.first_name, m.first_name AS empleado FROM employees e JOIN employees m ON e.employee_id = m.manager_id
ORDER BY m.first_name DESC

Mostrar el nombre y apellido de los empleados, junto al nombre de sus hijos, ordenados alfabéticamente.
