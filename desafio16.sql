USE hr;
DELIMITER $ $ CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100)) RETURNS INT READS SQL DATA BEGIN DECLARE JOB_QTY INT;
SELECT
  COUNT(SALARY)
FROM
  hr.employees AS e
  INNER JOIN hr.job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE
  EMAIL LIKE email INTO JOB_QTY;
RETURN JOB_QTY;
END $ $ DELIMITER;
SELECT
  buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
