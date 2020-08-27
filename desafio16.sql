select * from employees; select employee_id, count(JOB_ID) from job_history group by employee_id;

SELECT ROUND(AVG(E.salary), 2) 'Média salarial'
FROM hr.jobs J 
INNER JOIN hr.employees E on E.JOB_ID = J.JOB_ID
GROUP BY J.JOB_TITLE 
HAVING J.JOB_TITLE = 'President';

SELECT COUNT(JH.JOB_ID)
CREATE function buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(100))
RETURNS INT READS SQL DATA

BEGIN
DECLARE count_total INT;
SELECT  COUNT(JH.JOB_ID) total_empregos
FROM hr.job_history JH
INNER JOIN hr.employees E on E.EMPLOYEE_ID = JH.EMPLOYEE_ID
GROUP BY JH.EMPLOYEE_ID, E.EMAIL
HAVING E.EMAIL = EMAIL
INTO count_total;
RETURN count_total;
END $$
