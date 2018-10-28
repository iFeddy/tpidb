INSERT INTO planillaviajes (
	pvParadas,
	pvCliente,
	pvTipoBoleto,
	pvClienteDNI,
	pvRecorrido,
	pvFecha
) SELECT
	CONCAT(
		paradas.pCalle_1,
		", ",
		paradas.pCalle_2
	) AS pvParadas,
	CONCAT(
		clientes.uNombre,
		" ",
		clientes.uApellido
	) AS pvCliente,

IF (
	clientesabonados.caID IS NULL,
	'-',
	boletos.bNombre
) AS Abono,
 clientes.uDNI AS pvClienteDNI,
 recorridos.rNombre AS pvRecorrido,
 CURDATE() AS pvFecha
FROM
	clientes
LEFT JOIN clientesabonados ON clientesabonados.caCliente = clientes.uID
LEFT JOIN boletos ON clientesabonados.caTipoBoleto = boletos.bID
INNER JOIN paradas ON clientes.uParada = paradas.pID
INNER JOIN recorridos ON paradas.pRuta = recorridos.rRuta
WHERE
	clientesabonados.caFechaExpiracion > CURDATE()
ORDER BY
	pvCliente ASC