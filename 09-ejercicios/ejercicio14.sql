/*
14. Visualizar las unidades totales vendidas de cada coche a cada cliente.
Mostrando el nombre del producto, número de cliente y la suma de unidades.
*/

SELECT co.modelo AS 'COCHE', cl.nombre AS 'CLIENTE', SUM(e.cantidad) AS 'UNIDADES'
        FROM encargos e
        INNER JOIN coches co ON e.coche_id = co.id
        INNER JOIN clientes cl ON e.cliente_id = cl.id
        GROUP BY e.coche_id, e.cliente_id;
