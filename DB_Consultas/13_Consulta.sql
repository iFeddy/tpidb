SELECT
	minibuses.mbMarca AS Marca,
	minibuses.mbModelo AS Modelo,
	minibuses.mbDominio AS Patente,
	CONCAT(
		"$ ",
		Sum(
			planillamantenimiento.pmTotal
		)
	) AS Total
FROM
	planillamantenimiento
INNER JOIN minibuses ON planillamantenimiento.pmDominio = minibuses.mbDominio
GROUP BY
	planillamantenimiento.pmDominio
ORDER BY
	Total DESC