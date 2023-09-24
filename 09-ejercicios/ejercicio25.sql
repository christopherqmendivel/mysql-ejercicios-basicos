/*
25. Obtener una lista de los nombres de los clientes con el importe
de sus encargos acumulado
*/


SELECT cl.nombre, SUM(e.cantidad*co.precio) AS 'IMPORTE' FROM clientes cl
    INNER JOIN encargos e ON cl.id = e.cliente_id
    INNER JOIN coches co ON co.id = e.coche_id
    GROUP BY cl.nombre
    ORDER BY 2 ASC;