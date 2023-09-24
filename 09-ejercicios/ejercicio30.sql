/*
30. Mostrar los datos del vendedor con mas antiguedad en el concesionario.
*/

SELECT * FROM vendedores ORDER BY fecha_alta ASC LIMIT 1;


# 30 plus: Obtener los coches con mas unidades vendidas.

SELECT co.modelo, e.cantidad FROM encargos e 
    LEFT JOIN coches co ON e.coche_id = co.id
    ORDER BY e.cantidad DESC LIMIT 1;

SELECT * FROM coches WHERE id IN
    (SELECT coche_id FROM encargos WHERE cantidad IN
        (SELECT MAX(cantidad) FROM encargos));