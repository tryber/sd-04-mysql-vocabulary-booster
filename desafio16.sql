USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_do_funcionario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
RETURN (SELECT 
    COUNT(*)
FROM
    (SELECT 
        jh.EMPLOYEE_ID, e.EMAIL AS email
    FROM
        hr.job_history jh
    JOIN hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID) AS new_table
WHERE
    email = email_do_funcionario);
END $$

DELIMITER ;
