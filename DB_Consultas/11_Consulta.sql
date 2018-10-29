SELECT
	registrosviajes.riRecorrido AS RecorridoNro,
	Sum(registrosviajes.riVentas) AS Ventas,
	CONCAT(
		"$ ",
		(
			Sum(registrosviajes.riVentas) * boletos.bTotal
		)
	) AS Total
FROM
registrosviajes ,
boletos
WHERE
	boletos.bID = 2
AND registrosviajes.riFechaInicio >= "2018-10-01"
AND registrosviajes.riFechaFinal <= "2018-10-30"
GROUP BY
	registrosviajes.riRecorrido
