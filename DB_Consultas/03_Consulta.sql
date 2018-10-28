SELECT
	planillamantenimiento.pmID AS MantenimientoNro,
	minibuses.mbMarca AS Minibus,
	planillamantenimiento.pmDominio AS Patente,
	talleres.tRazonSocial AS Taller,
	planillamantenimiento.pmDescripcion AS Descripcion,
	CONCAT(
		"$ ",
		planillamantenimiento.pmTotal
	) AS Total,
	planillamantenimiento.pmFecha AS Fecha
FROM
	planillamantenimiento
INNER JOIN talleres ON planillamantenimiento.pmTaller = talleres.tID
INNER JOIN minibuses ON planillamantenimiento.pmDominio = minibuses.mbDominio
WHERE
	pmFecha BETWEEN "2018-10-01"
AND "2018-10-30"
ORDER BY
	tRazonSocial,
	pmFecha ASC