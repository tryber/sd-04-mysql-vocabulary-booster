SELECT J.JOB_TITLE Cargo, ROUND(AVG(E.salary), 2) 'Média salarial', 
(CASE 
WHEN AVG(E.salary) BETWEEN 2000 AND 5800  THEN 'Júnior' 
WHEN AVG(E.salary)  BETWEEN 5801 AND 7500  THEN 'Pleno' 
WHEN AVG(E.salary) BETWEEN 7501 AND 10500  THEN 'Sênior' 
ELSE 'CEO' 
END) Senioridade
FROM hr.jobs J 
INNER JOIN hr.employees E on E.JOB_ID = J.JOB_ID
GROUP BY Cargo
ORDER BY ROUND(AVG(E.salary), 2), cargo;
