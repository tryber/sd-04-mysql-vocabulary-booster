DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
  RETURNS INT READS SQL DATA BEGIN
  DECLARE empregos INT;
  SELECT
    COUNT(*)
  FROM
    hr.job_history jh,
    hr.employees e
  WHERE
    jh.EMPLOYEE_ID = e.EMPLOYEE_ID AND
    e.EMAIL = email
  INTO empregos;
  RETURN empregos;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
