DROP TABLE IF EXISTS usuarios, gastos, items_compra, tareas CASCADE;
-- Tablas

create table usuarios (
    id integer generated always as identity primary key,
    nombre varchar(20),
    email varchar(30),
    password varchar(255)
);

create table gastos (
    id integer primary key,
    pagado_por integer,
    descripcion varchar(50),
    importe integer,
    fecha date
);

create table items_compra (
    id integer primary key,
    nombre varchar(30),
    anadido_por integer,
    comprado boolean
);

create table tareas (
    id integer primary key,
    titulo varchar(50),
    asignado_a integer,
    fecha_limite date,
    completada boolean
);

-- Datos
-- Para la tabla usuarios
insert into usuarios (nombre, email, password)
values ('Ana', 'ana@prueba.com', 'ana123');

insert into usuarios (nombre, email, password)
values ('Luis', 'luis@prueba.com', 'luis123');

insert into usuarios (nombre, email, password)
values ('Marta', 'marta@prueba.com', 'marta123');

insert into usuarios (nombre, email, password)
values ('Pablo', 'pablo@prueba.com', 'pablo123');


-- Tabla gastos
insert into gastos values (1, 1, 'Compra Mercadona', 80, '2026-09-28');
insert into gastos values (2, 2, 'Factura de la luz', 120, '2026-09-29');
insert into gastos values (3, 3, 'Internet', 60, '2026-09-30');
insert into gastos values (4, 4, 'Productos de limpieza', 40, '2026-10-01');
insert into gastos values (5, 1, 'Cena de piso', 100, '2026-10-01');

insert into items_compra values (1, 'Leche', 2, false);
insert into items_compra values (2, 'Papel higienico', 3, false);
insert into items_compra values (3, 'Pasta', 1, true);
insert into items_compra values (4, 'Detergente', 4, false);
insert into items_compra values (5, 'Huevos', 2, false);
insert into items_compra values (6, 'Fruta', 3, true);

insert into tareas values (1, 'Sacar la basura', 2, '2026-10-02', false);
insert into tareas values (2, 'Limpiar el bano', 3, '2026-10-04', false);
insert into tareas values (3, 'Fregar la cocina', 4, '2026-10-03', false);
insert into tareas values (4, 'Barrer el salon', 1, '2026-09-30', true);
insert into tareas values (5, 'Poner la lavadora', 2, '2026-10-05', false);