/* Desafio 7
Faça um relatório que mostra o histórico de cargos das pessoas empregadas
 que iniciaram seus cargos nos meses de janeiro, fevereiro ou março.
 Para isso, usando o banco hr como referência, monte uma query que exiba três colunas:
	1. A primeira coluna deve possuir o alias "Nome completo" e exibir o
      nome completo da pessoa empregada em CAIXA ALTA (não se esqueça do espaço entre o nome e o sobrenome).
	2. A segunda coluna deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.
	3. A terceira coluna deve possuir o alias "Salário" e exibir o salário da pessoa.
Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética.
 Em caso de empate no nome completo, ordene os resultados pela data de início
 que a pessoa iniciou seu cargo, em ordem crescente. */
SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
  jh.START_DATE AS `Data de início`,
  e.SALARY
FROM hr.job_history AS jh
INNER JOIN employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
