USE hr;

DELIMITER $ $ CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email VARCHAR(100)) BEGIN
SELECT
    COUNT(*)
FROM
    hr.employees e
    INNER JOIN hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    e.EMAIL LIKE (email);

END $ $ DELIMITER;
