--Listar el nombre de todos los empleados junto al nombre de departamento que pertenece, 
--el estado o provincia, su sueldo y el nombre de su manager, ordenarlo por sueldo
SELECT e.first_name, e.salary, e.manager_id, f.first_name as, FROM employees e
JOIN employees f on e.employee_id = f.manager_id
JOIN departments d on d.department_id = e.department_id 
JOIN locations l on l.location_id = d.location_id
ORDER by e.salary ASC
(terminarrr)
--reducir el salario mínimo y máximo de cada trabajo un 25%.

--Eliminar aquellos trabajadores que cobren sobre el salario máximo de su tipo de trabajo.
