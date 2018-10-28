SELECT
	CONCAT(
		choferes.cNombre,
		" ",
		choferes.cApellido
	) AS Chofer,
	Avg(
		registroscombustible.rcLitros
	) AS Promedio,
	CONCAT(
		"$ ",
		Sum(
			registroscombustible.rcTotal
		)
	) AS Total
FROM
	registroscombustible
INNER JOIN choferes ON registroscombustible.rcChofer = choferes.cID
WHERE
	registroscombustible.rcFechaCarga <= '2018-10-30'
GROUP BY
	registroscombustible.rcChofer