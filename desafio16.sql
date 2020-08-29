-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que,
-- ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.
-- Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".

-- SELECT 
--     COUNT(E.JOB_ID) AS 'Quantidade de Empregos', E.EMAIL
-- FROM
--     hr.employees AS E
--         INNER JOIN
--     hr.job_history AS H ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
-- GROUP BY E.EMAIL;


USE hr;
DELIMITER //
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (emailFunc VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtdEmpregos INT;
SELECT 
    COUNT(E.JOB_ID) AS 'Quantidade de Empregos'
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS H ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
WHERE E.EMAIL = emailFunc
GROUP BY E.EMAIL INTO qtdEmpregos;
RETURN qtdEmpregos;
END //

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
