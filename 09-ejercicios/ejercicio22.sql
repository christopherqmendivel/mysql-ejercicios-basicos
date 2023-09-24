/*
22. Mostrar listado de clientes (numero de cliente y el nombre)
mostrar tambien el numero de vendedor y su nombre.
*/


SELECT cl.id, cl.nombre, v.id AS 'ID Vendedor', CONCAT(v.nombre, v.apellidos) AS 'NOMBRE VENDEDOR' FROM clientes cl
    INNER JOIN vendedores v ON cl.vendedor_id = v.id;