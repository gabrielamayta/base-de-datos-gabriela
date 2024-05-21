
-- 5) Encontrar la edad mínima, máxima y promedio
-- de los varones que tienen licencia de conducir

SELECT min(age) as minima_edad, max(age) as maxima_edad, avg(age) as promedio_edad, gender from drivers_license
WHERE gender = 'male'