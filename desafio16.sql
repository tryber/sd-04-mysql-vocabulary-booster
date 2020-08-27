USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE num_jobs INT;
    SELECT COUNT(*) 
    FROM hr.employees AS em
	INNER JOIN hr.job_history AS jb
	ON em.EMPLOYEE_ID=jb.EMPLOYEE_ID
    WHERE em.EMAIL=email
    INTO num_jobs;
    RETURN num_jobs;
    
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS `total_empregos`;
