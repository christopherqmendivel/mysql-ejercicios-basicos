/*
16. Obtener listado de clientes atendidos por el vendedor 'David Lopez'
*/

 SELECT vendedor_id, v.nombre FROM clientes cl
        INNER JOIN vendedores v ON cl.vendedor_id = v.grupo_id
        WHERE v.nombre = 'David Lopez';


SELECT * FROM clientes WHERE vendedor_id IN
    (SELECT id FROM vendedores WHERE nombre = 'David' AND apellidos = 'Lopez');