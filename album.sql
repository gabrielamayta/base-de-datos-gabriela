
1-Mostrar nombres de las canciones, compositores y milisegundos.
select name, composer, Milliseconds from tracks t
join albums a ON t.AlbumId = a.AlbumId

2-Nombre, apellido, dirección y ciudad de la tabla cliente.
select FirstName, LastName, Address, City FROM customers

3- Nombre y milisegundos donde el compositor es vacío y los milisegundos mayores a 2900000.
SELECT name, Milliseconds FROM tracks

4-Apellido, nombre y compañía, donde la misma no esté vacía.
SELECT LastName, FirstName, Company FROM customers
WHERE Company is NOT NULL

5-Mostrar una Ciudad de facturación (BillingCity) sin que se repita la misma, donde el estado de cuenta (BillingState) no es vacío, ordenar la ciudad de facturación de forma descendente.
SELECT DISTINCT BillingCity  FROM invoices WHERE BillingState Is not NULL
ORDER BY BillingCity DESC

6-Mostrar el título del álbum que contenga la palabra OF, ordenarlo de manera ascendente.
SELECT Title FROM albums WHERE Title like '%of%'
ORDER BY Title DESC

7-Mostrar nombre y género de las canciones.
SELECT t.name, g.name FROM tracks t 
JOIN genres g on t.GenreId = g.GenreId

8-Mostrar nombre y título de las canciones, ordenar el título de forma descendente.
SELECT t.name, g.Title FROM tracks t 
JOIN albums g on t.name = g.Title
ORDER BY t.name,g.Title ASC
