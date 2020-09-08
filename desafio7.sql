SELECT UPPER(concat(e.FIRST_NAME, " ", e.LAST_NAME)) AS "Nome completo" , jh.START_DATE AS "Data de início",
e.SALARY AS "Salário" FROM hr.employees AS e, hr.job_history AS jh
WHERE e.EMPLOYEE_ID =  jh.EMPLOYEE_ID AND MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY "Nome completo", "Data de início";
