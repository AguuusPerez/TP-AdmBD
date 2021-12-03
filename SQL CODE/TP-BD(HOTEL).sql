#Creo base de datos Tp_DB_Hotel

CREATE DATABASE Tp_BD_Hotel;

USE Tp_DB_hotel; 

#Tabla Administrador
CREATE TABLE Administrador(
	`ID_administrador` INT UNSIGNED AUTO_INCREMENT,
	`Nombre` VARCHAR(20) NOT NULL,
	`Password` VARCHAR(20) NOT NULL,
	`Email` VARCHAR(20) NOT NULL,
	`Last_login` TIMESTAMP,
	PRIMARY KEY (ID_administrador)
	);
	
#Tabla Huesped	
CREATE TABLE Huesped(
	`ID_huesped` INT UNSIGNED AUTO_INCREMENT,
	`Nombre` VARCHAR(40) NOT NULL,
	`Apellido` VARCHAR(40) NOT NULL,
	`DNI` INT(9) NOT NULL,
	PRIMARY KEY (ID_huesped)
	);
	
	
#Tabla Reserva	
CREATE TABLE Reserva(
	`ID_reserva` INT UNSIGNED AUTO_INCREMENT,
	`ID_huesped` INT(10) UNSIGNED NOT NULL,
	`ID_habitacion` INT(10) UNSIGNED NOT NULL,
	`ID_metPago` INT(10) UNSIGNED NOT NULL,
	`ID_metReserva` INT(10) UNSIGNED NOT NULL,
	`ID_empleado` INT(10) UNSIGNED NOT NULL,
	`Check_in` TIMESTAMP NOT NULL,
	`Check_out` DATETIME NOT NULL,
	PRIMARY KEY (ID_reserva)
	);
	
#Tabla Habitacion	
CREATE TABLE Habitacion(
	`ID_habitacion` INT UNSIGNED AUTO_INCREMENT,
	`ID_tipoHab` INT(10) UNSIGNED NOT NULL,
	`ID_piso` INT(10) UNSIGNED NOT NULL,
	`ID_disponibilidad` INT(10) UNSIGNED NOT NULL,
	`ID_estado` INT(10) UNSIGNED NOT NULL,
	`ID_nombre` INT(10) UNSIGNED NOT NULL,
	`Precio_base` INT(20) NOT NULL,
	PRIMARY KEY (ID_habitacion)
	);	
	
#Tabla Servicio_limpieza
CREATE TABLE Servicio_limpieza(
	`ID_servicio` INT UNSIGNED AUTO_INCREMENT,
	`ID_habitacion` INT(10) UNSIGNED NOT NULL,
	`ID_empleado` INT(10) UNSIGNED NOT NULL,
	`Check_in` TIMESTAMP NOT NULL,
	`Check_out` DATETIME NOT NULL,
	PRIMARY KEY (ID_servicio)
	);		

#Tabla Empleado	
CREATE TABLE Empleado(
	`ID_empleado` INT UNSIGNED AUTO_INCREMENT,
	`ID_puesto` INT(10) UNSIGNED NOT NULL,
	`ID_turno` INT(10) UNSIGNED NOT NULL,
	`Nombre` VARCHAR(20) NOT NULL,
	`Apellido` VARCHAR(20) NOT NULL,
	`DNI` INT(9) NOT NULL,
	`Fecha_nacimiento` DATE NOT NULL,
	`Domicilio` VARCHAR(20) NOT NULL,
	PRIMARY KEY (ID_empleado)
	);		

#Tablas lookUp para la tabla 'Reserva'
CREATE TABLE Metodo_pago(
	`ID_metPago` INT(10) UNSIGNED AUTO_INCREMENT,
   `Tipo_metodo` VARCHAR(20) NOT NULL,
	PRIMARY KEY ( ID_metPago )
);	

CREATE TABLE Metodo_reserva(
	`ID_metReserva` INT(10) UNSIGNED AUTO_INCREMENT,
	`Tipo_reserva` VARCHAR(20) NOT NULL,
	PRIMARY KEY (ID_metReserva)
);	

#Tablas lookUp para la tabla 'Habitacion'
CREATE TABLE Tipo_habitacion(
	`ID_tipoHab` INT(10) UNSIGNED AUTO_INCREMENT,
	`Habitacion_solicitada` VARCHAR(20) NOT NULL,
	PRIMARY KEY (ID_tipoHab)
);	

CREATE TABLE Piso(
	`ID_piso` INT(10) UNSIGNED AUTO_INCREMENT,
	`Nombre_piso` VARCHAR(20) NOT NULL,
	PRIMARY KEY (ID_piso)
);	

CREATE TABLE Disponibilidad(
	`ID_disponibilidad` INT(10) UNSIGNED AUTO_INCREMENT,
	`Disponible` VARCHAR(20) NOT NULL,
	PRIMARY KEY (ID_disponibilidad)
);	


CREATE TABLE Estado_habitacion(
	`ID_estado` INT(10) UNSIGNED AUTO_INCREMENT,
	`estado` VARCHAR(10) NOT NULL,
	PRIMARY KEY (ID_estado)
);	

CREATE TABLE Nombre_habitacion(
	`ID_nombre` INT(10) UNSIGNED AUTO_INCREMENT,
	`Nombre` VARCHAR(20) NOT NULL,
	PRIMARY KEY (ID_nombre)
);	

#Tablas lookUp para la tabla 'Empleado'
CREATE TABLE Puesto(
	`ID_puesto` INT(10) UNSIGNED AUTO_INCREMENT,
	`Nombre_puesto` VARCHAR(20) NOT NULL,
	PRIMARY KEY (ID_puesto)
);	


CREATE TABLE Turno(
	`ID_turno` INT(10) UNSIGNED AUTO_INCREMENT,
	`Nombre_turno` VARCHAR(20) NOT NULL,
	PRIMARY KEY (ID_turno)
);	


#Agregado de llaves Foraneas tablas 'Reserva'
ALTER TABLE	reserva ADD CONSTRAINT FK_Huesped_Reserva FOREIGN KEY (ID_huesped) REFERENCES huesped (ID_huesped);
ALTER TABLE	reserva ADD CONSTRAINT FK_Habitacion_Reserva FOREIGN KEY (ID_habitacion) REFERENCES habitacion (ID_habitacion);
ALTER TABLE	reserva ADD CONSTRAINT FK_metodoPago_Reserva FOREIGN KEY (ID_metPago) REFERENCES metodo_pago (ID_metPago);
ALTER TABLE	reserva ADD CONSTRAINT FK_metodoReserva_Reserva FOREIGN KEY (ID_metReserva) REFERENCES metodo_reserva (ID_metReserva);
ALTER TABLE	reserva ADD CONSTRAINT FK_Empleado_Reserva FOREIGN KEY (ID_empleado) REFERENCES empleado (ID_empleado);

#Agregado de llaves Foraneas tablas 'Habitacion'
ALTER TABLE	habitacion ADD CONSTRAINT FK_tipoHabitacion_Habitacion FOREIGN KEY (ID_tipoHab) REFERENCES tipo_habitacion (ID_tipoHab);
ALTER TABLE	habitacion ADD CONSTRAINT FK_Piso_Habitacion FOREIGN KEY (ID_piso) REFERENCES piso (ID_piso);
ALTER TABLE	habitacion ADD CONSTRAINT FK_Disponibilidad_Habitacion FOREIGN KEY (ID_disponibilidad) REFERENCES Disponibilidad (ID_disponibilidad);
ALTER TABLE	habitacion ADD CONSTRAINT FK_EstadoHabitacion_Habitacion FOREIGN KEY (ID_estado) REFERENCES estado_habitacion (ID_estado);
ALTER TABLE	habitacion ADD CONSTRAINT FK_Nombre_Habitacion FOREIGN KEY (ID_nombre) REFERENCES nombre_habitacion (ID_nombre);

#Agregado de llaves Foraneas tablas 'Servicio_limpieza'
ALTER TABLE	servicio_limpieza ADD CONSTRAINT FK_Habitacion_servicioLimpieza FOREIGN KEY (ID_habitacion) REFERENCES habitacion (ID_habitacion);
ALTER TABLE	servicio_limpieza ADD CONSTRAINT FK_Empleado_servicioLimpieza FOREIGN KEY (ID_empleado) REFERENCES empleado (ID_empleado);

#Agregado de llaves Foraneas tablas 'Empleado'
ALTER TABLE	empleado ADD CONSTRAINT FK_Puesto_Empleado FOREIGN KEY (ID_puesto) REFERENCES puesto (ID_puesto);
ALTER TABLE	empleado ADD CONSTRAINT FK_Turno_Empleado FOREIGN KEY (ID_turno) REFERENCES turno (ID_turno);

