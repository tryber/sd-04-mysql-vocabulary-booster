-- DESAFIO 2

SELECT job_title AS Cargo,
	CASE
		WHEN max_salary between 5000 and 10000 THEN 'Baixo'
        WHEN max_salary between 10001 and 20000 THEN 'Médio'
        WHEN max_salary between 20001 and 30000 THEN 'Alto'
        ELSE 'Altissímo'
    END AS Nível
FROM hr.jobs ORDER BY job_title;