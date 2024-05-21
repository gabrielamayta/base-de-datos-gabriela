--3) Buscar la lista de todas las personas
-- que NO están asociadas al gimnasio Get-Fit-Now

SELECT p.name, membership_start_date FROM person p 
LEFT JOIN get_fit_now_member g on p.id = g.person_id
WHERE person_id is NULL