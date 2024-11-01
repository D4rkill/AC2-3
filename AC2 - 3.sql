create table Animais (
    id int primary key,
    nome varchar(50),
    nasc date,
    peso decimal(10,2),
    cor varchar(50)
);

insert into Animais values (1, 'Ágata', '2015-04-09', 13.9, 'branco');
insert into Animais values (2, 'Félix',  '2016-06-06', 14.3, 'preto');
insert into Animais values (3, 'Tom',  '2013-02-08', 11.2, 'azul');
insert into Animais values (4, 'Garfield',  '2015-07-06', 17.1, 'laranja');
insert into Animais values (5, 'FraJola',  '2013-08-01', 13.7, 'preto');
insert into Animais values (6, 'Manda-chuva',  '2012-02-03', 12.3, 'amarelo');
insert into Animais values (7, 'Snowball',  '2014-04-06', 13.2, 'preto');
insert into Animais values (8, 'Ágata',  '2015-08-03', 11.9, 'azul');
insert into Animais values (9, 'Gato de Botas',  '2012-12-10', 11.6, 'amarelo');
insert into Animais values (10, 'Kitty',  '2020-04-06', 11.6, 'amarelo');
insert into Animais values (11, 'Milu',  '2013-02-04', 17.9, 'branco');
insert into Animais values (12, 'Pluto',  '2012-01-03', 12.7, 'amarelo');
insert into Animais values (13, 'Pateta',  '2015-05-01', 17.7, 'preto');
insert into Animais values (14, 'Snoopy',  '2013-07-02', 18.2, 'branco');
insert into Animais values (15, 'Rex',  '2019-11-03', 19.7, 'bege');
insert into Animais values (16, 'Bidu',  '2012-09-08', 12.4, 'azul');
insert into Animais values (17, 'Dum Dum',  '2015-04-06', 11.6, 'laranja');
insert into Animais values (18, 'Muttley',  '2011-02-03', 14.3, 'laranja');
insert into Animais values (19, 'Scooby',  '2012-01-01', 19.7, 'marrom');
insert into Animais values (20, 'Rufus',  '2014-04-05', 19.7, 'branco');
insert into Animais values (21, 'Rex',  '2021-08-19', 19.7, 'branco');

-- Altere o nome do Pateta para Goofy
UPDATE Animais
SET nome = 'Goofy'
WHERE nome = 'Pateta';

-- Altere o peso do Garfield para 10 kilogramas
UPDATE Animais
SET peso = 10.0
WHERE nome = 'Garfield';

-- Altere a cor de todos os gatos para laranja
UPDATE Animais
SET cor = 'laranja'
WHERE nome IN ('Félix', 'Tom', 'Snowball', 'Gato de Botas', 'Kitty');

-- Crie um campo altura para os animais
ALTER TABLE Animais
ADD altura decimal(5,2);

-- Crie um campo observação para os animais
ALTER TABLE Animais
ADD observacao varchar(255);

-- Remova todos os animais que pesam mais que 200 kilogramas
DELETE FROM Animais
WHERE peso > 200;

-- Remova todos os animais cujo nome inicie com a letra ‘C’
DELETE FROM Animais
WHERE nome LIKE 'C%';

-- Remova o campo cor dos animais
ALTER TABLE Animais
DROP COLUMN cor;

-- Aumente o tamanho do campo nome dos animais para 80 caracteres
ALTER TABLE Animais
MODIFY nome varchar(80);

-- Remova todos os gatos e cachorros
DELETE FROM Animais
WHERE nome IN ('Félix', 'Tom', 'Snowball', 'Gato de Botas', 'Kitty', 'Scooby', 'Rex');

-- Remova o campo data de nascimento dos animais
ALTER TABLE Animais
DROP COLUMN nasc;

-- Remova todos os animais
DELETE FROM Animais;

-- Remova a tabela especies (caso exista)
DROP TABLE IF EXISTS especies;

