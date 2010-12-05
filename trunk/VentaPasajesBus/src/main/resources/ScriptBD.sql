DROP DATABASE bus;
CREATE DATABASE IF NOT EXISTS bus;
USE bus;

CREATE TABLE `bus`.`empresatransporte` (
  `Co_EmpresaTransporte` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `No_EmpresaTransporte` CHAR(60) NOT NULL,
  PRIMARY KEY (`Co_EmpresaTransporte`)
)
ENGINE = InnoDB;


CREATE TABLE `bus`.`cliente` (
  `Co_DNI` CHAR(8) NOT NULL,
  `No_Cliente` CHAR(60) NOT NULL,
  `No_Direccion` CHAR(60) NOT NULL,
  `Nu_Telefono` TEXT NOT NULL,
  `No_Email` TEXT NOT NULL,
  `Co_EmpresaTransporte` INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY (`Co_DNI`)
)
ENGINE = InnoDB;

CREATE TABLE `bus`.`reserva` (
  `Co_Ticket` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `Fl_Pagado` BOOLEAN NOT NULL,
  `Nu_Asiento` INTEGER UNSIGNED NOT NULL,
  `Co_EmpresaTransporte` INTEGER UNSIGNED NOT NULL,
  `Co_DNI` CHAR(10) NOT NULL,
  `Co_Ruta` INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY (`Co_Ticket`)
)
ENGINE = InnoDB;

CREATE TABLE `bus`.`ciudad` (
  `Co_Ciudad` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `No_Ciudad` CHAR(60) NOT NULL,
  PRIMARY KEY (`Co_Ciudad`)
)
ENGINE = InnoDB;


CREATE TABLE `bus`.`ruta` (
  `Co_Ruta` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `No_CiudadOrigen` INTEGER UNSIGNED NOT NULL,
  `No_CiudadDestino` INTEGER UNSIGNED NOT NULL,
  `Fe_HoraSalida` DATETIME NOT NULL,
  `Fe_HoraLlegada` DATETIME NOT NULL,
  `Ss_Tarifa` DOUBLE NOT NULL,
  `Co_EmpresaTransporte` INTEGER UNSIGNED NOT NULL,
  `Co_Placa` CHAR(10) NOT NULL,
  `Qt_CapacidadTotal` INTEGER UNSIGNED NOT NULL,
  `Qt_CapacidadDisp` INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY (`Co_Ruta`)
)
ENGINE = InnoDB;


CREATE TABLE `bus`.`bus` (
  `Co_Placa` CHAR(10) NOT NULL,
  `Qt_Capacidad` INTEGER UNSIGNED NOT NULL,
  `Co_EmpresaTransporte` INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY (`Co_Placa`)
)
ENGINE = InnoDB;



CREATE TABLE `bus`.`usuario` (
  `No_Username` CHAR(8) NOT NULL,
  `No_Password` CHAR(20) NOT NULL,
  `No_Rol` CHAR(60) NOT NULL,
  `Co_EmpresaTransporte` INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY (`No_Username`)
)
ENGINE = InnoDB;


ALTER TABLE `bus`.`cliente` ADD CONSTRAINT `FK_cliente_1` FOREIGN KEY `FK_cliente_1` (`Co_EmpresaTransporte`)
    REFERENCES `empresatransporte` (`Co_EmpresaTransporte`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;


ALTER TABLE `bus`.`reserva` ADD CONSTRAINT `FK_reserva_1` FOREIGN KEY `FK_reserva_1` (`Co_EmpresaTransporte`)
    REFERENCES `empresatransporte` (`Co_EmpresaTransporte`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

ALTER TABLE `bus`.`reserva` ADD CONSTRAINT `FK_reserva_2` FOREIGN KEY `FK_reserva_2` (`Co_DNI`)
    REFERENCES `cliente` (`Co_DNI`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

ALTER TABLE `bus`.`reserva` ADD CONSTRAINT `FK_reserva_3` FOREIGN KEY `FK_reserva_3` (`Co_Ruta`)
    REFERENCES `ruta` (`Co_Ruta`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

ALTER TABLE `bus`.`ruta` ADD CONSTRAINT `FK_ruta_1` FOREIGN KEY `FK_ruta_1` (`Co_EmpresaTransporte`)
    REFERENCES `empresatransporte` (`Co_EmpresaTransporte`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

ALTER TABLE `bus`.`ruta` ADD CONSTRAINT `FK_ruta_2` FOREIGN KEY `FK_ruta_2` (`Co_Placa`)
    REFERENCES `bus` (`Co_Placa`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

ALTER TABLE `bus`.`ruta` ADD CONSTRAINT `FK_ruta_3` FOREIGN KEY `FK_ruta_3` (`No_CiudadOrigen`)
    REFERENCES `ciudad` (`Co_Ciudad`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

ALTER TABLE `bus`.`ruta` ADD CONSTRAINT `FK_ruta_4` FOREIGN KEY `FK_ruta_4` (`No_CiudadDestino`)
    REFERENCES `ciudad` (`Co_Ciudad`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;



ALTER TABLE `bus`.`usuario` ADD CONSTRAINT `FK_usuario_1` FOREIGN KEY `FK_usuario_1` (`Co_EmpresaTransporte`)
    REFERENCES `empresatransporte` (`Co_EmpresaTransporte`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;


ALTER TABLE `bus`.`bus` ADD CONSTRAINT `FK_empresatransporte_1` FOREIGN KEY `FK_empresatransporte_1` (`Co_EmpresaTransporte`)
    REFERENCES `empresatransporte` (`Co_EmpresaTransporte`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

INSERT INTO empresatransporte VALUES('1','Turismo Barranca S.A.');
INSERT INTO empresatransporte VALUES('2','Sagal S.A.C');
INSERT INTO empresatransporte VALUES('3','Punto C');
INSERT INTO empresatransporte VALUES('4','Speedy S.A');
INSERT INTO empresatransporte VALUES('5','Rapido y Furioso EIRL.');

INSERT INTO bus VALUES ('WMX-0001','44', '1');
INSERT INTO bus VALUES ('WMX-0002','40', '2');
INSERT INTO bus VALUES ('WMX-0003','35', '3');
INSERT INTO bus VALUES ('WMX-0004','41', '4');
INSERT INTO bus VALUES ('WMX-0005','40', '5');


INSERT INTO ciudad VALUES ('1','Barranca');
INSERT INTO ciudad VALUES ('2','Lima');
INSERT INTO ciudad VALUES ('3','Ica');
INSERT INTO ciudad VALUES ('4','Trujillo');
INSERT INTO ciudad VALUES ('5','Chiclayo');
INSERT INTO ciudad VALUES ('6','Arequipa');
INSERT INTO ciudad VALUES ('7','Tumbes');

INSERT INTO usuario VALUES('ybricen','12345','Administrador','1');
INSERT INTO usuario VALUES('wbustos','12345','Vendedor','1');
INSERT INTO usuario VALUES('lsabina','12345','Vendedor','2');
INSERT INTO usuario VALUES('nsanche','12345','Administrador','3');
INSERT INTO usuario VALUES('drodrig','12345','Vendedor','5');

INSERT INTO cliente VALUES('44531258','Yessel Briceno','Jr.Aguarico 649','2354186','ybricen.b@gmail.com','1');
INSERT INTO cliente VALUES('10858871','Nicolas Sanchez','Av. Ica 578','9865241','utnico@gmail.com','2');
INSERT INTO cliente VALUES('41522188','Lesly Briceno','Calle Larco 111','1245253','lbricen.b@gmail.com','3');
INSERT INTO cliente VALUES('42558685','Juan Carlos Damian','Jr. Iquitos 235','4425361','jdamian@gmail.com','1');
INSERT INTO cliente VALUES('10845812','Jesus Maita','Av. Los portales 754','987456','jmaita@gmail.com','4');
INSERT INTO cliente VALUES('42539687','Martin Ramirez','Jr.Aguarico 555','2352143','mramirez@gmail.com','5');
INSERT INTO cliente VALUES('41352696','Carlos Morales','Jr.Aguarico 875','2351256','cmorales@gmail.com','4');


INSERT INTO ruta VALUES('1','7','1','2010-05-24 08:00','2010-05-25 15:00','524.23','2','WMX-0005', '40', '40');
INSERT INTO ruta VALUES('2','2','3','2010-05-25 09:00','2010-05-25 14:00','225.31','2','WMX-0004', '30', '30');
INSERT INTO ruta VALUES('3','5','6','2010-05-26 10:00','2010-05-26 13:00','623.45','3','WMX-0003', '20', '20');
INSERT INTO ruta VALUES('4','2','1','2010-05-27 11:00','2010-05-27 16:00','524.11','1','WMX-0002', '40', '40');
INSERT INTO ruta VALUES('5','7','6','2010-05-28 12:00','2010-05-28 15:00','524.23','1','WMX-0001', '45', '45');

INSERT INTO reserva VALUES('1','0','1','1','44531258','1');
INSERT INTO reserva VALUES('2','0','30','2','41522188','2');
INSERT INTO reserva VALUES('3','1','25','3','10845812','3');
INSERT INTO reserva VALUES('4','1','3','3','41352696','4');
INSERT INTO reserva VALUES('5','1','18','5','10845812','5');






























