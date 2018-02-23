CREATE TABLE Participante (
  DNI CHAR(9) NOT NULL,
  nombre VARCHAR(32) NOT NULL,
  ciudad VARCHAR(20) NOT NULL,
  PRIMARY KEY(DNI)
);
CREATE TABLE Charla (
  codigo INT NOT NULL,
  titulo VARCHAR(80) NOT NULL,
  resumen VARCHAR(200) NULL,
  duracion INT DEFAULT 30 NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE Interesado_Charla (
  interesado CHAR(9) NOT NULL,
  charla INT NOT NULL,
  PRIMARY KEY (interesado, charla),
  FOREIGN KEY (interesado)
    REFERENCES PARTICIPANTE(DNI)
    ON DELETE CASCADE,
  FOREIGN KEY (charla)
    REFERENCES CHARLA(codigo)
    ON DELETE CASCADE
);

CREATE TABLE Ponente (
  DNI CHAR(9) NOT NULL,
  nombre VARCHAR(32) NOT NULL,
  PRIMARY KEY (DNI)
);

CREATE TABLE Keyword(
  keyword VARCHAR(25) PRIMARY KEY
);

CREATE TABLE Ponente_Charla (
  ponente CHAR(9) NOT NULL,
  charla INT NOT NULL,
  PRIMARY KEY (ponente, charla),
  FOREIGN KEY (ponente)
    REFERENCES PONENTE(DNI)
    ON DELETE CASCADE,
  FOREIGN KEY (charla)
    REFERENCES CHARLA(codigo)
    ON DELETE CASCADE
);

CREATE TABLE Keywords_Charla (
  charla INT NOT NULL,
  keyword VARCHAR(20) NOT NULL,
  PRIMARY KEY(charla, keyword),
  FOREIGN KEY (charla)
    REFERENCES CHARLA(codigo)
    ON DELETE CASCADE,
  FOREIGN KEY (keyword)
    REFERENCES KEYWORD(keyword)
);
