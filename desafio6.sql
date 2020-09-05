SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
(
SELECT JOB_TITLE
FROM hr.jobs
WHERE JOB_ID = E.JOB_ID
) AS 'Cargo',
HIRE_DATE AS 'Data de início de cargo',
(
SELECT DEPARTMENT_NAME
FROM hr.departments
WHERE DEPARTMENT_ID = E.DEPARTMENT_ID
) AS 'Departamento'
FROM hr.employees AS E
ORDER BY
CONCAT(FIRST_NAME, ' ', LAST_NAME),
JOB_ID;
