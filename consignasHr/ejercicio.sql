--Agregar dos regiones: África Middle east
INSERT INTO regions (region_name)
VALUES ("Africa"),
	   ("Middle East"); 

--Modificar / pasar los países de la actual region “Middle east and africa” a las nuevas regiones--
UPDATE countries 
SET region_id = 6
WHERE country_name = "Israel" or country_name = "Kuwait"


UPDATE countries 
SET region_id = 5
WHERE region_id = 4


--Una vez que la región “Middle east and africa” este vacía borrar la región.

DELETE FROM regions
WHERE region_id = 4

--Agregar dos países más a cada una de las nuevas regiones.
INSERT INTO countries(country_id, country_name, region_id)
VALUES ("CT", "Catar", 5),
		("AM", "Armenia", 5);



INSERT INTO countries(country_id, country_name, region_id)
VALUES ("BN", "Benin", 6),
		("CM", "Camerún", 6);



--Volver a crear la región “Middle east and africa” 

INSERT INTO regions (region_name)
VALUES ("Middle East y Africa");


--Utilizando IN y subquery pasar los países que se encuentran en la región Africa y Middle East 
--(5 y 6) a la nueva región 

UPDATE countries 
SET region_id = 7
WHERE country_name in(
SELECT country_name  FROM countries
WHERE region_id = 5 or region_id = 6);




