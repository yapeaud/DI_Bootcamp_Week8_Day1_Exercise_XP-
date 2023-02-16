--    Creation de la base de donnée
   CREATE DATABASE bootcamp;

--    Creation de la table étudiants
 CREATE TABLE etudiants ( id SERIAL PRIMARY KEY,
    first_name VARCHAR (100) NOT NULL,
    last_name VARCHAR (100) NOT NULL,
    birth_date DATE NOT NULL 
 );

   -- Insérez les données dans la table des etudiants
         INSERT INTO etudiants (first_name, last_name, birth_date) VALUES ('Marc','Benichou', '02/11/1998'), ('Yoan','Cohen', '03/12/2010'), ('Lea','Benichou',' 27/07/1987'), ('Amelia','Dux', '07/04/1996'), ('David','Grez', '14/06/2003'), ('Omer','Simpson',' 03/10/1980');
         INSERT INTO etudiants (first_name, last_name, birth_date) VALUES ('Beda','Yapeaud', 17/05/1991);--l' id est 7

   -- Récupérer toutes les donn  ées de la table.
         SELECT * FROM etudiants;

   -- Récupérer tous les noms et prénoms des étudiants.
         SELECT first_name, last_name FROM etudiants;
      
   -- Récupérer l'étudiant dont l'id est égal à 2.
         SELECT first_name, last_name FROM etudiants WHERE id = 2;

   -- Récupérer l'élève dont le nom de famille est Bénichou ET le prénom est Marc.
         SELECT first_name, last_name FROM etudiants WHERE first_name = 'Bénichou' AND last_name = 'Marc' ;

   -- Récupérez les étudiants dont le nom de famille est Benichou OU dont le prénom est Marc.
         SELECT first_name, last_name FROM etudiants WHERE first_name = 'Bénichou' OR last_name = 'Marc'; 

   -- Récupérez les étudiants dont les prénoms contiennent la lettre a .
         SELECT * FROM etudiants WHERE first_name LIKE '%a%'; 
         
   -- Récupérer les étudiants dont le prénom commence par la lettre a.
        SELECT * FROM etudiants WHERE first_name LIKE 'a%';
        
   -- Récupérer les étudiants dont le prénom se termine par la lettre a
       SELECT * FROM etudiants WHERE first_name LIKE '%a';

  -- Récupérer les étudiants dont l'avant-dernière lettre de leur prénom est un a.
       SELECT * FROM etudiants WHERE first_name LIKE '%__a_';

  -- Récupérer les étudiants dont les identifiants sont égaux à 1 et 3.
      SELECT * FROM etudiants WHERE id=1 OR id=3;
  
  -- Récupérer les étudiants dont la date de naissance est égale ou postérieure au 1/01/2000
      SELECT * FROM etudiants WHERE birth_date >= '2000-01-01';