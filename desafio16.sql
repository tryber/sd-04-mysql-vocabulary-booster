USE hr;
DELIMITER $$ CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN job VARCHAR(100)) BEGIN
DECLARE jobs INT;
SELECT COUNT(*)
FROM hr.job_history AS jh
  INNER JOIN hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = EMAIL into jobs;
RETURN jobs;
END $$ DELIMITER;
CALL buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
