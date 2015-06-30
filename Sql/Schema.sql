
CREATE TABLE hobbista (
  codice_fiscale VARCHAR(16) PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  cognome VARCHAR(30) NOT NULL,
  telefono text
);

CREATE TABLE dipendente (
  codice_fiscale VARCHAR(16) PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  cognome VARCHAR(30) NOT NULL
);

CREATE TABLE circuito (
  id INT PRIMARY KEY,
  lunghezza INT NOT NULL,
  citta TEXT NOT NULL,
  via TEXT NOT NULL,
  civico INT NOT NULL
);

CREATE TABLE torneo (
  id INT PRIMARY KEY,
  anno INT NOT NULL,
  vincitore VARCHAR(16) REFERENCES hobbista(codice_fiscale)
);

CREATE TABLE modellino (
  targa VARCHAR(10) PRIMARY KEY,
  id_hobbista VARCHAR(16) REFERENCES hobbista(codice_fiscale)
);

CREATE TABLE gara (
  id INT PRIMARY KEY,
  data DATE NOT NULL,
  id_torneo INT, REFERENCES torneo(id),
  codice_dipendente VARCHAR(16) REFERENCES dipendente(codice_fiscale),
  id_circuito INT REFERENCES circuito(id)
);

CREATE TABLE partecipazione (
  targa_modellino VARCHAR(10) REFERENCES modellino(targa),
  id_gara INT REFERENCES gara(id),
  posizione INT,
  squalificato BOOLEAN,
  infrazione BOOLEAN
);
