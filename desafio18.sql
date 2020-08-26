USE hr;
DELIMTER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qnt_pessoas INT;
SELECT COUNT(*) AS total FROM hr.employees
WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano INTO qnt_pessoas;
RETURN qnt_pessoas;
END $$

DELIMITER ;
