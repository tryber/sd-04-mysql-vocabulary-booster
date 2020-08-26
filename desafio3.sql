-- requisito 3

-- Seleciona coluna job_title e renomeia para Cargo
-- faz a diferenca entre salários máximo e mínimo e suas respectivas colunas e as renomeando
-- Ordena pela diferença de salários e depois por cargo
SELECT job_title AS 'Cargo',
(max_salary - min_salary) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
-- blackticks(``) para ordenar como coluna 
ORDER BY `Diferença entre salários máximo e mínimo` ASC, Cargo;
