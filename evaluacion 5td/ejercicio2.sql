-- 2) Listar el nombre de la persona y los 
-- datos del auto (marca, modelo y patente) de 
-- todos las mujeres de menos de 40 años, 
-- elegir el orden en que se muestran 

SELECT car_make, car_model, plate_number,p.name, age, gender FROM drivers_license d
JOIN person p on d.id = p.license_id 
WHERE age < 40 AND gender = "female"
ORDER BY age DESC
