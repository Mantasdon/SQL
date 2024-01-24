--== isoriniu raktu ribojimu patikra ==
-- neegzistuojantis remejas
INSERT INTO mado8357.Steigia VALUES (2000, 00000,321);
-- neegzistuojantis Turnyras
INSERT INTO mado8357.Steigia VALUES (2000, 65430,000);
INSERT INTO mado8357.Dalyvauja VALUES (8901,000);
-- neegzistuojantis zaidejas
INSERT INTO mado8357.Dalyvauja VALUES (0000,321);

UPDATE mado8357.Zaidejas SET Kodas = 1235 WHERE Kodas = 1234;
UPDATE mado8357.Remejas SET ID = 12341 WHERE nr = 12340;
UPDATE mado8357.Turnyrai SET NR = 999 where NR = 987;
-- delete cascade'ai
-- Steigia -> Remejas delete cascade'o patikra
---- Prepare
INSERT INTO mado8357.Remejas VALUES(11111, 'Lietuva', 100000, 'Finasta');
INSERT INTO mado8357.Steigia VALUES (2000, 11111,9012);
SELECT * FROM mado8357.Remejas WHERE ID = 11111;
SELECT * FROM mado8357.Steigia WHERE Remejai = 11111;
---- Delete
DELETE FROM mado8357.Remejas WHERE ID = 11111;
---- Check
SELECT * FROM mado8357.Remejas WHERE ID = 11111;
SELECT * FROM mado8357.Steigia WHERE Remejai = 11111;

-- Steigia -> Remejas delete cascade'o patikra
---- Prepare
INSERT INTO mado8357.Turnyrai VALUES (111, '2023-06-15', 1, 'Lietuva');
INSERT INTO mado8357.Steigia VALUES (2000, 65430,111);
SELECT * FROM mado8357.Turnyrai WHERE NR = 111;
SELECT * FROM mado8357.Steigia WHERE Turnyrai = 111;
---- Delete
DELETE FROM mado8357.Turnyrai WHERE NR = 111;
---- Check
SELECT * FROM mado8357.Turnyrai WHERE NR = 111;
SELECT * FROM mado8357.Steigia WHERE Turnyrai = 111;


-- Dalyvauja -> Zaidejai delete cascade'o patikra
---- Prepare
INSERT INTO mado8357.Zaidejas VALUES (1111, 'Jonas', 'Petraitis', 'JAV', 500);
INSERT INTO mado8357.Dalyvauja VALUES (1111,321);
SELECT * FROM mado8357.Zaidejas WHERE Kodas = 1111;
SELECT * FROM mado8357.Dalyvauja WHERE Turnyrai = 1111;
---- Delete
DELETE FROM mado8357.Zaidejas WHERE Kodas = 1111;
---- Check
SELECT * FROM mado8357.Zaidejas WHERE Kodas = 1111;
SELECT * FROM mado8357.Dalyvauja WHERE Zaidejai = 1111;


-- delete set null'ai

-- Dalyvauja -> Turnyras delete cascade'o patikra
---- Prepare
INSERT INTO mado8357.Turnyrai VALUES (111, '2023-06-15', 1, 'Lietuva');
INSERT INTO mado8357.Dalyvauja VALUES (8901,111);
SELECT * FROM mado8357.Turnyrai WHERE NR = 1111;
SELECT * FROM mado8357.Dalyvauja WHERE Turnyras = 1111;
---- Delete
DELETE FROM mado8357.Turnyrai WHERE NR = 1111;
---- Check
SELECT * FROM mado8357.Turnyrai WHERE NR = 1111;
SELECT * FROM mado8357.Dalyvauja WHERE Turnyras = 1111;
