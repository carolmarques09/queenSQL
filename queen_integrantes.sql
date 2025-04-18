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
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('703', '105', 'All Dead, All Dead', '1977-10-28 00:03:09', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('704', '105', 'Spread Your Wings', '1977-10-28 00:04:34', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('705', '105', 'Fight From The Inside', '1977-10-28 00:03:01', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('706', '105', 'Get Down, Make Love', '1977-10-28 00:03:50', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('707', '105', 'Sleeping On The Sidewalk', '1977-10-28 00:03:06', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('708', '105', 'Who Needs You', '1977-10-28 00:03:06', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('709', '105', 'Its Late', '1977-10-28 00:06:26', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('710', '105', 'My Melancholy Blues', '1977-10-28 00:03:31', 'Freddie Mercury');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('800', '106', 'Mustapha', '1977-11-10 00:03:01', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('801', '106', 'Fat Bottomed Girls', '1977-11-10 00:04:15', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('802', '106', 'Jealousy', '1977-11-10 00:03:13', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('803', '106', 'Bicycle Race', '1977-11-10 00:03:00', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('804', '106', 'If You Cant Beat Them', '1977-11-10 00:04:15', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('805', '106', 'Let Me Entertain You', '1977-11-10 00:03:01', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('806', '106', 'Dead On Time', '1977-11-10 00:03:23', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('807', '106', 'In Only Seven Days', '1977-11-10 00:02:29', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('808', '106', 'Dreamers Ball', '1977-11-10 00:03:30', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('809', '106', 'Fun It', '1977-11-10 00:03:28', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('810', '106', 'Leaving Home Aint Easy', '1977-11-10 00:03:15', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('811', '106', 'Dont Stop Me Now', '1977-11-10 00:03:29', 'Brian May, Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('812', '106', 'More Of That Jazz', '1977-11-10 00:04:16', 'Roger Taylor');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('900', '107', 'Play The Game', '1980-06-30 00:03:32', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('901', '107', 'Dragon Attack', '1980-06-30 00:04:18', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('902', '107', 'Another One Bites The Dust', '1980-06-30 00:03:34', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('903', '107', 'Need Your Loving Tonight', '1980-06-30 00:02:49', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('904', '107', 'Crazy Little Thing Called Love', '1980-06-30 00:02:43', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('905', '107', 'Rock It (Prime Jive)', '1980-06-30 00:04:33', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('906', '107', 'Dont Try Suicide', '1980-06-30 00:03:52', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('907', '107', 'Sail Away Sweet Sister', '1980-06-30 00:03:33', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('908', '107', 'Coming Soon', '1980-06-30 00:02:50', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('909', '107', 'Save Me', '1980-06-30 00:03:49', 'Brian May');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1000', '108', 'Flashs Theme', '1980-12-08 00:03:29', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1001', '108', 'In The Space Capsule (The Love Theme)', '1980-12-08 00:02:42', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1002', '108', 'Mings Theme (In The Court of Ming The Merciless)', '1980-12-08 00:02:40', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1003', '108', 'The Ring (Hypnotic Seduction of Dale)', '1980-12-08 00:00:57', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1004', '108', 'Football Fight', '1980-12-08 00:01:28', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1005', '108', 'In The Death Cell (Love Theme Reprise)', '1980-12-08 00:02:24', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1006', '108', 'Execution of Flash', '1980-12-08 00:01:05', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1007', '108', 'The Kiss (Aura Resurrects Flash)', '1980-12-08 00:01:44', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1008', '108', 'Arboria (Planet Of The Tree Men)', '1980-12-08 00:01:41', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1009', '108', 'Escape From The Swamp', '1980-12-08 00:01:43', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1010', '108', 'Flash To The Rescue', '1980-12-08 00:02:43', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1011', '108', 'Vultans Theme (Attack Of The Hawk Men)', '1980-12-08 00:01:12', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1012', '108', 'Battle Theme', '1980-12-08 00:02:18', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1013', '108', 'The Wedding March', '1980-12-08 00:00:56', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1014', '108', 'Marriage Of Dale And Ming (And Flash Approaching)', '1980-12-08 00:02:04', 'Brian May, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1015', '108', 'Crash Dive On Mingo City', '1980-12-08 00:01:00', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1016', '108', 'Flashs Theme Reprise', '1980-12-08 00:01:23', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1017', '108', 'The Hero', '1980-12-08 00:03:33', 'Brian May');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1100', '109', 'Staying Power', '1982-05-24 00:04:12', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1101', '109', 'Dancer', '1982-05-24 00:03:50', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1102', '109', 'Back Chat', '1982-05-24 00:04:35', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1103', '109', 'Body Language', '1982-05-24 00:04:31', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1104', '109', 'Action This Day', '1982-05-24 00:03:34', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1105', '109', 'Put Out The Fire', '1982-05-24 00:03:18', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1106', '109', 'Life Is Real (Song For Lennon)', '1982-05-24 00:03:31', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1107', '109', 'Calling All Girls', '1982-05-24 00:03:51', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1108', '109', 'Las Palabras De Amor (The Words Of Love)', '1982-05-24 00:04:31', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1109', '109', 'Cool Cat', '1982-05-24 00:03:29', 'Freddie Mercury, John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1110', '109', 'Under Pressure', '1982-05-24 00:04:08', 'David Bowie, Brian May, Freddie Mercury, John Deacon, Roger Taylor');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1200', '110', 'Radio Ga Ga', '1984-02-27 00:05:48', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1201', '110', 'Tear It Up', '1984-02-27 00:03:24', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1202', '110', 'Its A Hard Life', '1984-02-27 00:04:06', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1203', '110', 'Man On The Prowl', '1984-02-27 00:03:25', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1204', '110', 'Machines (or Back To Humans)', '1984-02-27 00:05:07', 'Brian May, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1205', '110', 'I Want To Break Free', '1984-02-27 00:03:18', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1206', '110', 'Keep Passing The Open Windows', '1984-02-27 00:05:21', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1207', '110', 'Hammer To Fall', '1984-02-27 00:04:25', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1208', '110', 'Is This The World We Created...?', '1984-02-27 00:02:14', 'Brian May, Freddie Mercury');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1300', '111', 'One Vision', '1986-06-02 00:05:11', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1301', '111', 'A Kind Of Magic', '1986-06-02 00:04:24', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1302', '111', 'One Year Of Love', '1986-06-02 00:04:27', 'John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1303', '111', 'Pain Is So Close To Pleasure', '1986-06-02 00:04:21', 'Freddie Mercury, John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1304', '111', 'Friends Will Be Friends', '1986-06-02 00:04:06', 'Freddie Mercury, John Deacon');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1305', '111', 'Who Wants To Live Forever', '1986-06-02 00:05:15', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1306', '111', 'Gimme The Prize', '1986-06-02 00:04:33', 'Brian May');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1307', '111', 'Dont Lose Your Head', '1986-06-02 00:04:38', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1308', '111', 'Princes Of The Universe', '1986-06-02 00:03:33', 'Freddie Mercury');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1400', '112', 'Party', '1989-05-22 00:02:24', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1401', '112', 'Khashoggis Ship', '1989-05-22 00:02:47', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1402', '112', 'The Miracle', '1989-05-22 00:05:01', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1403', '112', 'I Want It All', '1989-05-22 00:04:40', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1404', '112', 'The Invisible Man', '1989-05-22 00:03:57', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1405', '112', 'Breakthru', '1989-05-22 00:04:08', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1406', '112', 'Rain Must Fall', '1989-05-22 00:04:23', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1407', '112', 'Scandal', '1989-05-22 00:04:42', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1408', '112', 'My Baby Does Me', '1989-05-22 00:03:22', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1409', '112', 'Was It All Worth It', '1989-05-22 00:05:47', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1500', '113', 'Innuendo', '1991-01-30 00:06:33', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1501', '113', 'Im Going Slightly Mad', '1991-01-30 00:04:22', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1502', '113', 'Headlong', '1991-01-30 00:04:37', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1503', '113', 'I Cant Live With You', '1991-01-30 00:04:33', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1504', '113', 'Dont Try So Hard', '1991-01-30 00:03:39', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1505', '113', 'Ride The Wild Wind', '1991-01-30 00:04:42', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1506', '113', 'All Gods People', '1991-01-30 00:04:21', 'Brian May, Freddie Mercury, John Deacon, Mike Moran, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1507', '113', 'These Are The Days Of Our Lives', '1991-01-30 00:04:15', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1508', '113', 'Delilah', '1991-01-30 00:03:34', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1509', '113', 'The Hitman', '1991-01-30 00:04:56', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1510', '113', 'Bijou', '1991-01-30 00:03:36', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1511', '113', 'The Show Must Go On', '1991-01-30 00:04:37', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');

INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1600', '114', 'Its A Beautiful Day', '1995-10-24 00:02:34', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1601', '114', 'Made In Heaven', '1995-10-24 00:05:24', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1602', '114', 'Let Me Live', '1995-10-24 00:04:45', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1603', '114', 'Mother Love', '1995-10-24 00:04:46', 'Brian May, Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1604', '114', 'My Life Has Been Saved', '1995-10-24 00:03:15', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1605', '114', 'I Was Born To Love You', '1995-10-24 00:04:49', 'Brian May, Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1606', '114', 'Heaven For Everyone', '1995-10-24 00:05:36', 'Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1607', '114', 'Too Much Love Will Kill You', '1995-10-24 00:04:19', 'Brian May, Elizabeth Lambers, Frank Musker');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1608', '114', 'You Dont Fool Me', '1995-10-24 00:05:24', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1609', '114', 'A Winters Tale', '1995-10-24 00:03:50', 'Freddie Mercury');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1610', '114', 'Its A Beautiful Day (Reprise)', '1995-10-24 00:03:00', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1611', '114', 'Yeah', '1995-10-24 00:00:04', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');
INSERT INTO musicas (musica_id, album_id, titulo, duracao, compositor) VALUES ('1612', '114', 'Untitled', '1995-10-24 00:22:34', 'Brian May, Freddie Mercury, John Deacon, Roger Taylor');

-- As datas de lançamento dos álbuns podem estar incorretas -- 