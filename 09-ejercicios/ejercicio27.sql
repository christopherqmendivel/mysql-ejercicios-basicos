/*
27. Visualizar los nombres de los clientes y la cantidad de encargos realizados,
incluyendos los que no hayan realizado encargos.
*/

INSERT INTO clientes VALUES(NULL, 1, 'Tiendad Organica Inc', 'Murcia', 0, CURDATE());


SELECT cl.nombre, COUNT(e.id) AS 'ENCARGOS' FROM clientes cl
    LEFT JOIN encargos e ON cl.id = e.cliente_id
    GROUP BY 1;