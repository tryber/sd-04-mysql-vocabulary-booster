SELECT job_title AS 'Cargo', (max_salary - min_salary) AS 'Variação salarial', 
  ROUND(AVG(min_salary/12),2) AS 'Média mínima mensal',
  ROUND(AVG(max_salary/12),2) AS 'Média máxima mensal'
FROM jobs 
GROUP BY job_title
ORDER BY (max_salary - min_salary), Cargo;
