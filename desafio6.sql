SELECT UCASE(CONCAT(A.FIRST_NAME,' ',A.LAST_NAME)) AS 'Nome Completo',
A.JOB_ID AS 'Cargo',
B.START_DATE as 'Data de início do cargo',
C.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees as A
INNER JOIN hr.job_history AS B
ON A.EMPLOYEE_ID = B.EMPLOYEE_ID
LEFT JOIN hr.departments AS C
ON A.DEPARTMENT_ID = C.DEPARTMENT_ID
ORDER BY 1 DESC, 2;
