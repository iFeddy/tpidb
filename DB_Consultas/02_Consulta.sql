SELECT
	recorridos.rNombre AS Recorrido,
	paradas.pCalle_1 AS Calle,
	paradas.pCalle_2 AS Calle,
	localidades.locNombre AS Localidad
FROM
	recorridos
INNER JOIN paradas ON paradas.pRuta = recorridos.rRuta
INNER JOIN localidades ON paradas.pLocalidad = localidades.locID
ORDER BY
	Recorrido ASC