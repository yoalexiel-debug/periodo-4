/**consultas de la base de datos**/
/** relacion empleado, encargado de sucursal**/
SELECT
    e.id_empleado,
    e.nombre AS empleado,
    s.[nombre sucursal] AS sucursal,
    s.encargado AS encargado_sucursal
FROM empleado e
INNER JOIN sucursales s
    ON e.id_sucursal = s.id_sucursal;


/** consulta empleado = cuidad ***/
SELECT
    e.id_empleado,
    e.nombre AS empleado,
    s.ciudad AS ciudad_sucursal
FROM empleado e
INNER JOIN sucursales s
    ON e.id_sucursal = s.id_sucursal;


/**Seleccionar los clientes del año 2021 en base a la fecha de la factura**/
select * from cliente

SELECT f.id_factura, f.fecha, d.id_producto, d.cantidad
FROM factura f
INNER JOIN detalle d
    ON f.id_detalle = d.id_detalle;

SELECT
c.id_cliente,
c.nombre AS cliente,
f.id_factura,
f.fecha
FROM factura f
INNER JOIN cliente c
   ON f.id_cliente = c.id_cliente
WHERE YEAR(f.fecha) = 2021;

/**Seleccionar los clientes de 2022 (hasta el momento) en base a la fecha de la factura**/
SELECT
c.id_cliente,
c.nombre AS cliente,
f.id_factura,
f.fecha
FROM factura f
INNER JOIN cliente c
   ON f.id_cliente = c.id_cliente
WHERE YEAR(f.fecha) = 2022;

/**Seleccionar los clientes de diciembre del 2021**/
select * from factura
SELECT
    c.id_cliente,
    c.nombre AS cliente,
    f.id_factura,
    f.fecha
FROM factura f
INNER JOIN cliente c
   ON f.id_cliente = c.id_cliente
WHERE YEAR(f.fecha) = 2021
  AND MONTH(f.fecha) = 12;

/** las compras que han realizado los siguientes clientes
-	Valentina Anastasia Huerta Corral
-	Zayra Manuela Gómez López
-	Dante Eduardo Dolores Meza
-	Ana Maribel Cedillo Núñez 
-	Rodrigo Ismael Silva Ugarte **/
select *from cliente

ALTER TABLE cliente
ALTER COLUMN nombre VARCHAR(200);

ALTER TABLE cliente
ALTER COLUMN apellido VARCHAR(200);

SELECT
    c.nombre,
    c.apellido,
    f.id_factura,
    f.fecha
FROM factura f
INNER JOIN cliente c
    ON f.id_cliente = c.id_cliente
WHERE (c.nombre = 'Valentina Anastasia' AND c.apellido = 'Huerta Corral')
   OR (c.nombre = 'Zayra Manuela' AND c.apellido = 'Gómez López')
   OR (c.nombre = 'Dante Eduardo' AND c.apellido = 'Dolores Meza')
   OR (c.nombre = 'Ana Maribel' AND c.apellido = 'Cedillo Núñez')
   OR (c.nombre = 'Rodrigo Ismael' AND c.apellido = 'Silva Ugarte');

/** Cosultar el producto que más ventas ha tenido**/
SELECT TOP 10 * FROM producto;

/**la orden para saber qué producto tienen más cantidad en stock**/
SELECT TOP 10
    p.id_producto,
    p.nombre,
    p.stock
FROM producto p
ORDER BY p.stock DESC;

/**Ordenar, de la más antigua a la más reciente, las compras que ha habido en la tienda**/
select * from factura
order by fecha asc;

/**Ordenar alfabéticamente los nombres de todos los clientes de la tienda.**/
select * from cliente
order by nombre asc;

/**Seleccionar cuáles productos pertenecen a cada categoría: 
-	Falda 
-	Pantalón 
-	Chamarra
-	Zapatos 
-	Accesorios**/

SELECT *
FROM categoria;

SELECT
c.nombre,
p.nombre
FROM categoria c
INNER JOIN producto p
ON c.id_categoria = p.id_categoria
WHERE c.id_categoria IN (2,3,6,7,10);

/** Seleccionar los encargados de las sucursales de la tienda Akira’s Boutique**/
select * from sucursales

select 
encargado
from sucursales


/**Seleccionar los empleados que trabajan en la sucursal de Akira’s Boutique: Constitución **/
select id_sucursal, [nombre sucursal]
from sucursales

select e.id_empleado,
e.nombre ,
s.[nombre sucursal]
from empleado e
inner join sucursales s
on e.id_sucursal = s.id_sucursal
where s.id_sucursal = 6;

/**clientes mayores de 30 años**/
SELECT
nombre,
fec_nac,
DATEDIFF(YEAR, fec_nac, GETDATE()) AS edad
FROM cliente
WHERE DATEDIFF(YEAR, fec_nac, GETDATE()) > 30;



