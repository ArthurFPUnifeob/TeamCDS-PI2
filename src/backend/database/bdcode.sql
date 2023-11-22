CREATE DATABASE IF NOT EXISTS TcdsPi2;

USE TcdsPi2;

CREATE TABLE empresa (
    idempresa INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    telefone VARCHAR(14),
    email VARCHAR(60),
    endereco VARCHAR(200),
    cnpj VARCHAR(18),
    senha VARCHAR(15)
);
CREATE TABLE camera (
    idcamera INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(20),
    localizacao VARCHAR(100),
    empresa_idempresa INT,
    FOREIGN KEY (empresa_idempresa)
        REFERENCES empresa (idempresa)
);
CREATE TABLE incidente (
    idincidente INT AUTO_INCREMENT PRIMARY KEY,
    gravidade DOUBLE,
    confDetec DOUBLE,
    tempo TIMESTAMP,
    tipo VARCHAR(25),
    acao VARCHAR(45)
);
CREATE TABLE incidente_has_camera (
    incidente_idincidente INT,
    camera_idcamera INT,
    camera_empresa_idempresa INT,
    PRIMARY KEY (incidente_idincidente , camera_idcamera , camera_empresa_idempresa),
    FOREIGN KEY (incidente_idincidente)
        REFERENCES incidente (idincidente),
    FOREIGN KEY (camera_idcamera)
        REFERENCES camera (idcamera),
    FOREIGN KEY (camera_empresa_idempresa)
        REFERENCES empresa (idempresa)
);

-- Definindo os valores das empresas
INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES ("Team Security", "19986577238", "team.security@gmail.com", "Av. Dr. Octávio da Silva Bastos, 2439 - Jd Nova São João - São João da Boa Vista - SP", "59.764.555/0001-52", "unifeob@123");
INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES ("ABC Consultoria", "1122334455", "abcconsultoria@gmail.com", "Rua das Flores, 123 - Centro - São Paulo - SP", "12.345.678/0001-90", "senha123");

-- Definindo os valores das cameras
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Infravermelho", "Predio A sala 14", "1");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Normal", "Entrada Principal", "1");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Noturna", "Estacionamento", "1");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Normal", "Sala de Servidores", "1");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Normal", "Área de Carga e Descarga", "2");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Infravermelho", "Corredor Principal", "2");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Noturna", "Estoque", "2");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Normal", "Área de Estacionamento", "2");

-- Inserts de incidentes
-- Incêndio
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("75.87", "95.9", "2023-01-11 22:09:30", "Incêndio", "ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("80.32", "94.5", "2023-08-12 10:45:15", "Incêndio", "ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("72.14", "96.8", "2023-04-13 15:20:45", "Incêndio", "ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("78.91", "93.2", "2023-10-14 03:35:00", "Incêndio", "ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("82.34", "97.1", "2023-02-18 11:45:55", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("79.12", "94.8", "2023-03-28 15:30:20", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("76.45", "91.3", "2023-04-05 22:17:45", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("74.67", "90.7", "2023-05-13 03:55:10", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("77.09", "93.4", "2023-06-20 14:10:35", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("80.56", "98.0", "2023-07-28 09:32:00", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("73.23", "95.6", "2023-08-05 12:07:25", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("78.78", "92.2", "2023-09-12 18:45:50", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("75.32", "91.8", "2023-10-20 23:20:15", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("72.10", "94.5", "2023-11-28 10:37:40", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("79.89", "97.2", "2023-01-05 15:15:05", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("76.45", "94.8", "2023-02-12 20:52:30", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("74.22", "91.4", "2023-03-21 02:30:55", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("81.56", "96.0", "2023-04-28 11:47:20", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("74.78", "93.6", "2023-06-05 16:24:45", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("82.10", "98.2", "2023-07-13 21:02:10", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("75.45", "95.7", "2023-08-20 02:39:35", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("80.67", "92.3", "2023-09-27 08:17:00", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("77.09", "91.9", "2023-11-04 12:54:25", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("82.56", "94.5", "2023-12-11 17:31:50", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("76.23", "97.1", "2023-01-18 22:09:15", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("83.78", "94.7", "2023-02-26 03:46:40", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("79.32", "91.2", "2023-04-04 09:24:05", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("76.10", "90.8", "2023-05-11 14:01:30", "Incêndio", "Ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("83.89", "93.4", "2023-06-18 18:39:55", "Incêndio", "Ligar 193");


-- Roubo
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("73.42", "88.3", "2023-01-08 11:55:20", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("95.18", "87.5", "2023-01-15 14:30:45", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("80.73", "89.7", "2023-08-17 07:45:10", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("84.92", "88.9", "2023-02-14 19:20:30", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("72.37", "87.2", "2023-03-18 02:10:15", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("66.05", "89.1", "2023-03-13 09:55:45", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("78.23", "86.4", "2023-07-30 14:30:10", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("81.78", "90.2", "2023-08-15 21:45:35", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("93.97", "88.6", "2023-09-22 10:20:55", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("79.52", "89.8", "2023-10-27 23:10:40", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("82.56", "75.2", "2023-02-15 09:30:45", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("68.21", "92.7", "2023-03-20 14:10:12", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("70.89", "80.5", "2023-04-05 18:45:30", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("80.75", "88.9", "2023-05-12 07:20:15", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("93.12", "95.2", "2023-12-25 22:15:40", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("78.34", "78.1", "2023-07-18 13:05:10", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("85.67", "90.8", "2023-08-02 08:40:55", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("78.23", "85.6", "2023-09-10 16:55:25", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("63.89", "92.3", "2023-10-21 11:30:30", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("87.45", "80.4", "2023-11-07 20:15:18", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("72.10", "88.6", "2023-12-15 15:40:50", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("95.78", "77.9", "2023-01-22 09:25:33", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("88.32", "91.2", "2023-02-28 17:50:10", "Roubo","Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("77.45", "84.7", "2023-03-10 12:35:22", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("81.20", "90.1", "2023-04-18 06:15:45", "Roubo", "Chamar a polícia");



-- Vandalismo
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("45.25", "96.5", "2023-01-07 16:55:55", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("58.73", "97.7", "2023-01-08 10:10:20", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("70.14", "96.9", "2023-01-09 21:35:40", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("39.99", "96.2", "2023-01-10 04:25:25", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("80.27", "97.1", "2023-01-11 12:00:55", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("67.35", "97.4", "2023-01-12 15:40:20", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("73.78", "96.8", "2023-01-13 07:55:45", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("56.42", "97.5", "2023-01-14 19:30:10", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("63.89", "96.1", "2023-01-15 02:20:55", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("49.27", "97.3", "2023-01-16 09:55:25", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("85.60", "96.6", "2023-01-17 14:20:50", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("52.11", "97.0", "2023-01-18 03:10:35", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("76.75", "96.4", "2023-01-19 16:45:00", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("90.00", "97.6", "2023-01-20 08:00:30", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("55.78", "88.2", "2023-02-20 08:30:40", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("62.34", "94.7", "2023-03-15 14:20:12", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("48.90", "79.5", "2023-04-02 17:45:30", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("37.15", "92.1", "2023-05-10 06:20:15", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("59.42", "97.3", "2023-06-22 21:15:40", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("41.67", "82.1", "2023-07-15 12:05:10", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("53.89", "91.8", "2023-08-01 09:40:55", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("68.23", "85.6", "2023-09-08 16:55:25", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("50.45", "93.3", "2023-10-20 11:30:30", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("42.78", "81.4", "2023-11-05 20:15:18", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("58.10", "87.6", "2023-12-10 15:40:50", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("47.78", "77.9", "2023-01-20 09:25:33", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("59.32", "92.2", "2023-02-25 17:50:10", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("67.45", "84.7", "2023-03-08 12:35:22", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("51.20", "90.1", "2023-04-15 06:15:45", "Vandalismo", "Registrar ocorrência");


-- Assalto
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("81.22", "94.0", "2023-02-02 17:12:35", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("75.34", "91.5", "2023-03-10 08:45:20", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("89.12", "96.3", "2023-04-15 12:30:50", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("82.45", "93.8", "2023-05-22 20:18:15", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("78.67", "92.1", "2023-06-30 04:55:40", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("85.09", "95.7", "2023-07-08 15:10:05", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("79.56", "90.2", "2023-08-17 09:32:30", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("88.23", "96.8", "2023-09-25 14:20:55", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("81.78", "93.4", "2023-10-02 07:45:20", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("77.32", "91.0", "2023-11-10 18:30:45", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("84.10", "94.6", "2023-12-18 11:05:10", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("76.89", "92.3", "2023-01-25 22:40:35", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("90.45", "96.9", "2023-02-02 14:15:00", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("83.22", "93.5", "2023-03-10 06:50:25", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("87.56", "95.1", "2023-04-18 19:25:50", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("80.78", "92.7", "2023-05-26 12:00:15", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("86.10", "95.3", "2023-06-03 03:35:40", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("82.45", "93.9", "2023-07-11 16:10:05", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("78.67", "91.4", "2023-08-18 08:45:30", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("85.09", "95.0", "2023-09-26 21:32:55", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("79.56", "90.6", "2023-10-03 14:00:20", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("88.23", "97.2", "2023-11-11 06:35:45", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("81.78", "94.8", "2023-12-18 19:10:10", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("77.32", "92.4", "2023-01-26 11:45:35", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("84.10", "95.9", "2023-02-02 03:20:00", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("76.89", "91.5", "2023-03-11 16:55:25", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("90.45", "96.1", "2023-04-19 09:30:50", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("83.22", "93.6", "2023-05-27 02:05:15", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("87.56", "95.2", "2023-06-04 17:40:40", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("80.78", "92.8", "2023-07-12 10:15:05", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("86.10", "95.4", "2023-08-20 02:50:30", "Assalto", "Chamar a polícia");

-- Furto
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("48.92", "92.7", "2023-02-02 03:33:55", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("55.34", "88.5", "2023-03-10 11:20:30", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("42.12", "94.3", "2023-04-15 15:05:00", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("50.45", "91.8", "2023-05-22 22:52:25", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("46.67", "90.1", "2023-06-30 08:29:50", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("53.09", "93.7", "2023-07-08 18:45:15", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("47.56", "89.2", "2023-08-17 13:07:40", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("56.23", "94.8", "2023-09-25 16:55:05", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("49.78", "92.4", "2023-10-02 10:20:30", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("45.32", "90.0", "2023-11-10 21:05:55", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("52.10", "93.6", "2023-12-18 14:30:20", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("44.89", "91.3", "2023-01-25 01:05:45", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("57.45", "95.9", "2023-02-02 17:41:10", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("49.22", "92.5", "2023-03-10 09:16:35", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("54.56", "94.1", "2023-04-18 22:51:00", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("48.78", "91.7", "2023-05-26 15:26:25", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("56.10", "95.3", "2023-06-03 07:01:50", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("51.45", "92.9", "2023-07-11 18:37:15", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("47.67", "90.4", "2023-08-18 11:12:40", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("54.09", "94.0", "2023-09-26 00:58:05", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("48.56", "89.6", "2023-10-03 16:23:30", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("57.23", "95.2", "2023-11-11 08:58:55", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("50.78", "92.8", "2023-12-18 21:34:20", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("46.32", "90.3", "2023-01-26 14:09:45", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("53.10", "93.9", "2023-03-06 04:45:10", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("45.89", "91.5", "2023-04-13 18:20:35", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("58.45", "96.1", "2023-05-21 11:56:00", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("50.22", "92.7", "2023-06-28 03:31:25", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("55.56", "94.3", "2023-08-05 17:06:50", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("49.78", "91.9", "2023-09-12 08:42:15", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("56.10", "95.5", "2023-10-20 00:17:40", "Furto", "Notificar a seguradora");



-- Intrusao
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("62.34", "89.1", "2023-02-02 18:53:05", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("70.56", "91.5", "2023-07-10 09:30:30", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("58.12", "94.2", "2023-04-18 13:15:00", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("65.45", "90.7", "2023-05-22 21:02:25", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("72.67", "89.0", "2023-06-29 06:29:50", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("68.09", "92.6", "2023-07-30 16:45:15", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("73.56", "88.1", "2023-08-17 11:07:40", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("64.23", "94.7", "2023-09-25 14:55:05", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("71.78", "91.3", "2023-10-02 08:20:30", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("67.32", "89.9", "2023-11-11 19:05:55", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("74.10", "93.5", "2023-12-13 12:30:20", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("66.89", "90.2", "2023-01-27 23:05:45", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("79.45", "92.8", "2023-02-02 18:41:10", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("71.22", "89.4", "2023-03-19 10:16:35", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("76.56", "93.0", "2023-04-08 23:51:00", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("69.78", "90.6", "2023-05-26 16:26:25", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("78.10", "93.2", "2023-06-01 08:01:50", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("72.45", "90.8", "2023-07-06 19:37:15", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("67.67", "89.3", "2023-08-14 12:12:40", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("74.09", "92.9", "2023-09-09 01:58:05", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("68.56", "88.5", "2023-10-03 17:23:30", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("77.23", "94.1", "2023-11-10 09:58:55", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("70.78", "91.7", "2023-12-12 22:34:20", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("66.32", "89.2", "2023-01-21 15:09:45", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("73.10", "92.8", "2023-03-21 05:45:10", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("65.89", "90.4", "2023-04-10 19:20:35", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("78.45", "93.9", "2023-05-22 11:56:00", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("70.22", "89.7", "2023-06-28 03:31:25", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("75.56", "94.3", "2023-08-05 17:06:50", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("69.78", "91.9", "2023-09-12 08:42:15", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("76.10", "94.5", "2023-10-17 00:17:40", "Intrusão", "Chamar a polícia");

-- Inserts incidente_has_camera

INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (1, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (2, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (3, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (4, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (5, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (6, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (7, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (8, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (9, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (10, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (11, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (12, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (13, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (14, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (15, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (16, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (17, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (18, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (19, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (20, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (21, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (22, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (23, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (24, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (25, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (26, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (27, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (28, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (29, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (30, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (31, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (32, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (33, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (34, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (35, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (36, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (37, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (38, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (39, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (40, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (41, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (42, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (43, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (44, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (45, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (46, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (47, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (48, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (49, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (50, 2, 1);


INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (51, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (52, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (53, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (54, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (55, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (56, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (57, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (58, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (59, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (60, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (61, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (62, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (63, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (64, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (65, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (66, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (67, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (68, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (69, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (70, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (71, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (72, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (73, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (74, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (75, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (76, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (77, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (78, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (79, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (80, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (81, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (82, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (83, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (84, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (85, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (86, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (87, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (88, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (89, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (90, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (91, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (92, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (93, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (94, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (95, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (96, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (97, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (98, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (99, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (100, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (101, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (102, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (103, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (104, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (105, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (106, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (107, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (108, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (109, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (110, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (111, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (112, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (113, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (114, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (115, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (116, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (117, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (118, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (119, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (120, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (121, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (122, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (123, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (124, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (125, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (126, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (127, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (128, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (129, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (130, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (131, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (132, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (133, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (134, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (135, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (136, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (137, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (138, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (139, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (140, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (141, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (142, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (143, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (144, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (145, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (146, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (147, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (148, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (149, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (150, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (151, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (152, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (153, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (154, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (155, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (156, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (157, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (158, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (159, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (160, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (161, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (162, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (163, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (164, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (165, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (166, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (167, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (168, 8, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (169, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (170, 2, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (171, 3, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (172, 4, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (173, 5, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (174, 6, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (175, 7, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (176, 8, 2);
