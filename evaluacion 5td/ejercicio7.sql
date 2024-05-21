-- 7) Mostrar los nombres, numeros de seguridad social
-- (ssn), id de membresía y tipo de membresía de
-- las personas que fueron al gimnasio aunque sea una
-- vez durante el 2017.  Los resultados deben estar
-- ordenados de manera que los de un mismo tipo de
-- membresía (gold, silver, etc) aparezcan todos 
-- seguidos y dentro de cada una ordenados por ssn.   

SELECT p.name, ssn, f.membership_id, g.membership_status FROM person p
JOIN get_fit_now_member g on p.id = g.person_id
JOIN get_fit_now_check_in f on g.id = f.membership_id 
WHERE check_in_date like '2017%'
GROUP by ssn
HAVING check_in_date >1
ORDER by membership_status ASC, ssn DESC