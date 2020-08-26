SELECT
-- Colunas correspondentes a pessoa funcionaria 1
  CONCAT(e1.FIRST_NAME, ' ',e1.LAST_NAME) AS `Nome completo funcionário 1`,
  e1.SALARY AS `Salário funcionário 1`,
  e1.PHONE_NUMBER AS `Telefone funcionário 1`,
-- Colunas correspondentes a pessoa funcionaria 1
  CONCAT(e2.FIRST_NAME, ' ',e2.LAST_NAME) AS `Nome completo funcionário 2`,
  e2.SALARY AS `Salário funcionário 2`,
  e2.PHONE_NUMBER AS `Telefone funcionário 2`
-- self join
FROM hr.employees AS e1, hr.employees AS e2
-- Mostra os resultados onde a primeira e a segunda pessoa são pessoas diferentes e que tem o mesmo cargo.
WHERE e1.EMPLOYEE_ID <> e2.EMPLOYEE_ID AND e1.JOB_ID = e2.JOB_ID
-- ordena pelo nome da pessoa1, desempata ordenando pelo nome da pessoa 2. Ordenamentos por ordem alfabetica.
ORDER BY e1.FIRST_NAME, e1.LAST_NAME, e2.FIRST_NAME, e2.LAST_NAME;
