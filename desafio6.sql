/* Desafio 6
Faça um relatório que mostra o histórico de cargos das pessoas empregadas.
 Para isso, usando o banco hr como referência, monte uma query que exiba quatro colunas:
  1. A primeira coluna deve possuir o alias "Nome completo" e exibir
    o nome completo da pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).
  2. A segunda coluna deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.
  3. A terceira coluna deve possuir o alias "Data de início do cargo" e
    exibir a data que a pessoa iniciou o cargo.
  4. A quarta coluna deve possuir o alias "Departamento" e
    mostrar o nome do departamento em que a pessoa exerceu seu cargo.
Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente.
 Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética. */
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
  j.JOB_TITLE AS `Cargo`,
  jh.START_DATE AS `Data de início do cargo`,
  d.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS jh
INNER JOIN employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN jobs AS j ON jh.JOB_ID = j.JOB_ID
INNER JOIN departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
