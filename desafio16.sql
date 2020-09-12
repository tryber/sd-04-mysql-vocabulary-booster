USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_quantity INT;
-- Using Subquery returns more than one row, besides resulting in the same value
SELECT COUNT(*) AS `Quantidade de empregos`
FROM hr.job_history AS j
JOIN hr.employees AS e
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO jobs_quantity;
RETURN jobs_quantity;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
