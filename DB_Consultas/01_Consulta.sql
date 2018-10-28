SELECT
	clientes.uNombre AS Nombre,
	clientes.uApellido AS Apellido,
	clientes.uDNI AS DNI,
	clientesdomicilio.cldomCalle AS Calle,
	clientesdomicilio.cldomNumero AS Numero,
	localidades.locNombre AS Localidad,
	provincias.provNombre AS Provincia,
IF (
	clientesabonados.caID IS NULL,
	'-',
	boletos.bNombre
) AS Abono
FROM
	clientes
LEFT JOIN clientesabonados ON clientesabonados.caID = clientes.uID
LEFT JOIN boletos ON clientesabonados.caTipoBoleto = boletos.bID
INNER JOIN clientesdomicilio ON clientes.uDomicilio = clientesdomicilio.cldomID
INNER JOIN localidades ON clientesdomicilio.cdomLocalidad = localidades.locID
INNER JOIN provincias ON localidades.locProvincia = provincias.provID
ORDER BY
	clientes.uID ASC