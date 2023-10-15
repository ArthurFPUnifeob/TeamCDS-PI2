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

INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES ("Team Security", "19986577238", "team.security@gmail.com", "Av. Dr. Octávio da Silva Bastos, 2439 - Jd Nova São João - São João da Boa Vista - SP", "59.764.555/0001-52", "unifeob@123");
INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES ("ABC Consultoria", "1122334455", "abcconsultoria@gmail.com", "Rua das Flores, 123 - Centro - São Paulo - SP", "12.345.678/0001-90", "senha123");
INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES ("Tech Solutions", "2143658790", "techsolutions@email.com", "Rua dos Programadores, 456 - Tech Park - Campinas - SP", "98.765.432/0001-21", "securepass");
INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES ("EducaMais", "3175489067", "contato@educa-mais.com", "Avenida das Escolas, 789 - Educação City - Belo Horizonte - MG", "76.543.210/0001-34", "edu123");
INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES ("HealthCare Ltda.", "4198765432", "info@healthcare.com", "Rua da Saúde, 567 - Vida Saudável - Rio de Janeiro - RJ", "23.456.789/0001-45", "healthpass");
INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES ("GreenTech Solutions", "5278456901", "info@greentechsolutions.com", "Avenida das Árvores, 890 - Ecoville - Curitiba - PR", "34.567.890/0001-56", "green123");
INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES ("Foodie Delights", "6369584732", "contact@foodiedelights.com", "Rua dos Sabores, 123 - Gourmet Plaza - São Paulo - SP", "45.678.901/0001-67", "tastyfood");
INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES ("AutoParts Express", "7465321987", "info@autopartsexpress.com", "Avenida dos Motores, 456 - Carville - Porto Alegre - RS", "56.789.012/0001-78", "autoparts123");
INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES ("Travel Adventures", "9658743102", "travel@adventures.com", "Avenida das Viagens, 567 - Explore City - Fortaleza - CE", "78.901.234/0001-90", "adventure123");
INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES ("EcoFriendly Products", "1057864329", "info@ecofriendlyproducts.com", "Rua Sustentável, 123 - Green Valley - Florianópolis - SC", "89.012.345/0001-01", "ecopass");

INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Infravermelho", "Predio A sala 14", "1");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Normal", "Entrada Principal", "2");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Noturna", "Estacionamento", "3");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Normal", "Corredor 2º Andar", "4");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Normal", "Sala de Servidores", "5");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Normal", "Área de Carga e Descarga", "6");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Infravermelho", "Corredor Principal", "7");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Noturna", "Estoque", "8");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Infravermelho", "Escritório de Administração", "9");
INSERT INTO camera (tipo, localizacao, empresa_idempresa) VALUES ("Normal", "Área de Estacionamento", "10");

INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("75.87", "95.9", "2023-01-11 22:09:30", "Incendio", "ligar 193");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("63.42", "88.3", "2023-02-08 11:55:20", "Roubo", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("52.16", "91.5", "2023-03-03 10:12:25", "Intrusão", "Notificar o proprietário");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("89.75", "97.2", "2023-04-06 13:28:30", "Vandalismo", "Registrar ocorrência");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("75.01", "90.8", "2023-06-07 02:47:40", "Incêndio", "Chamar o Corpo de Bombeiros");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("48.92", "92.7", "2023-07-02 03:33:55", "Furto", "Notificar a seguradora");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("62.34", "89.1", "2023-08-02 18:53:05", "Intrusão", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("81.22", "94.0", "2023-09-02 17:12:35", "Assalto", "Chamar a polícia");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("53.77", "88.9", "2023-12-02 08:15:55", "Vandalismo", "Notificar as autoridades");
INSERT INTO incidente (gravidade, confDetec, tempo, tipo, acao) VALUES ("72.45", "93.4", "2023-11-02 14:22:10", "Roubo", "Chamar a polícia");

INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (1, 1, 1);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (2, 2, 2);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (3, 3, 3);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (4, 4, 4);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (5, 5, 5);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (6, 6, 6);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (7, 7, 7);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (8, 8, 8);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (9, 9, 9);
INSERT INTO incidente_has_camera (incidente_idincidente, camera_idcamera, camera_empresa_idempresa) VALUES (10, 10, 10);
