--NOTE Hobbisti

INSERT INTO hobbista VALUES (
  'mrorsi43kgli88kn',
  'mario',
  'rossi',
  '34443378737'
);

INSERT INTO hobbista VALUES (
  'mrkrsi43kgli66hk',
  'marco',
  'bianchi',
  '34543378737'
);

INSERT INTO hobbista VALUES (
  'provrd44dkli66hk',
  'piero',
  'verdi',
  '3455887237'
);

--NOTE DIPENDENTI

INSERT INTO dipendente VALUES (
  'ginbnh43kgli88kn',
  'gino',
  'bianchi'
);

INSERT INTO dipendente VALUES (
  'gnnnri43kgli88kn',
  'gianni',
  'neri'
);

--NOTE CIRCUITI

INSERT INTO circuito (lunghezza, citta, via, civico) VALUES (
  30,
  'parma',
  'via ximenes',
  3
);

INSERT INTO circuito (lunghezza, citta, via, civico) VALUES (
  32,
  'reggio emilia',
  'piazza liberta',
  34
);

--NOTE TORNEI

INSERT INTO torneo (anno, vincitore) VALUES (
  2015,
  NULL
);

--NOTE MODELLINO

INSERT INTO modellino VALUES(
  'tigre a quattro ruote',
  'TO34TK',
  'mrkrsi43kgli66hk' --marco
);

INSERT INTO modellino VALUES(
  'pantera rombante',
  'TO21RZ',
  'mrkrsi43kgli66hk' --marco
);

INSERT INTO modellino VALUES(
  'serpe di giada',
  '4Q51SZ',
  'provrd44dkli66hk' --piero
);


INSERT INTO modellino VALUES(
  'la bestia',
  '5F31KK',
  'mrorsi43kgli88kn' --mario
);

--NOTE GARA
INSERT INTO gara (data, id_torneo, codice_dipendente, id_circuito) VALUES(
  '2015-01-07',
  1,
  'ginbnh43kgli88kn',
  1
);

INSERT INTO gara (data, id_torneo, codice_dipendente, id_circuito) VALUES(
  '2015-01-14',
  1,
  'ginbnh43kgli88kn',
  2
);

INSERT INTO gara (data, id_torneo, codice_dipendente, id_circuito) VALUES(
  '2015-01-21',
  1,
  'gnnnri43kgli88kn',
  1
);

--NOTE PARTECIPAZIONE
--GARA 1
INSERT INTO partecipazione VALUES (
  '4Q51SZ',
  1,
  1,
  FALSE,
  FALSE
);

INSERT INTO partecipazione VALUES (
  '5F31KK',
  1,
  2,
  FALSE,
  FALSE
);

INSERT INTO partecipazione VALUES (
  'TO34TK',
  1,
  NULL,
  TRUE,
  TRUE
);

--GARA 2
INSERT INTO partecipazione VALUES (
  '4Q51SZ',
  1,
  1,
  FALSE,
  FALSE
);

INSERT INTO partecipazione VALUES (
  '5F31KK',
  1,
  2,
  FALSE,
  FALSE
);

INSERT INTO partecipazione VALUES (
  'TO34TK',
  1,
  NULL,
  TRUE,
  TRUE
);

--GARA 3
INSERT INTO partecipazione VALUES (
  '4Q51SZ',
  2,
  1,
  FALSE,
  FALSE
);

INSERT INTO partecipazione VALUES (
  '5F31KK',
  1,
  1,
  FALSE,
  FALSE
);

INSERT INTO partecipazione VALUES (
  'TO21RZ',
  1,
  NULL,
  TRUE,
  TRUE
);
