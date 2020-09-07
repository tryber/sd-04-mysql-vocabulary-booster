SELECT 
    CONCAT(UCASE(emp.FIRST_NAME), ' ', UCASE(emp.LAST_NAME)) AS `Nome completo`,
	hist.START_DATE AS `Data de início`,
    emp.SALARY AS "Salário"
FROM
hr.job_history AS hist
	INNER JOIN
hr.employees AS emp ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(hist.START_DATE) < 4
ORDER BY `Nome completo` ASC, `Data de início` ASC;
