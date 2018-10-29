SELECT
	registrosviajes.riChofer AS ChoferNro,
	CONCAT(
		choferes.cNombre,
		choferes.cApellido
	) AS Chofer,
	SUM(
		(
			registrosviajes.riKMFinal - riKMInicial
		)
	) AS Total
FROM
	registrosviajes
INNER JOIN choferes ON registrosviajes.riChofer = choferes.cID
WHERE
	registrosviajes.riFechaFinal <= "2018-10-30"
GROUP BY
	ChoferNro