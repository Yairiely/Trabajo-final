create database CalzadoElegante;
use CalzadoElegante;

CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    CorreoElectronico VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    Genero CHAR(1) NOT NULL,
    FechaRegistro DATE NOT NULL,
	Ciudad VARCHAR(200) NOT NULL,
	Pais VARCHAR(200) NOT NULL

);


INSERT INTO Clientes (ID_Cliente, Nombre, Apellido, CorreoElectronico, Telefono, Direccion, FechaNacimiento, Genero, FechaRegistro, Ciudad, Pais)
VALUES
(1,'Juan', 'Pérez', 'juan.perez@gmail.com', '+1 809-123-4567', 'Calle Mayor 123, Villa Altagracia', '1990-01-01', 'M', '2024-04-05', 'Villa Altagracia', 'República Dominicana'),
(2,'María', 'García', 'maria.garcia@hotmail.com', '+1 809-234-5678', 'Calle del Sol 456, Villa Altagracia', '1995-02-02', 'F', '2024-04-05', 'Villa Altagracia', 'República Dominicana'),
(3,'Pedro', 'Martínez', 'pedro.martinez@gmail.com', '+1 809-345-6789', 'Calle Luna 789, Santo Domingo', '1992-03-03', 'M', '2024-04-05', 'Santo Domingo', 'República Dominicana'),
(4,'Ana', 'López', 'ana.lopez@outlook.com', '+1 809-456-7890', 'Calle Estrella 123, Santiago', '1998-04-04', 'F', '2024-04-05', 'Santiago', 'República Dominicana'),
(5,'Luis', 'Rodríguez', 'luis.rodriguez@gmail.com', '+1 809-567-8901', 'Calle Sol 456, La Romana', '1985-05-05', 'M', '2024-04-05', 'La Romana', 'República Dominicana'),
(6,'Rosa', 'Díaz', 'rosa.diaz@gmail.com', '+1 809-678-9012', 'Calle Nube 789, Punta Cana', '1991-06-06', 'F', '2024-04-05', 'Punta Cana', 'República Dominicana'),
(7,'Miguel', 'Hernández', 'miguel.hernandez@gmail.com', '+1 809-789-0123', 'Calle Tierra 123, Puerto Plata', '1980-07-07', 'M', '2024-04-05', 'Puerto Plata', 'República Dominicana'),
(8,'Sofia', 'Gómez', 'sofiaGomez@gmail.com', '+1 809-890-1234', 'Calle Agua 456, San Francisco de Macorís', '1997-08-08', 'F', '2024-04-05', 'San Francisco de Macorís', 'República Dominicana'),
(9,'David', 'Ramírez', 'davidRamirez@gmail.com', '+1 809-901-2345', 'Calle Fuego 789, Barahona', '1986-09-09', 'M', '2024-04-05', 'Barahona', 'República Dominicana'),
(10,'Laura', 'Sánchez', 'laura.sanchez@gmail.com', '+1 809-012-3456', 'Calle Aire 123, Baní', '1993-10-10', 'F', '2024-04-05', 'Baní', 'República Dominicana');


CREATE TABLE Productos (
  ID_Producto INT PRIMARY KEY IDENTITY(1,1),
  Nombre VARCHAR(50) NOT NULL,
  Descripcion VARCHAR(200) NOT NULL,
  Precio DECIMAL(10,2) NOT NULL,
  Categoria VARCHAR(50) NOT NULL,
  Talla INT NOT NULL,
  Color VARCHAR(50) NOT NULL,
  Material VARCHAR(50) NOT NULL,
  Stock INT NOT NULL
);

INSERT INTO Productos (Nombre, Descripcion, Precio, Categoria, Talla, Color, Material, Stock)
VALUES
('Zapatos de tacón alto', 'Zapatos elegantes de tacón alto para mujer', 120.00, 'Formal', 38, 'Negro', 'Piel', 10),
('Zapatos de vestir Oxford', 'Zapatos clásicos de vestir para hombre', 149.95, 'Formal', 42, 'Marrón', 'Cuero', 8),
('Bailarinas de charol', 'Bailarinas elegantes para mujer', 49.99, 'Formal', 37, 'Negro', 'Charol', 15),
('Botines de tacón bajo', 'Botines elegantes de tacón bajo para mujer', 99.90, 'Formal', 39, 'Gris', 'Ante', 7),
('Mocasines de piel', 'Mocasines clásicos para hombre y mujer', 89.95, 'Formal', 40, 'Beige', 'Piel', 12),
('Sandalias de fiesta', 'Sandalias elegantes para ocasiones especiales', 79.99, 'Formal', 36, 'Dorado', 'Tela y pedrería', 5),
('Zapatos de plataforma', 'Zapatos elegantes con plataforma para mujer', 69.90, 'Formal', 38, 'Negro', 'Cuero sintético', 14),
('Botas altas de tacón', 'Botas altas y elegantes de tacón para mujer', 159.95, 'Formal', 41, 'Burdeos', 'Terciopelo', 3),
('Zapatos náuticos', 'Zapatos clásicos de estilo náutico para hombre y mujer', 59.99, 'Formal', 43, 'Azul marino', 'Tela y lona', 20),
('Zapatillas de fiesta', 'Zapatillas elegantes para ocasiones especiales', 85.00, 'Formal', 40, 'Plateado', 'Tela con brillo', 11);


CREATE TABLE Ventas (
    ID_Venta INT PRIMARY KEY IDENTITY(1,1),
    ID_Cliente INT NOT NULL,
    ID_Producto INT NOT NULL,
    Fecha DATETIME NOT NULL,
    Cantidad INT NOT NULL,
    PrecioTotal DECIMAL(10,2) NOT NULL,
    MetodoPago VARCHAR(50) NOT NULL,
    Estado VARCHAR(50) NOT NULL
);

INSERT INTO Ventas (ID_Cliente, ID_Producto, Fecha, Cantidad, PrecioTotal, MetodoPago, Estado)
VALUES
  (2, 5, '2024-04-05 15:00:00', 1, 49.99, 'Crédito', 'Completada'),  
  (1, 8, '2024-04-04 11:30:00', 2, 131.50, 'Débito', 'Enviada'),    
  (3, 1, '2024-04-03 10:00:00', 1, 75.99, 'Efectivo', 'Pendiente'),  
  (4, 9, '2024-04-02 17:00:00', 3, 239.97, 'Tarjeta', 'Completada'),   
  (2, 2, '2024-04-01 14:00:00', 1, 149.95, 'Efectivo', 'En preparación'), 
  (1, 7, '2024-03-31 12:30:00', 1, 59.99, 'Crédito', 'Cancelada'),   
  (4, 10, '2024-03-30 09:00:00', 2, 139.80, 'Débito', 'Completada'),  
  (3, 4, '2024-03-29 16:00:00', 1, 99.50, 'Efectivo', 'Enviada'),   
  (2, 6, '2024-03-28 13:30:00', 1, 87.45, 'Crédito', 'Pendiente'),  
  (1, 3, '2024-03-27 10:00:00', 1, 120.00, 'Tarjeta', 'Completada');  



  CREATE TABLE Pedidos (
    ID_Pedido INT PRIMARY KEY IDENTITY(1,1),
    ID_Cliente INT NOT NULL,
    Fecha DATETIME NOT NULL,
    Estado VARCHAR(50) NOT NULL,
    DireccionEnvio VARCHAR(100) NOT NULL,
    MetodoEnvio VARCHAR(50) NOT NULL,
    Total DECIMAL(10,2) NOT NULL
);


INSERT INTO Pedidos (ID_Cliente, Fecha, Estado, DireccionEnvio, MetodoEnvio, Total)
VALUES
  (2, '2024-04-05 17:00:00', 'En Espera', 'Calle Duarte, 123 - Santo Domingo', 'Envío Nacional', 49.99),  
  (1, '2024-04-04 14:00:00', 'Procesando', 'Avenida Independencia, 456 - Santiago', 'Envío Express', 263.00), 
  (3, '2024-04-03 12:00:00', 'Pendiente de Pago', 'Calle Mella, 789 - La Romana', 'Recogida en Tienda', 75.99), 
  (4, '2024-04-02 19:00:00', 'Completado', 'Calle Sánchez, 321 - Puerto Plata', 'Envío Nacional', 719.91),  
  (2, '2024-04-01 16:00:00', 'Enviando', 'Calle El Sol, 987 - Punta Cana', 'Envío Express', 149.95),   
  (1, '2024-03-31 14:00:00', 'Cancelado', 'Calle Principal, 543 - Bonao', 'Envío Nacional', 59.99),  
  (4, '2024-03-30 11:00:00', 'Entregado', 'Calle Luna, 100 - Moca', 'Recogida en Tienda', 279.60), 
  (3, '2024-03-29 18:00:00', 'En Espera', 'Calle Duarte, 231 - San Francisco de Macorís', 'Envío Express', 99.50),  
  (2, '2024-03-28 15:00:00', 'Procesando', 'Calle Colón, 456 - La Vega', 'Envío Nacional', 87.45),   
  (1, '2024-03-27 12:00:00', 'Completado', 'Calle Independencia, 789 - Baní', 'Recogida en Tienda', 120.00); 


CREATE TABLE Promociones (
    ID_Promocion INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(200) NOT NULL,
    Descuento DECIMAL(10,2) NOT NULL,
    FechaInicio DATE NOT NULL,
    FechaFin DATE NOT NULL,
    TipoPromocion VARCHAR(50) NOT NULL
);


INSERT INTO Promociones (Nombre, Descripcion, Descuento, FechaInicio, FechaFin, TipoPromocion)
VALUES
  ('Primavera Alegre', '20% de descuento en sandalias', 0.20, '2024-03-20', '2024-04-30', 'Porcentaje'),
  ('Descuento por Volumen', '15% de descuento en compras superiores a RD$1000', 0.15, '2024-04-01', '2024-04-15', 'Volumen'),
  ('Cliente del Mes', '10% de descuento para el Cliente del Mes', 0.10, '2024-04-01', '2024-04-30', 'Cliente Fidelidad'),
  ('Liquidación de Temporada', 'Hasta 50% de descuento en productos seleccionados', 0.50, '2024-04-10', '2024-04-20', 'Liquidación'),
  ('Cumpleañeros de Abril', 'Regalo sorpresa en la compra para cumpleañeros de Abril', 1.00, '2024-04-01', '2024-04-30', 'Cumpleaños'),
  ('Dúo Dinámico', 'Compra 2 y obtén un 10% de descuento en el segundo artículo', 0.10, '2024-04-15', '2024-04-25', 'Multi-Producto'),
  ('Envío Gratis', 'Envío gratuito en compras superiores a RD$500', 0.00, '2024-04-20', '2024-04-30', 'Beneficio Envio'),
  ('Descuento Retroactivo', 'Obtén un 5% de descuento adicional en tu próxima compra por cada RD$200 gastados', 0.05, '2024-04-01', '2024-04-30', 'Acumulativo'),
  ('Outlet Permanente', 'Descuentos especiales en productos seleccionados en la sección Outlet', 0.30, '2024-03-01', '2024-12-31', 'Sección Especial'),
  ('Descuento por Referencia', 'Gana un 10% de descuento para ti y tu referido', 0.10, '2024-04-01', '2024-04-30', 'Referido')


  ALTER TABLE Ventas
ADD CONSTRAINT FK_Ventas_Clientes FOREIGN KEY (ID_Cliente)
REFERENCES Clientes(ID_Cliente);

ALTER TABLE Ventas
ADD CONSTRAINT FK_Ventas_Productos FOREIGN KEY (ID_Producto)
REFERENCES Productos(ID_Producto);


ALTER TABLE Pedidos
ADD CONSTRAINT FK_Pedidos_Clientes FOREIGN KEY (ID_Cliente)
REFERENCES Clientes(ID_Cliente);