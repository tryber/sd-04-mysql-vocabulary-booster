DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT;
  SELECT COUNT(jb.DEPARTMENT_ID) AS 'total_empregos' from employees AS e
  INNER JOIN job_history AS jb ON e.EMPLOYEE_ID = jb.EMPLOYEE_ID
  WHERE e.EMAIL = email
  GROUP BY jb.DEPARTMENT_ID
  INTO total;
  RETURN total;
END $$

DELIMITER ;
