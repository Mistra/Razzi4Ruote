DROP TABLE IF EXISTS hobbista CASCADE;
CREATE TABLE hobbista (
  codice_fiscale VARCHAR(16) PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  cognome VARCHAR(30) NOT NULL,
  telefono TEXT NOT NULL
);

DROP TABLE IF EXISTS dipendente CASCADE;
CREATE TABLE dipendente (
  codice_fiscale VARCHAR(16) PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  cognome VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS circuito CASCADE;
CREATE TABLE circuito (
  id SERIAL PRIMARY KEY,
  lunghezza INT NOT NULL,
  citta TEXT NOT NULL,
  via TEXT NOT NULL,
  civico INT NOT NULL,
  constraint indirizzo_unico unique (citta, via, civico)
);

DROP TABLE IF EXISTS torneo CASCADE;
CREATE TABLE torneo (
  id SERIAL PRIMARY KEY,
  anno INT NOT NULL,
  vincitore VARCHAR(16) REFERENCES hobbista(codice_fiscale)
);

DROP TABLE IF EXISTS modellino CASCADE;
CREATE TABLE modellino (
  nome TEXT NOT NULL,
  targa VARCHAR(6) PRIMARY KEY,
  id_hobbista VARCHAR(16) REFERENCES hobbista(codice_fiscale)
);

DROP TABLE IF EXISTS gara CASCADE;
CREATE TABLE gara (
  id SERIAL PRIMARY KEY,
  data DATE NOT NULL,
  id_torneo INT REFERENCES torneo(id),
  codice_dipendente VARCHAR(16) REFERENCES dipendente(codice_fiscale),
  id_circuito INT REFERENCES circuito(id)
);

DROP TABLE IF EXISTS partecipazione CASCADE;
CREATE TABLE partecipazione (
  targa_modellino VARCHAR(10) REFERENCES modellino(targa),
  id_gara INT REFERENCES gara(id),
  posizione INT,
  squalificato BOOLEAN,
  infrazione BOOLEAN
);
