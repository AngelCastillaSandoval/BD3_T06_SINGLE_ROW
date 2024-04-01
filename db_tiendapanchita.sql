--Ejemplo 01
--mostrar los correos en minusculas
SELECT LOWER(email)FROM client;

--Ejemplo 02
--mostrar los nombres en mayusculas
SELECT UPPER(names)FROM client;

--Ejemplo 03
--mostrar los apellidos en el cual el primer caracter es en mayuscula
SELECT initcap(last_name)FROM client;

--Ejempli 04
-- Concatena el nombre y el apellido
SELECT CONCAT(names,last_name) AS "NOMBRE Y APELLIDO" FROM client

--Ejemplo 05
-- me muestra los nombres con 3 caracteres
SELECT SUBSTR(names,1,3) FROM client;

--Ejemplo 06
--muestra la cantidad que hay en el campo
SELECT names,LENGTH(names)AS "caracteres" FROM client;

--Ejemplo 07
--rellena la cantidad con caracter (*) hasta que tenga en si 10 caracteres
SELECT LPAD(names, 10,'*') FROM client;

--Ejemplo 08
--reemplaza las que tienen a por i
SELECT REPLACE(names, 'a', 'i') FROM client

--Ejemplo 09
--Redondea los precios 
SELECT price_purchase,ROUND(price_purchase,1 as "REDONDEO")FROM product;

--Ejemplo 10
-- te da su edad en meses
SELECT id, names, last_name, birthdate,
       MONTHS_BETWEEN(SYSDATE, birthdate) AS age_in_months
FROM client;

--Ejemplo 11
-- Agrega 6 meses a la fecha de vencimiento
SELECT id, name, date_expiry, ADD_MONTHS(date_expiry, 6) AS new_expiry_date
FROM product;

--Ejemplo 12
--muestra su fecha de nacimiento y su ultimo dia del mes de su fecha de nacimiento
SELECT id, names, last_name, birthdate, LAST_DAY(birthdate) AS last_day_of_month
FROM client;


