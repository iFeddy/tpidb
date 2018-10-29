SELECT
	recorridos.rNombre AS Recorrido,
	Sum(registrosviajes.riVentas) AS CantPasajeros
FROM
	registrosviajes
INNER JOIN recorridos ON registrosviajes.riRecorrido = recorridos.rRuta
WHERE
 registrosviajes.riFechaFinal <= "2018-10-30"
GROUP BY
	recorridos.rNombre
