DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    select COUNT(*) from hr.employees as e
    inner join hr.job_history as jh on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    where e.EMAIL = employeeEmail
    INTO employeeEmail;
    RETURN employeeEmail;
END $$

DELIMITER ;

-- Chamando Function:

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
