-- Selezionare tutti gli studenti nati nel 1990 (160)
SELECT *
FROM `students`
WHERE `date_of_birth`LIKE "1990%";

--Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT *
FROM `courses`
WHERE `cfu` > 10;

--Selezionare tutti gli studenti che hanno più di 30 anni


-- Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di
-- laurea (286)
SELECT *
FROM `courses`
WHERE `period` AND`year`= 1;
--(non è giusto)

-- Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del
-- 20/06/2020 (21)
SELECT *
FROM `exams` 
WHERE `hour` >= 14
ORDER BY `hour` DESC;


-- Da quanti dipartimenti è composta l'università? (12)


-- Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT *
 FROM `teachers`
 WHERE `phone` IS NULL;