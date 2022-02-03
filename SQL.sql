BEGIN TRANSACTION;

/* Create a table called NAMES */
CREATE TABLE NAMES(Id integer PRIMARY KEY, Name text, age int, job text);


/* Create few records in this table */
INSERT INTO NAMES VALUES(1,'Tom', 28, 'Cuisinier');
INSERT INTO NAMES VALUES(2,'Lucy', 18, 'Etudiante');
INSERT INTO NAMES VALUES(3,'Frank', 31, 'Cariste');
INSERT INTO NAMES VALUES(4,'Jane', 21, 'Musicien');
INSERT INTO NAMES VALUES(5,'Robert', 54, 'Chauffeur');
COMMIT;

/* Display all the records from the table */
--SELECT * FROM NAMES;

--select job from names; 

--select name from names; 

--select name, job from names; 

--select name, job, age from names; 

--select * from names where name = "tom"; 

--select * from names where job = "chauffeur" ; 


select * from names where job = "Chauffeur" or name = "Tom"; 
  -- addicher les personnes dont les professions sont 'cuisiner' ou 'cariste' ou
  -- 'chauffeur'
  select * from names where job IN ('Cuisinier', 'Cariste', 'Chauffeur');
  -- afficher les personnes entre 30 et 40 ans => BETWEEN
  select * from names where age BETWEEN 30 AND 40; 
  -- Compter le nombre de personnes qui ont entre 30 et 40 ans => COUNT
  select count (*) from names where age between 30 and 40; 
  -- Moyenne d'age des personnes présentes dans le table regardez AVG
  select avg (age) from names; 
  -- Je  veux les métiers qui contient "e" et "ir" 
  -- utilisez LIKE
  CREATE TABLE NURSERIE(id integer PRIMARY KEY, Name varchar (40), prenom varchar(40), sexe text, age int, metiere text, id_projet int);
  CREATE TABLE PROJET (Id integer PRIMARY KEY, nom_projet text);
  
INSERT INTO NURSERIE VALUES (1, 'DE RUYVER', 'Alexandra', 'feminin', 29, 'hôtesse de caisse', 1);
INSERT INTO NURSERIE VALUES (2, 'SARTORIS', 'Manon', 'feminin', 26, 'hôtesse de caisse', 1);
INSERT INTO NURSERIE VALUES (3, 'VANDENBERGHE', 'Hubert', 'Masculin', 40, 'Imprimeur', 2);
INSERT INTO NURSERIE VALUES (4, 'ALTINKAYNAK', 'Zekiye', 'feminin', 29, 'Infirmière', 1);
INSERT INTO NURSERIE VALUES (5, 'JAQUACHI', 'Monique', 'feminin', 53, 'Vendeuse', 1);
INSERT INTO NURSERIE VALUES (6, 'GIROUX', 'Romain', 'feminin', 45, 'Logistique', Null);
INSERT INTO NURSERIE VALUES (7, 'CORDOBA', 'David', 'Masculin', 28, 'Musicien', 1);

select * from nurserie; 
insert into projet values( 1, 'dev web'); 
insert into projet values( 2, 'dev web movil');
insert into projet values( 3, 'designe');

select * from projet;

insert into nurserie values(8, 'MARTIN', 'Lea', 'feminin', 20, null, 3); 
select * from nurserie; 

update nurserie set age = age + 1 where prenom = "leéa";
select * from nurserie where prenom = "léa";

--alex à changé d'avis,
--Elle veux faire dev web mobile

update nurserie set id_projet = id_projet +1 where prenom = "Alexandra";
update nurserie set id_projet = (select id from projet where nom_projet = "dev web mobile") where prenom = "Alexandra" ; 
-- afficher les prénom avec le nom du projet
select prenom, nom_projet from nurserie, projet where id_projet = projet.id and 
select "";

select prenom, nom_projet
from nurserie join projet 
on id_projet = projet.id ;

select prenom from nurserie where id_projet is null;
-- léa a trouvé une formation de Disigner à Lyon, elle commence aujourd'hui, on va l'enlever de l atable 
delete from nurserie 
where prenom = "léa"; 

select * from nurserie; 

-- Bravo 