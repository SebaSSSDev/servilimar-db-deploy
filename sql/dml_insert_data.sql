INSERT INTO Usuario(nombre, apellido, tipo_usuario, condiciones, ciudad_id, codigo_postal) VALUES
('Ana', 'Perez', 'Cliente', 'Embarazo', 1, '110001'),
('Luis', 'Gomez', 'Cliente', 'Ninguna', 2, '110002'),
('Carla', 'Lopez', 'Empleado', 'Ninguna', 1, '110001'),
('Juan', 'Martinez', 'Cliente', 'Adulto Mayor', 3, '110003'),
('Marta', 'Diaz', 'Proveedor', 'Ninguna', 2, '110002'),
('Pedro', 'Sanchez', 'Cliente', 'Silla de ruedas', 3, '110003'),
('Laura', 'Ruiz', 'Cliente', 'Ninguna', 1, '110001'),
('Diego', 'Vega', 'Empleado', 'Ninguna', 2, '110002'),
('Sofia', 'Torres', 'Cliente', 'Ninguna', 3, '110003'),
('Andres', 'Castro', 'Cliente', 'Embarazo', 1, '110001');

INSERT INTO Empleado(usuario_id, cargos, departamentos) VALUES
(3, 'Atencion al Cliente', 'Servicios'),
(8, 'Despacho', 'Logistica'),
(3, 'Consultor', 'Asesoria'),
(8, 'Recepcion', 'Atencion al Usuario'),
(3, 'Supervisor', 'Servicios'),
(8, 'Asistente', 'Logistica'),
(3, 'Coordinador', 'Servicios'),
(8, 'Encargado', 'Recepcion'),
(3, 'Consultor', 'Atencion'),
(8, 'Despachador', 'Logistica');

INSERT INTO Servicio(nombre, descripcion, estado) VALUES
('Despacho', 'Despacho de articulos', 'Activo'),
('Entrega', 'Entrega de articulos', 'Activo'),
('Recepcion', 'Recepcion de articulos', 'Activo'),
('Atencion al Cliente', 'Resolucion de dudas y reclamaciones', 'Activo'),
('Consultoria', 'Asesoria especializada', 'Activo'),
('Logistica', 'Gestion de envios', 'Activo'),
('Facturacion', 'Tramite de pagos', 'Activo'),
('Soporte', 'Soporte tecnico', 'Activo'),
('Ventas', 'Procesos de venta', 'Activo'),
('Marketing', 'Campañas publicitarias', 'Activo');

INSERT INTO Turno(usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado, nombre_servicio) VALUES
(1,1,1,'2025-10-20','09:00','09:30','Pendiente','Despacho'),
(2,2,2,'2025-10-20','09:30','10:00','Pendiente','Entrega'),
(4,3,3,'2025-10-21','10:00','10:30','Pendiente','Recepcion'),
(6,4,4,'2025-10-21','10:30','11:00','Pendiente','Atencion al Cliente'),
(7,5,5,'2025-10-22','11:00','11:30','Pendiente','Consultoria'),
(9,6,6,'2025-10-22','11:30','12:00','Pendiente','Logistica'),
(10,7,7,'2025-10-23','12:00','12:30','Pendiente','Facturacion'),
(1,8,8,'2025-10-23','12:30','13:00','Pendiente','Soporte'),
(2,9,9,'2025-10-24','13:00','13:30','Pendiente','Ventas'),
(4,10,10,'2025-10-24','13:30','14:00','Pendiente','Marketing');

INSERT INTO Notificacion(usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1,1,'Su turno ha sido asignado',NOW(),'Enviado'),
(2,2,'Su turno ha sido asignado',NOW(),'Enviado'),
(3,1,'Recordatorio de turno',NOW(),'Pendiente'),
(4,2,'Su turno ha sido cancelado',NOW(),'Enviado'),
(5,1,'Turno confirmado',NOW(),'Enviado'),
(6,2,'Turno asignado',NOW(),'Enviado'),
(7,1,'Turno asignado',NOW(),'Pendiente'),
(8,2,'Recordatorio de turno',NOW(),'Pendiente'),
(9,1,'Turno confirmado',NOW(),'Enviado'),
(10,2,'Turno asignado',NOW(),'Enviado');
