USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE works INT;
SELECT 
    COUNT(hist.EMPLOYEE_ID)
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS hist ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
WHERE
    emp.EMAIL = email INTO works;
  RETURN works;
END $$
DELIMITER ;
