drop database if exists VETIX1;
create database VETIX1;
use VETIX1;
-- Creación de la tabla de usuarios 

CREATE TABLE IF NOT EXISTS usuario( 
id INT PRIMARY KEY auto_increment,
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) not null,
contraseña CHAR(60) NOT NULL,
fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
activo boolean );

insert into usuario
(id,nombre,apellido,contraseña)
values('1','Andrés','Torilo Cordon','AndreTC@');

insert into usuario
(id,nombre,apellido,contraseña)
values('2','Antonio','Moran Galvez','AntonioMG@');

insert into usuario
(id,nombre,apellido,contraseña)
values('3','Victor','Torilo Cordon','VictorTC@');

	-- Mostrar tabla usuario
select * from usuario;

-- Creacion tabla productos

CREATE TABLE  if not exists productos(
id INT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
cantidad varchar (100) NOT NULL,
ingredientes varchar(100)NOT NULL,
imagen longblob,
id_usuario INT,
foreign key (id_usuario) references usuario(id)

-- longblob es usado para imagenes largas
);

-- add items in table productos
SHOW VARIABLES LIKE 'secure_file_priv';
insert into productos
(id,nombre,cantidad,ingredientes)
values('1','rollo de carne','12','ternera,pepino,mayonesa,soja y arroz');

UPDATE productos
SET imagen = LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.3\\Uploads\\Producto1.jpg')
WHERE id = 1;

insert into productos
(id,nombre,cantidad,ingredientes)
values('2','rollo de pescado','12','atún,pepino,mayonesa,soja y arroz');

UPDATE productos
SET imagen = LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.3\\Uploads\\Producto2.jpg')
WHERE id = 2;

insert into productos
(id,nombre,cantidad,ingredientes)
values('3','rollo de picante','12','atún,pepino,salsa picante,mayonesa,soja y arroz');

UPDATE productos
SET imagen = LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.3\\Uploads\\Producto3.jpg')
WHERE id = 3;

insert into productos
(id,nombre,cantidad,ingredientes)
values('4','rollos marineros','12','marisco,mayonesa,arroz y soja');

update productos
set imagen = load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.3\\Uploads\\Producto4.jpg')
where id = 4;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '12345';
select * from productos;

INSERT INTO usuario (nombre, apellido, contraseña) VALUES ('Andres', 'Torilo Cordon', '12345');