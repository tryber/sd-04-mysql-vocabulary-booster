DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(monthPeriod INT, yearPeriod INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total INTEGER;
    SELECT COUNT(*) FROM hr.employees AS e
    WHERE MONTH(e.HIRE_DATE) = monthPeriod AND YEAR(e.HIRE_DATE) = yearPeriod
    INTO total;
    RETURN total;
END $$

DELIMITER ;

-- Chamando Function:

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
