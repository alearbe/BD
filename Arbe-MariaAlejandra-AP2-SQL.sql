CREATE DATABASE sisdenweb;

USE sisdenweb;

CREATE TABLE postal (
    cp INTEGER PRIMARY KEY NOT NULL,
    ciudad VARCHAR(200) NOT NULL,
    provincia VARCHAR(200)
);


CREATE TABLE usuarios (
    nroReg DOUBLE PRIMARY KEY,
    nroAseg DOUBLE NOT NULL,
    nombreUsu VARCHAR(8) NOT NULL,
    psw VARCHAR(10) NOT NULL,
    fecRegistro DATETIME,
    fecBaja DATETIME,
    habilitado BOOLEAN COMMENT ON 'S ó N'
);

ALTER TABLE usuarios
MODIFY COLUMN habilitado VARCHAR(1) COMMENT 'S ó N';

CREATE TABLE Asegurados (
    nroAseg DOUBLE PRIMARY KEY,
    tipoId INTEGER NOT NULL,
    nroId DOUBLE NOT NULL,
    mail VARCHAR(100),
    telefono DOUBLE,
    calle VARCHAR(100),
    nro INTEGER,
    piso INTEGER,
    dpto VARCHAR(10),
    cp INTEGER,
    razonSocial VARCHAR(300),
    finIniAct DATETIME,
    sexo VARCHAR(1),
    apellido VARCHAR(100),
    nombre VARCHAR(100),
    fecNac DATETIME
);



INSERT INTO Asegurados (nroAseg, tipoId, nroId, mail, telefono, calle, nro, piso, dpto, cp, razonSocial, finIniAct, sexo, apellido, nombre, fecNac) VALUES
(1001, 6, 30123456, 'ana.perez@email.com', 3411234567, 'San Martín', 123, '2', 'A', 2000, NULL, NULL, 'F', 'Pérez', 'Ana', '1985-05-10'),
(1002, 6, 35654321, 'carlos.lopez@email.com', 3417654321, 'Corrientes', 456, 'PB', NULL, 2000, NULL, NULL, 'M', 'López', 'Carlos', '1990-11-22'),
(1003, 8, 90123456789, 'los.olivos.sa@email.com', 3419876543, 'Entre Ríos', 789, NULL, NULL, 2124, 'Los Olivos S.A.', '2020-03-15', NULL, NULL, NULL, NULL),
(1004, 6, 25987654, 'laura.gonzalez@email.com', 3415551212, 'Mitre', 321, '1', 'B', 2000, NULL, NULL, 'F', 'González', 'Laura', '1978-08-01'),
(1005, 8, 91987654321, 'metalurgica.roca@email.com', 3413334444, 'San Lorenzo', 654, NULL, NULL, 2000, 'Metalúrgica Roca SRL', '2015-09-20', NULL, NULL, NULL, NULL),
(1006, 6, 40543210, 'martin.rodriguez@email.com', 3469112233, 'Sarmiento', 987, '3', NULL, 2124, NULL, NULL, 'M', 'Rodríguez', 'Martín', '1995-02-28'),
(1007, 8, 92876543210, 'textil.unidos@email.com', 3400556677, 'Urquiza', 234, NULL, NULL, 2000, 'Textil Unidos S.R.L.', '2018-07-10', NULL, NULL, NULL, NULL),
(1008, 6, 38234567, 'sofia.martinez@email.com', 3418889999, 'Pellegrini', 567, 'PB', 'C', 2000, NULL, NULL, 'F', 'Martínez', 'Sofía', '1992-04-05'),
(1009, 8, 93765432109, 'alimentos.del.sur@email.com', 3469223344, 'España', 890, NULL, NULL, 2124, 'Alimentos del Sur SA', '2022-01-03', NULL, NULL, NULL, NULL),
(1010, 6, 28765432, 'javier.gomez@email.com', 3414445555, 'Rioja', 101, '4', NULL, 2000, NULL, NULL, 'M', 'Gómez', 'Javier', '1980-12-18');


INSERT INTO usuarios (nroReg, nroAseg, nombreUsu, psw, fecRegistro, fecBaja, habilitado) VALUES
(1, 1001, 'anaperez', 'clave123', '2024-06-18', NULL, 'S'),
(2, 1002, 'carlosl', 'miclave', '2025-05-18', NULL, 'S'),
(3, 1003, 'losolivos', 'empresa1', '2025-02-18', NULL, 'S'),
(4, 1004, 'laurag', 'otraclave', '2023-10-08', NULL, 'S'),
(5, 1005, 'metalroca', 'metal20', '2025-05-18', NULL, 'S'),
(6, 1006, 'martinr', 'clavemar', '2025-01-01', NULL, 'S'),
(7, 1007, 'textilun', 'textil01', '2025-05-18', NULL, 'S'),
(8, 1008, 'sofiam', 'sofi04', '2025-05-18', NULL, 'S'),
(9, 1009, 'alimentos', 'ali22', '2025-05-18', NULL, 'S'),
(10, 1010, 'javierg', 'javi80', '2025-05-18', NULL, 'S');



INSERT INTO postal (cp, ciudad, provincia) VALUES
(2000, 'Rosario', 'Santa Fe'),
(3000, 'Santa Fe', 'Santa Fe'),
(5000, 'Córdoba', 'Córdoba'),
(8000, 'Bahía Blanca', 'Buenos Aires'),
(7600, 'Mar del Plata', 'Buenos Aires'),
(4000, 'San Miguel de Tucumán', 'Tucumán'),
(5500, 'Mendoza', 'Mendoza'),
(9400, 'Río Gallegos', 'Santa Cruz'),
(8300, 'Neuquén', 'Neuquén'),
(3400, 'Corrientes', 'Corrientes'),
(4400, 'Salta', 'Salta'),
(5400, 'San Juan', 'San Juan'),
(3500, 'Resistencia', 'Chaco'),
(6300, 'Santa Rosa', 'La Pampa'),
(9100, 'Trelew', 'Chubut');

INSERT INTO postal (cp, ciudad, provincia) VALUES
(2124, 'Villa Gobernador Gálvez', 'Santa Fe');


CREATE TABLE agencias (
    nroAgencia INTEGER PRIMARY KEY,
    nombreAgencia VARCHAR(200) NOT NULL,
    matricula INTEGER NOT NULL
);


INSERT INTO agencias (nroAgencia, nombreAgencia, matricula) VALUES
(4001, 'Agencia Integral del Sur S.A.', 123456),
(4002, 'Servicios Patrimoniales Unidos SRL', 654321),
(4003, 'Asesores Financieros del Centro S.A.', 987654),
(4004, 'Gestión de Riesgos y Soluciones SA', 456789),
(4005, 'Consultora de Seguros El Triángulo SRL', 321654);

CREATE TABLE Modelos (
    modelo INTEGER PRIMARY KEY NOT NULL,
    descModelo VARCHAR(100) NOT NULL
);

CREATE TABLE Marcas (
    marca INTEGER PRIMARY KEY NOT NULL,
    descMarca VARCHAR(100) NOT NULL
);



INSERT INTO Marcas (marca, descMarca) VALUES
(1, 'Ford'),
(2, 'Chevrolet'),
(3, 'Volkswagen'),
(4, 'Renault'),
(5, 'Fiat');
(6, 'Toyota');


INSERT INTO Modelos (modelo, descModelo) VALUES
(10, 'Ka'), -- Hatchback
(20, 'Cruze'), -- Sedán
(30, 'Cronos'); -- Sedán

INSERT INTO Modelos (modelo, descModelo) VALUES
(40, 'Corolla'), -- Sedán
(50, 'Etios');   -- Hatchback





CREATE TABLE Polizas (
    nroPoliza DOUBLE PRIMARY KEY NOT NULL,
    ramo INTEGER NOT NULL,
    fechaEmision DATETIME NOT NULL,
    fecIniVig DATETIME NOT NULL,
    fecFinVig DATETIME NOT NULL,
    formaPago INTEGER,
    nroAgencia INTEGER,
    nroAseg DOUBLE,
    FOREIGN KEY (nroAgencia) REFERENCES agencias(nroAgencia),
    FOREIGN KEY (nroAseg) REFERENCES Asegurados(nroAseg)
);

CREATE TABLE detPoliza (
    nroPoliza DOUBLE NOT NULL,
    nroAsegurableINTEGER NOT NULL,
    marca INTEGER,
    modelo INTEGER,
    patente VARCHAR(7),
    PRIMARY KEY (nroPoliza, nroAsegurable),
    FOREIGN KEY (nroPoliza) REFERENCES Polizas(nroPoliza),
    FOREIGN KEY (marca) REFERENCES Marcas(marca),
    FOREIGN KEY (modelo) REFERENCES Modelos(modelo)
);




INSERT INTO Polizas (nroPoliza, ramo, fechaEmision, fecIniVig, fecFinVig, formaPago, nroAgencia, nroAseg) VALUES
(65001, 1, '2025-05-18', '2025-06-01', '2026-06-01', 1, 4001, 1001),
(65002, 1, '2025-05-18', '2025-06-15', '2026-06-15', 1, 4002, 1002),
(65003, 1, '2025-05-18', '2025-07-01', '2026-07-01', 1, 4003, 1003),
(65004, 1, '2025-05-18', '2025-07-15', '2026-07-15', 1, 4004, 1004),
(65005, 1, '2025-05-18', '2025-08-01', '2026-08-01', 1, 4005, 1005);


INSERT INTO detPoliza (nroPoliza, nroAsegurable, marca, modelo, patente) VALUES
(65001, 1, 1, 10, 'AA123BB'), -- Póliza 65001, Asegurable 1, Ford Ka
(65001, 2, 2, 20, 'CC456DD'), -- Póliza 65001, Asegurable 2, Chevrolet Cruze
(65002, 1, 3, 30, 'EE789FF'), -- Póliza 65002, Asegurable 1, Volkswagen Cronos
(65003, 1, 4, NULL, 'GG012HH'), -- Póliza 65003, Asegurable 1, Renault (sin modelo específico)
(65003, 2, 6, 40, 'JJ345KK'), -- Póliza 65003, Asegurable 2, Toyota Corolla
(65004, 1, 5, 10, 'LL678MM'), -- Póliza 65004, Asegurable 1, Fiat Ka
(65005, 1, 2, 20, 'NN901PP'); -- Póliza 65005, Asegurable 1, Chevrolet Cruze



CREATE TABLE Siniestros (
    nroSni DOUBLE PRIMARY KEY NOT NULL,
    fecha DATETIME,
    hora DATETIME,
    cp INTEGER,
    calle VARCHAR(100),
    nro INTEGER,
    observaciones VARCHAR(500),
    nroAsegurable INTEGER,
    FOREIGN KEY (cp) REFERENCES postal(cp),
    FOREIGN KEY (nroAsegurable) REFERENCES detPoliza(nroAsegurable)
);

    
    CREATE TABLE danios (
    nroSini DOUBLE NOT NULL,
    parte INTEGER NOT NULL,
    codDanio INTEGER,
    PRIMARY KEY (nroSini, parte),
    FOREIGN KEY (nroSini) REFERENCES Siniestros(nroSni)
);



INSERT INTO Siniestros (nroSni, fecha, hora, cp, calle, nro, observaciones, nroAsegurable) VALUES
(70001, '2025-05-19', '10:30:00', 2000, 'San Martín', 1500, 'Colisión leve en la esquina.', 1),
(70002, '2025-05-20', '16:45:00', 2000, 'Corrientes', 321, 'Daños por granizo.', 1);

INSERT INTO danios (nroSini, parte, codDanio) VALUES
(70001, 1, 10), -- Siniestro 70001, Parte 1, Código de daño 10
(70001, 2, 15), -- Siniestro 70001, Parte 2, Código de daño 15
(70002, 1, 20); -- Siniestro 70002, Parte 1, Código de daño 20

--asegurados de rosario
SELECT
    a.nroAseg,
    a.nombre,
    a.apellido
FROM
    Asegurados a
JOIN
    postal p ON a.cp = p.cp
WHERE
    p.ciudad = 'Rosario';
    
    
   --siniestros ocurridos en 2025 
    
    SELECT
    aseg.nombre AS nombre_asegurado,
    aseg.apellido AS apellido_asegurado,
    dp.patente,
    m.descMarca AS marca,
    mod.descModelo AS modelo,
    sini.nroSni,
    sini.fecha AS fecha_siniestro,
    sini.hora AS hora_siniestro,
    sini.observaciones AS observaciones_siniestro
FROM
    Siniestros sini
JOIN
    detPoliza dp ON sini.nroAsegurable = dp.nroAsegurable -- Asumiendo esta relación
JOIN
    Polizas pol ON dp.nroPoliza = pol.nroPoliza
JOIN
    Asegurados aseg ON pol.nroAseg = aseg.nroAseg
LEFT JOIN
    Marcas m ON dp.marca = m.marca
LEFT JOIN
    Modelos mod ON dp.modelo = mod.modelo
WHERE
    YEAR(sini.fecha) = 2025;
    
    
    
 --Datos de la póliza de la patente EE789FF
 
 SELECT
    p.nroPoliza,
    p.ramo,
    p.fechaEmision,
    p.fecIniVig,
    p.fecFinVig,
    p.formaPago,
    ag.nroAgencia,
    ag.nombreAgencia,
    aseg.nroAseg,
    aseg.nombre AS nombre_asegurado,
    aseg.apellido AS apellido_asegurado
FROM
    detPoliza dp
JOIN
    Polizas p ON dp.nroPoliza = p.nroPoliza
JOIN
    agencias ag ON p.nroAgencia = ag.nroAgencia
JOIN
    Asegurados aseg ON p.nroAseg = aseg.nroAseg
WHERE
    dp.patente = 'EE789FF';
    
    
    ---Eliminación de los asegurados de cp=2124
    
    --Primero hago la select
    
    SELECT
    a.nroAseg
FROM
    Asegurados a
WHERE
    a.cp = 2124;
    
    --con esto me doy cuenta que elimino a los aseg 1003,1006 y 1009
    
    ---luego el delete 
    
    DELETE FROM Asegurados
WHERE cp = 2124;

COMMIT;