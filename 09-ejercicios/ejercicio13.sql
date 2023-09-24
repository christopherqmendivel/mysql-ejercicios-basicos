/*
13. Sacar la media de sueldos entre todos los vendedores por grupo
*/

 SELECT ROUND(AVG(v.sueldo), 2) AS 'MEDIA SALARIAL', g.nombre, g.ciudad from vendedores v
    INNER JOIN grupos g ON g.id = v.grupo_id
    GROUP BY grupo_id;