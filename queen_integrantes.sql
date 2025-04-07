CREATE TABLE integrantes_queen (
id SMALLINT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
data_nascimento DATE,
instrumento VARCHAR(255) NOT NULL
);
DROP TABLE integrantes_queen;
CREATE TABLE banda (
banda_id BIGINT PRIMARY KEY,
nome_banda VARCHAR(255) NOT NULL,
genero VARCHAR(255) NOT NULL,
ano_formacao DATE,
local_origem VARCHAR(255) NOT NULL,
site_oficial VARCHAR(255) NOT NULL,
biografia VARCHAR(500) NOT NULL
);
CREATE TABLE albuns (
album_id SMALLINT PRIMARY KEY,
titulo VARCHAR(255) NOT NULL,
ano_lancamento DATE NOT NULL,
gravadora VARCHAR(255) NOT NULL,
tipo_album VARCHAR(255) NOT NULL,
banda_id SMALLINT
);
DESCRIBE banda;
ALTER TABLE albuns MODIFY banda_id BIGINT;
ALTER TABLE albuns ADD FOREIGN KEY (banda_id) REFERENCES banda (banda_id);
CREATE TABLE musicas (
musica_id SMALLINT PRIMARY KEY,
album_id SMALLINT,
titulo VARCHAR(255) NOT NULL,
duracao DATETIME,
compositor VARCHAR(500) NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
);
CREATE TABLE integrantes (
integrante_id SMALLINT PRIMARY KEY,
nome VARCHAR(500) NOT NULL,
datanasc DATE,
instrumentointg VARCHAR(255) NOT NULL
);
DROP TABLE integrantes;
CREATE TABLE bandas_integrantes (
banda_id BIGINT,
integrante_id SMALLINT,
data_entrada DATE,
data_saida DATE,
FOREIGN KEY (banda_id) REFERENCES banda(banda_id),
FOREIGN KEY (integrante_id) REFERENCES integrantes_queen(id)
);
CREATE TABLE shows (
show_id SMALLINT PRIMARY KEY UNIQUE,
banda_id BIGINT,
data_show DATE,
local_show VARCHAR(500) NOT NULL,
cidade VARCHAR(200) NOT NULL,
pais VARCHAR(200) NOT NULL
);
INSERT INTO integrantes_queen (id, nome, data_nascimento, instrumento) VALUES ('001', 'Freddie Mercury', '1946-09-05', 'vocais');
INSERT INTO integrantes_queen (id, nome, data_nascimento, instrumento) VALUES ('002', 'Brian May', '1947-07-19', 'guitarra');
INSERT INTO integrantes_queen (id, nome, data_nascimento, instrumento) VALUES ('003', 'Roger Taylor', '1949-07-26', 'bateria');
INSERT INTO integrantes_queen (id, nome, data_nascimento, instrumento) VALUES ('004', 'John Deacon', '1951-10-19', 'baixo');

INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('100', 'Queen', '1973-07-13', 'Parlophone', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('101', 'Queen II', '1974-03-08', 'Parlophone', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('102', 'Sheer Heart Attack', '1974-11-08', 'Parlophone', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('103', 'A Night at the Opera', '1975-11-21', 'Parlophone', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('104', 'A Day at the Races', '1976-12-10', 'Parlophone', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('105', 'News of the World', '1977-10-28', 'Parlophone', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('106', 'Jazz', '1978-11-10', 'Parlophone', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('107', 'The Game', '1980-06-30', 'Parlophone', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('108', 'Flash Gordon', '1980-12-08', 'Parlophone', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('109', 'Hot Space', '1982-05-24', 'Parlophone', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('110', 'The Works', '1984-02-27', 'EMI', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('111', 'A Kind of Magic', '1986-06-02', 'Capitol Records', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('112', 'The Miracle', '1989-05-22', 'Parlophone', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('113', 'Innuendo', '1991-01-30', 'Parlophone', 'Estúdio', 10);
INSERT INTO albuns (album_id, titulo, ano_lancamento, gravadora, tipo_album, banda_id) VALUES ('114', 'Made in Heaven', '1995-10-24', 'EMI', 'Estúdio', 10);

SELECT * FROM banda;
INSERT INTO banda (banda_id, nome_banda, genero, ano_formacao, local_origem, site_oficial, biografia) VALUES (10, 'Queen', 'Rock', '1970-10-30', 'Inglaterra', 'queenonlinecom', 'Banda britânica de rock formada em 1970, formada por Freddie Mercury, Brian May, Roger Taylor e John Deacon');
SELECT * FROM albuns;

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('200', '100', 'Keep Yourself Alive', '1973-07-13 00:03:47', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('201', '100', 'Doing All Right', '1973-07-13 00:04:09', 'Brian May, Timothy Staffell');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('202', '100', 'Great King Rat', '1973-07-13 00:05:42', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('203', '100', 'My Fairy King', '1973-07-13 00:04:08', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('204', '100', 'Liar', '1973-07-13 00:06:23', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('205', '100', 'The Night Comes Down', '1973-07-13 00:04:23', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('206', '100', 'Modern Times Rock n Roll', '1973-07-13 00:01:48', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('207', '100', 'Son and Daughter', '1973-07-13 00:03:19', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('208', '100', 'Jesus', '1973-07-13 00:03:44', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('209', '100', 'Seven Seas of Rhye', '1973-07-13 00:01:16', 'Freddie Mercury');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('301', '101', 'Procession', '1974-03-08 00:01:13', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('302', '101', 'Father to Son', '1974-03-08 00:06:13', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('303', '101', 'White Queen (As It Began)', '1974-03-08 00:04:33', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('304', '101', 'Some Day One Day', '1974-03-08 00:04:22', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('305', '101', 'The Loser In The End', '1974-03-08 00:04:01', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('306', '101', 'Ogre Battle', '1974-03-08 00:04:08', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('307', '101', 'The Fairy Fellers Master Stroke', '1974-03-08 00:02:40', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('308', '101', 'Nevermore', '1974-03-08 00:01:18', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('309', '101', 'The March Of The Black Queen', '1974-03-08 00:06:32', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('310', '101', 'Funny How Love Is', '1974-03-08 00:02:49', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('311', '101', 'Seven Seas of Rhye', '1974-03-08 00:02:48', 'Freddie Mercury');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('401', '102', 'Brighton Rock', '1974-11-08 00:05:10', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('402', '102', 'Killer Queen', '1974-11-08 00:02:59', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('403', '102', 'Tenement Funster', '1974-11-08 00:02:46', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('404', '102', 'Flick Of The Wrist', '1974-11-08 00:03:17', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('405', '102', 'Lily of the Valley', '1974-11-08 00:01:44', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('406', '102', 'Now Im Here', '1974-11-08 00:04:12', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('407', '102', 'In The Lap Of The Gods', '1974-11-08 00:03:22', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('408', '102', 'Stone Cold Crazy', '1974-11-08 00:02:13', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('409', '102', 'Dear Friends', '1974-11-08 00:01:07', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('410', '102', 'Misfire', '1974-11-08 00:01:49', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('411', '102', 'Bring Back That Leroy Brown', '1974-11-08 00:02:15', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('412', '102', 'She Makes Me (Stormtrooper In Stilettos)', '1974-11-08 00:04:09', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('413', '102', 'In The Lap Of The Gods... Revisited', '1974-11-08 00:03:46', 'Freddie Mercury');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('501', '103', 'Death On Two Legs (Dedicated To...)', '1975-11-21 00:03:43', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('502', '103', 'Lazing On A Sunday Afternoon', '1975-11-21 00:01:07', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('503', '103', 'Im In Love With My Car', '1975-11-21 00:03:04', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('504', '104', 'Youre My Best Friend', '1975-11-21 00:02:50', 'John Deacon');

UPDATE musicas SET album_id = '103' WHERE musica_id = '504'; -- A música Youre My Best Friend agora está catalogada corretamente --
SELECT * FROM musicas;

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('505', '103', '39', '1975-11-21 00:03:30', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('506', '103', 'Sweet Lady', '1975-11-21 00:04:02', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('507', '103', 'Seaside Rendezvous', '1975-11-21 00:02:14', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('508', '103', 'The Prophets Song', '1975-11-21 00:08:20', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('509', '103', 'Love Of My Life', '1975-11-21 00:03:37', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('510', '103', 'Good Company', '1975-11-21 00:03:23', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('511', '103', 'Bohemian Rhapsody', '1975-11-21 00:05:54', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('512', '103', 'God Save The Queen', '1975-11-21 00:01:15', 'Traditional');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('601', '104', 'Tie Your Mother Down', '1976-12-10 00:04:47', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('602', '104', 'You Take My Breath Away', '1976-12-10 00:05:06', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('603', '104', 'Long Away', '1976-12-10 00:03:33', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('604', '104', 'The Millionaire Waltz', '1976-12-10 00:04:55', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('605', '104', 'You And I', '1976-12-10 00:03:26', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('606', '104', 'Somebody To Love', '1976-12-10 00:04:56', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('607', '104', 'White Man', '1976-12-10 00:04:58', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('608', '104', 'Good Old-Fashioned Lover Boy', '1976-12-10 00:02:53', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('609', '104', 'Drowse', '1976-12-10 00:03:43', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('610', '104', 'Teo Torriatte (Let Us Cling Together)', '1976-12-10 00:05:55', 'Brian May');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('700', '105', 'We Will Rock You', '1977-10-28 00:02:02', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('701', '105', 'We Are The Champions', '1977-10-28 00:02:59', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('702', '105', 'Sheer Heart Attack', '1977-10-28 00:03:27', 'Roger Taylor');