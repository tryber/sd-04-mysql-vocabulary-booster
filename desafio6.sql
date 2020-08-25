SELECT * FROM hr.job_history;
SELECT UCASE(CONCAT(A.FIRST_NAME,' ',A.LAST_NAME)) AS 'Nome Completo', B.START_DATE as 'Data de início',
A.SALARY AS 'Salário'
FROM hr.employees as A
INNER JOIN hr.job_history AS B
ON A.EMPLOYEE_ID = B.EMPLOYEE_ID
-- WHERE MONTH(B.START_DATE IN (1,2,3))
;
