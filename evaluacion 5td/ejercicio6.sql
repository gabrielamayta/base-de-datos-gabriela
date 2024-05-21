
-- 6) Contar la cantidad de autos de cada
-- marca, ordenadas desde la que tiene más 
-- autos a la que tiene menos.  Descartar
-- las marcas que tienen menos de 100 autos

SELECT count(car_make) as cantidad_de_autos from drivers_license 
GROUP by car_make 
HAVING cantidad_de_autos > 100 
ORDER by cantidad_de_autos DESC