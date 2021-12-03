#Agregado de datos a modo de ejemplo, tabla Disponibilidad
INSERT INTO Disponibilidad VALUES
('','Disponible'),
('','No Disponible');

SELECT * FROM Estado_habitacion;

#Agregado de datos a modo de ejemplo, tabla Estado_habitacion
INSERT INTO Estado_habitacion VALUES
('','Sucio'),
('','Limpio');

#Agregado de datos a modo de ejemplo, tabla Turno
INSERT INTO turno VALUES
('', 'Mañana'),
('', 'Tarde'),
('', 'Noche');

#Agregado de datos a modo de ejemplo, tabla Piso
INSERT INTO piso VALUES
('', 'Primer Piso'),
('', 'Segundo Piso');

#Agregado de datos a modo de ejemplo, tabla Puesto
INSERT INTO puesto VALUES
('', 'Cocina'),
('', 'Limpieza'),
('', 'Recepcion'),
('', 'Mantenimiento'),
('', 'Seguridad');

#Agregado de datos a modo de ejemplo, tabla Puesto
INSERT INTO puesto VALUES
('', 'Cocina'),
('', 'Limpieza'),
('', 'Recepcion'),
('', 'Mantenimiento'),
('', 'Seguridad');

#Agregado de datos a modo de ejemplo, tabla Metodo_pago
INSERT INTO Metodo_pago VALUES
('', 'Efectivo'),
('', 'RapiPago'),
('', 'PagoFacil'),
('', 'MercadoPago'),
('', 'Tarjeta de Credito'),
('', 'Tarjeta de Debito'),
('', 'Transferencia');

ALTER TABLE Metodo_pago AUTO_INCREMENT = 0;

#Agregado de datos a modo de ejemplo, tabla Metodo_Reserva
INSERT INTO Metodo_reserva VALUES
('', 'Personalmente'),
('', 'Web'),
('', 'Telefono');

#Agregado de datos a modo de ejemplo, tabla Nombre_habitacion
INSERT INTO Nombre_habitacion VALUES
('', 'A-1'),
('', 'B-1'),
('', 'C-1'),
('', 'D-1'),
('', 'E-1'),
('', 'A-2'),
('', 'B-2'),
('', 'C-2'),
('', 'D-2'),
('', 'E-2');

#Agregado de datos a modo de ejemplo, tabla Tipo_habitacion
INSERT INTO Tipo_habitacion VALUES
('','individual'),
('','doble'),
('','familiar'),
('','suite individual'),
('','suite doble'),
('','presidencial');

#Agregado de datos a modo de ejemplo, tabla Administrador
INSERT INTO administrador VALUES
('','AgustinaP','123abc', 'abcdef1234@gmail.com','2021-12-03 02:26:45'),
('','GabiA', '907622duna','GabiA123@gmail.com','2021-12-03 02:38:40');

#Agregado de datos a modo de ejemplo, tabla huesped
INSERT INTO huesped VALUES
('', 'Agustina', 'Perez', '11222333'),
('', 'Gabriel', 'Aviles', '22111444'),
('', 'Facundo', 'Vexenat', '33444999'),
('', 'Daniel', 'Acevedo', '44333555'),
('', 'Joaquin', 'Sosa', '55777444');

SELECT * FROM servicio_limpieza;

#Agregado de datos a modo de ejemplo, reserva
INSERT INTO reserva VALUES
('', 1, 3, 2, 1, 3, '2021-5-2 00:22:42', ''),
('', 2, 6, 1, 2, 3, '2021-12-1 20:54:33', ''),
('', 4, 7, 5, 3, 3, '2021-6-14 13:59:59', ''),
('', 3, 10, 7, 1, 3, '2021-4-28 17:13:11', ''),
('', 5, 4, 3, 3, 3, '2021-2-1 12:45:03', '2021-2-15 08:00:00');


#Agregado de datos a modo de ejemplo, tabla Empleado
INSERT INTO empleado VALUES
('', 1, 3, 'Arnaldo', 'Portillo','28654356', '1977-05-20', 'Av. 7 343'),
('',5 , 2, 'Leandra', 'Sister','65454356', '1955-01-28', 'Calle 13 654'),
('', 3 , 1, 'Nora', 'Jeremías','28887650', '1979-05-20', 'Av. 12 876'),
('',2 , 2, 'Belen', 'Ponti','28574926', '1999-12-10', 'Calle 75 890'),
('',2 , 1, 'Miguel', 'Montero','12345678', '1957-10-20', 'Av. 20 561');

ALTER TABLE empleado AUTO_INCREMENT = 0;

#Agregado de datos a modo de ejemplo, Habitacion
INSERT INTO Habitacion VALUES
('', 2, 1, 1, 1, 1, '2000'),
('', 1, 1, 1, 2, 2, '1000'),
('', 3, 2, 2, 1, 6, '4000'),
('', 1, 1, 1, 2, 3, '1000'),
('', 1, 1, 1, 2, 4, '1000'),
('', 4, 2, 2, 1, 7, '5000'),
('', 4, 2, 2, 1, 8, '5000'),
('', 5, 2, 1, 2, 9, '8000'),
('', 2, 1, 1, 2, 5, '2000'),
('', 6, 2, 2, 1, 10, '10000');

#Agregado de datos a modo de ejemplo, servicio_limpieza
INSERT INTO servicio_limpieza VALUES
('', 2, 4,'2021-3-12 07:45:00', '2021-3-12 08:45:00' ),
('', 8, 5, '2021-3-12 12:34:55', '2021-3-12 13:45:00');



