/*
Navicat MySQL Data Transfer

Source Server         : LocalHost
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : tpibd

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-10-28 21:06:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Records of boletos
-- ----------------------------
BEGIN;
INSERT INTO `boletos` (`bID`, `bNombre`, `bCantViajes`, `bTotal`) VALUES ('1', 'Tarifa Plana', '0', '2500'), ('2', 'Comun', '1', '300');
COMMIT;

-- ----------------------------
-- Records of choferes
-- ----------------------------
BEGIN;
INSERT INTO `choferes` (`cID`, `cNombre`, `cApellido`, `cCuil`, `cNroLicencia`, `cFechaIngreso`) VALUES ('1', 'FEDERICO', 'FERRARESI', '20-30958054-1', '112523', '2018-10-27'), ('2', 'FERNANDO', 'CARRERO', '20-33977762-5', '218561', '2018-10-25'), ('3', 'CRISTIAN', 'MANCHADO', '20-37489661-0', '15921', '2007-10-10'), ('4', 'ELVER', 'DULERO', '30-32423423-3', '125920', '2018-10-28'), ('5', 'NATALI', 'SILVEIRA', '27-32690403-7', '19246', '2015-04-25');
COMMIT;

-- ----------------------------
-- Records of choferesdomicilio
-- ----------------------------
BEGIN;
INSERT INTO `choferesdomicilio` (`cdomID`, `cdomCalle`, `cdomNumero`, `cdomLocalidad`) VALUES ('1', 'Salta', '617', '1'), ('2', '29 de Septiembre', '2908', '5'), ('3', 'Mitre', '1132', '10'), ('4', 'Roca', '1812', '15'), ('5', 'Cordero', '1263', '20');
COMMIT;

-- ----------------------------
-- Records of clientes
-- ----------------------------
BEGIN;
INSERT INTO `clientes` (`uID`, `uNombre`, `uApellido`, `uDNI`, `uDomicilio`, `uParada`) VALUES ('1', 'NATALI', 'BARENBOIM ', '27113792', '1', '1'), ('2', 'EUGENIO', 'JAVIER ', '37197575', '2', '23'), ('3', 'FABRIZIO', 'VAZQUEZ ', '21092302', '3', '2'), ('4', 'GABRIEL ', 'OLIVERA ', '20189777', '4', '2'), ('5', 'CARLOS ', 'BARBARO ', '8557042', '5', '3'), ('6', 'BELEN ', 'VESCIGLIO ', '36816840', '6', '3'), ('7', 'ALEJANDRA ', 'COMPAGNUCCI ', '16762639', '7', '25'), ('8', 'CARINA ', 'SCHABL ', '33242635', '8', '28'), ('9', 'ROBERTO', 'BEN ', '4096101', '9', '29'), ('10', 'PATRICIO ', 'SANCHEZ ', '28423299', '10', '27'), ('11', 'FRANCISCO', 'BARENBOIM ', '4989892', '11', '25'), ('12', 'ARIEL', 'AUGSBURGER ', '38584115', '12', '15'), ('13', 'MIGUEL', 'VAZQUEZ ', '21092312', '13', '26'), ('14', 'GABRIEL ', 'LEDESMA ', '25894844', '14', '17'), ('15', 'CARLOS ', 'BARBARO ', '23822079', '15', '10'), ('16', 'BELEN ', 'SARDELLA', '36816844', '10', '1');
COMMIT;

-- ----------------------------
-- Records of clientesabonados
-- ----------------------------
BEGIN;
INSERT INTO `clientesabonados` (`caID`, `caCliente`, `caCantRecorrido`, `caTipoBoleto`, `caFechaExpiracion`) VALUES ('1', '1', '1', '2', '2018-10-30'), ('2', '2', '1', '2', '2018-10-30'), ('3', '3', '1', '2', '2018-10-30'), ('4', '4', '1', '2', '2018-10-30'), ('5', '10', '1', '2', '2018-10-30'), ('6', '11', '1', '2', '2018-10-30'), ('7', '12', '1', '2', '2018-10-30'), ('8', '13', '2', '1', '2018-10-30'), ('9', '15', '2', '1', '2018-10-30'), ('10', '8', '3', '1', '2018-10-30');
COMMIT;

-- ----------------------------
-- Records of clientesdomicilio
-- ----------------------------
BEGIN;
INSERT INTO `clientesdomicilio` (`cldomID`, `cldomCalle`, `cldomNumero`, `cdomLocalidad`) VALUES ('1', 'Av. Rivadavia', '1252', '1'), ('2', '29 de Septiembre', '3901', '1'), ('3', 'Av. Mitre', '6554', '1'), ('4', 'Freie', '152', '5'), ('5', 'Salta', '617', '4'), ('6', 'Av. Corrientes', '1266', '3'), ('7', 'Cordero', '130', '4'), ('8', 'Solier', '1215', '4'), ('9', 'Alsina', '600', '1'), ('10', 'Barrionuevo', '4981', '6'), ('11', 'Cordero', '42', '4'), ('12', 'Solier', '515', '4'), ('13', 'Alsina', '5632', '1'), ('14', 'Barrionuevo', '341', '6'), ('15', 'Cordero', '4242', '4');
COMMIT;

-- ----------------------------
-- Records of estacionesservicios
-- ----------------------------
BEGIN;
INSERT INTO `estacionesservicios` (`esID`, `esRazonSocial`, `esCUIT`, `esDomicilio`) VALUES ('1', 'SERVIRED YPF S A', '30-66191759-4', '1'), ('2', 'AXION S.A.', '30-71152105-0', '2');
COMMIT;

-- ----------------------------
-- Records of estacionesserviciosdomicilio
-- ----------------------------
BEGIN;
INSERT INTO `estacionesserviciosdomicilio` (`esdomID`, `esdomCalle`, `esdomNumero`, `esdomLocalidad`) VALUES ('1', '29 de Septiembre', '3901', '1'), ('2', 'Lima', '240', '3');
COMMIT;

-- ----------------------------
-- Records of localidades
-- ----------------------------
BEGIN;
INSERT INTO `localidades` (`locID`, `locNombre`, `locProvincia`) VALUES ('1', 'Lanus', '1'), ('2', 'Gerli', '1'), ('3', 'Ciudad Autonoma de Buenos Aires', '1'), ('4', 'Avellaneda', '1'), ('5', 'Valentin Alsina', '1'), ('6', 'Claromecó', '1'), ('7', 'Lomas de Zamora', '1'), ('8', 'La Falda', '5'), ('9', 'Cosquín', '5'), ('10', 'Monte Buey', '5'), ('11', 'Huerta Grande', '5'), ('12', 'Porteña', '5'), ('13', 'Valle Hermoso', '5'), ('14', 'Catriló', '10'), ('15', 'Ceballos', '10'), ('16', 'Falucho', '10'), ('17', 'Ingeniero Foster', '10'), ('18', 'Rancul', '10'), ('19', 'Telén', '10'), ('20', 'Quehué', '10');
COMMIT;

-- ----------------------------
-- Records of minibuses
-- ----------------------------
BEGIN;
INSERT INTO `minibuses` (`mbID`, `mbMarca`, `mbModelo`, `mbDominio`, `mbKMService`) VALUES ('1', 'Fiat', 'Ducato', 'NAN000', '100000'), ('2', 'Mercedez Benz', 'Sprinter', 'CBL289', '150000'), ('3', 'DFSK ', 'Van Furgon C-35', 'EAX101', '50000'), ('4', 'Peugeot', 'Boxer', 'AED879', '75000'), ('5', 'Shineray', 'X30', 'XXW665', '80000');
COMMIT;

-- ----------------------------
-- Records of paradas
-- ----------------------------
BEGIN;
INSERT INTO `paradas` (`pID`, `pRuta`, `pCalle_1`, `pCalle_2`, `pLocalidad`) VALUES ('1', '1', 'Av. Hipólito Yrigoyen', 'Carlos Gardel', '1'), ('2', '1', 'Av. Hipólito Yrigoyen', 'Cabildo', '1'), ('3', '1', 'Cabildo', 'Jose M. Freire', '1'), ('4', '1', 'Galicia', 'Av. Bernardino Rivadavia', '2'), ('5', '1', 'Av. Bernardino Rivadavia', 'Zepita', '2'), ('6', '1', 'Av. Bernardino Rivadavia', 'Av. Australia', '3'), ('7', '1', 'Av. Australia', 'Carrillo', '3'), ('8', '1', 'Carrillo', 'Magallanes', '3'), ('9', '1', 'Carrillo', 'Salta', '3'), ('10', '1', 'Carrillo', 'Constitucion', '3'), ('11', '2', 'Av. Hipólito Yrigoyen', 'Tucuman', '1'), ('12', '2', 'Av. Hipólito Yrigoyen', 'Cabildo', '1'), ('13', '2', 'Cabildo', 'Jose M. Freire', '1'), ('14', '2', 'Palaa', 'Maipu', '4'), ('15', '2', 'Av. Belgrano', 'Maipu', '4'), ('16', '2', 'Italia', 'San Martin', '4'), ('17', '2', 'Magallanes', '25 de Mayo', '3'), ('18', '2', '20 de Septiembre', 'Av. Almirante Brown', '3'), ('19', '2', 'Av. Paseo Colon', 'Av. Brasil', '3'), ('20', '2', 'Estados Unidos', 'Correo Central', '3'), ('21', '3', 'Av. Hipólito Yrigoyen', 'Carlos Gardel', '1'), ('22', '3', 'Av. Hipólito Yrigoyen', 'Cabildo', '1'), ('23', '3', 'Cabildo', 'Av. Remedios de Escalada', '1'), ('24', '3', 'Av. Remedios de Escalada', 'Jean Juares', '5'), ('25', '3', 'Decay', 'Av. La Plata', '3'), ('26', '3', 'Av. La Plata', 'Zelarallay', '3'), ('27', '3', 'Av. San Martin', 'Doctor Adolfo Dickman', '3'), ('28', '3', 'Av. San Martin', '12 de Octubre', '3'), ('29', '3', 'Av. San Martin', 'Gral. Rivas', '3'), ('30', '3', 'Av. San Martin', 'Baigorria', '3');
COMMIT;

-- ----------------------------
-- Records of planillamantenimiento
-- ----------------------------
BEGIN;
INSERT INTO `planillamantenimiento` (`pmID`, `pmDominio`, `pmTaller`, `pmDescripcion`, `pmKM`, `pmTotal`, `pmFecha`) VALUES ('1', 'NAN000', '2', 'Cambio de Aceite', '25200', '253.12', '2018-09-20'), ('2', 'EAX101', '2', 'Cambio de Aceite', '1500', '250.52', '2018-09-21'), ('3', 'CBL289', '1', 'Cambio de Neumaticos', '25200', '6000', '2018-09-28'), ('4', 'XXW665', '1', 'Cambio de Aceite', '25341', '280.42', '2018-09-30'), ('5', 'AED879', '2', 'Control de Rutina', '50000', '500', '2018-10-19'), ('6', 'NAN000', '2', 'Cambio de Aceite', '25200', '253.12', '2018-10-20'), ('7', 'EAX101', '2', 'Cambio de Aceite', '1500', '250.52', '2018-10-21'), ('8', 'CBL289', '1', 'Cambio de Neumaticos', '25200', '6000', '2018-10-28'), ('9', 'XXW665', '1', 'Cambio de Aceite', '25341', '280.42', '2018-10-30'), ('10', 'AED879', '2', 'Control de Rutina', '50000', '500', '2018-10-30');
COMMIT;

-- ----------------------------
-- Records of planillaviajes
-- ----------------------------
BEGIN;
INSERT INTO `planillaviajes` (`pvID`, `pvParadas`, `pvCliente`, `pvTipoBoleto`, `pvClienteDNI`, `pvRecorrido`, `pvFecha`) VALUES ('1', 'Av. Belgrano, Maipu', 'ARIEL AUGSBURGER ', 'Comun', '38584115', 'Lanus - Correo Central', '2018-10-28'), ('2', 'Av. San Martin, 12 de Octubre', 'CARINA  SCHABL ', 'Tarifa Plana', '33242635', 'Lanus - Agronomia', '2018-10-28'), ('3', 'Carrillo, Constitucion', 'CARLOS  BARBARO ', 'Tarifa Plana', '23822079', 'Lanus - Plaza Constitucion', '2018-10-28'), ('4', 'Cabildo, Av. Remedios de Escalada', 'EUGENIO JAVIER ', 'Comun', '37197575', 'Lanus - Agronomia', '2018-10-28'), ('5', 'Av. Hipólito Yrigoyen, Cabildo', 'FABRIZIO VAZQUEZ ', 'Comun', '21092302', 'Lanus - Plaza Constitucion', '2018-10-28'), ('6', 'Decay, Av. La Plata', 'FRANCISCO BARENBOIM ', 'Comun', '4989892', 'Lanus - Agronomia', '2018-10-28'), ('7', 'Av. Hipólito Yrigoyen, Cabildo', 'GABRIEL  OLIVERA ', 'Comun', '20189777', 'Lanus - Plaza Constitucion', '2018-10-28'), ('8', 'Av. La Plata, Zelarallay', 'MIGUEL VAZQUEZ ', 'Tarifa Plana', '21092312', 'Lanus - Agronomia', '2018-10-28'), ('9', 'Av. Hipólito Yrigoyen, Carlos Gardel', 'NATALI BARENBOIM ', 'Comun', '27113792', 'Lanus - Plaza Constitucion', '2018-10-28'), ('10', 'Av. San Martin, Doctor Adolfo Dickman', 'PATRICIO  SANCHEZ ', 'Comun', '28423299', 'Lanus - Agronomia', '2018-10-28'), ('16', 'Av. Belgrano, Maipu', 'ARIEL AUGSBURGER ', 'Comun', '38584115', 'Lanus - Correo Central', '2018-11-28'), ('17', 'Av. San Martin, 12 de Octubre', 'CARINA  SCHABL ', 'Tarifa Plana', '33242635', 'Lanus - Agronomia', '2018-11-28'), ('18', 'Carrillo, Constitucion', 'CARLOS  BARBARO ', 'Tarifa Plana', '23822079', 'Lanus - Plaza Constitucion', '2018-11-28'), ('19', 'Cabildo, Av. Remedios de Escalada', 'EUGENIO JAVIER ', 'Comun', '37197575', 'Lanus - Agronomia', '2018-11-28'), ('20', 'Av. Hipólito Yrigoyen, Cabildo', 'FABRIZIO VAZQUEZ ', 'Comun', '21092302', 'Lanus - Plaza Constitucion', '2018-11-28'), ('21', 'Decay, Av. La Plata', 'FRANCISCO BARENBOIM ', 'Comun', '4989892', 'Lanus - Agronomia', '2018-11-28'), ('22', 'Av. Hipólito Yrigoyen, Cabildo', 'GABRIEL  OLIVERA ', 'Comun', '20189777', 'Lanus - Plaza Constitucion', '2018-11-28'), ('23', 'Av. La Plata, Zelarallay', 'MIGUEL VAZQUEZ ', 'Tarifa Plana', '21092312', 'Lanus - Agronomia', '2018-11-28'), ('24', 'Av. Hipólito Yrigoyen, Carlos Gardel', 'NATALI BARENBOIM ', 'Comun', '27113792', 'Lanus - Plaza Constitucion', '2018-11-28'), ('25', 'Av. San Martin, Doctor Adolfo Dickman', 'PATRICIO  SANCHEZ ', 'Comun', '28423299', 'Lanus - Agronomia', '2018-11-28');
COMMIT;

-- ----------------------------
-- Records of provincias
-- ----------------------------
BEGIN;
INSERT INTO `provincias` (`provID`, `provNombre`) VALUES ('1', 'Buenos Aires'), ('2', 'Catamarca'), ('3', 'Chaco'), ('4', 'Chubut'), ('5', 'Cordoba'), ('6', 'Corrientes'), ('7', 'Entre Rios'), ('8', 'Formosa'), ('9', 'Jujuy'), ('10', 'La Pampa'), ('11', 'La Rioja'), ('12', 'Mendoza'), ('13', 'Misiones'), ('14', 'Neuquen'), ('15', 'Rio Negro'), ('16', 'Salta'), ('17', 'San Juan'), ('18', 'San Luis'), ('19', 'Santa Cruz'), ('20', 'Santa Fe'), ('21', 'Santiago del Estero'), ('22', 'Tierra del Fuego'), ('23', 'Tucuman');
COMMIT;

-- ----------------------------
-- Records of recorridos
-- ----------------------------
BEGIN;
INSERT INTO `recorridos` (`rRuta`, `rNombre`, `rDistancia`) VALUES ('1', 'Lanus - Plaza Constitucion', '10'), ('2', 'Lanus - Correo Central', '13'), ('3', 'Lanus - Agronomia', '18');
COMMIT;

-- ----------------------------
-- Records of registroscombustible
-- ----------------------------
BEGIN;
INSERT INTO `registroscombustible` (`rcID`, `rcChofer`, `rcTotal`, `rcLitros`, `rcEstacionServicio`, `rcFechaCarga`) VALUES ('1', '3', '3676', '100', '1', '2018-10-27 22:11:22'), ('2', '5', '4227.5', '115', '2', '2018-10-28 22:12:09'), ('3', '4', '4337.68', '118', '1', '2018-10-20 22:12:58'), ('4', '1', '2757', '75', '1', '2018-10-10 22:13:30'), ('5', '1', '1102.8', '30', '1', '2018-10-10 22:13:30'), ('6', '2', '4778.8', '130', '2', '2018-10-18 22:14:16'), ('7', '3', '4117.12', '112', '2', '2018-10-17 22:14:48'), ('8', '5', '3639.24', '99', '1', '2018-10-15 22:15:10'), ('9', '2', '3234.88', '88', '1', '2018-10-15 22:15:10'), ('10', '4', '4190.64', '114', '2', '2018-10-24 22:16:03');
COMMIT;

-- ----------------------------
-- Records of registrosviajes
-- ----------------------------
BEGIN;
INSERT INTO `registrosviajes` (`riID`, `riChofer`, `riCombi`, `riRecorrido`, `riKMInicial`, `riFechaInicio`, `riKMFinal`, `riVentas`, `riFechaFinal`, `riComentarios`) VALUES ('1', '3', '3', '1', '0', '2018-10-01 12:45:48', '0000000010', '29', '2018-10-01 12:45:48', 'N/A'), ('2', '1', '2', '1', '0', '2018-10-02 12:47:00', '0000000010', '34', '2018-10-02 12:47:00', 'N/A'), ('3', '2', '3', '1', '0', '2018-10-03 12:47:34', '0000000010', '34', '2018-10-03 12:47:34', 'N/A'), ('4', '2', '2', '2', '10', '2018-10-04 12:48:01', '0000000023', '21', '2018-10-04 12:48:01', 'N/A'), ('5', '4', '3', '2', '0', '2018-10-05 12:45:48', '0000000013', '23', '2018-10-05 12:45:48', 'N/A'), ('6', '2', '2', '3', '23', '2018-10-06 12:47:00', '0000000031', '28', '2018-10-06 12:47:00', 'N/A'), ('7', '5', '3', '1', '0', '2018-10-07 12:47:34', '0000000010', '19', '2018-10-07 12:47:34', 'N/A'), ('8', '1', '2', '2', '10', '2018-10-08 12:48:01', '0000000023', '25', '2018-10-08 12:48:01', 'N/A'), ('9', '3', '3', '2', '10', '2018-10-09 12:45:48', '0000000023', '34', '2018-10-09 12:45:48', 'N/A'), ('10', '2', '2', '1', '31', '2018-10-10 12:47:00', '0000000041', '19', '2018-10-10 12:47:00', 'N/A'), ('11', '4', '3', '1', '13', '2018-10-11 12:47:34', '0000000023', '24', '2018-10-11 12:47:34', 'N/A'), ('12', '1', '2', '3', '23', '2018-10-12 12:48:01', '0000000031', '35', '2018-10-12 12:48:01', 'N/A');
COMMIT;

-- ----------------------------
-- Records of rendicion
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Records of talleres
-- ----------------------------
BEGIN;
INSERT INTO `talleres` (`tID`, `tRazonSocial`, `tCUIT`, `tDomicilio`) VALUES ('1', 'EL TALLER S R L', '30-62658090-0', '1'), ('2', 'TALLER AMADEO', '20-00335258-8', '2'), ('3', 'TALLER OMAR S H', '30-70762821-5', '3');
COMMIT;

-- ----------------------------
-- Records of talleresdomicilio
-- ----------------------------
BEGIN;
INSERT INTO `talleresdomicilio` (`tdomID`, `tdomCalle`, `tdomNumero`, `tLocalidad`) VALUES ('1', 'Jujuy', '1251', '3'), ('2', 'Brasil', '100', '3'), ('3', 'Alsina', '1010', '1');
COMMIT;
