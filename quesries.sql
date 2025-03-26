-- Selezionare tutti gli studenti nati nel 1990 (160)
SELECT *
FROM `students`
WHERE `date_of_birth`LIKE "1990%";

--Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT *
FROM `courses`
WHERE `cfu` > 10;

--Selezionare tutti gli studenti che hanno più di 30 anni
SELECT `id`, `name`, `surname`, `date_of_birth`, TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE())
FROM `students`
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) > 30
ORDER BY `age`

-- Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di
-- laurea (286)
SELECT *
FROM `courses`
WHERE `period` AND`year`= 1;
--(non è giusto)
SELECT *
FROM `courses`
WHERE `period` 
AND`year`LIKE "1%";

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




-------------------Query con GROUP BY

-- Contare quanti iscritti ci sono stati ogni anno
 SELECT YEAR(`enrolment_data`), COUNT(*)
FROM `students`
GROUP BY YEAR(`enrolment_data`);

--Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT `office_address`, COUNT(*)
FROM `teachers`
GROUP BY `office_address`;

-- Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, AVG(`vote`)
FROM `exam_student`
GROUP BY `exam_id`;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`, COUNT(*)
FROM `degrees`
GROUP BY `department_id`;

--------Query con JOIN
--Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

