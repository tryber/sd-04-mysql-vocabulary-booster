SELECT
  UCASE(CONCAT(Emp.FIRST_NAME, ' ', Emp.LAST_NAME)) AS 'Nome completo',
  Jh.START_DATE AS 'Data de início',
  Emp.SALARY AS Salário
FROM hr.employees AS Emp
INNER JOIN hr.job_history AS Jh
ON Emp.EMPLOYEE_ID = Jh.EMPLOYEE_ID
WHERE MONTH(Jh.START_DATE) IN (1, 2, 3)
ORDER BY
  UCASE(CONCAT(Emp.FIRST_NAME, ' ', Emp.LAST_NAME)) ASC,
  Jh.START_DATE ASC
;