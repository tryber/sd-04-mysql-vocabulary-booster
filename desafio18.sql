USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE num_ppl INT;
SELECT 
    COUNT(*)
FROM
    hr.employees
WHERE
    MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) INTO num_ppl;
    RETURN num_ppl;
    
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS `total`;
