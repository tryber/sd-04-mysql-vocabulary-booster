USE `hr`;
DROP function IF EXISTS `exibir_quantidade_pessoas_contratadas_por_mes_e_ano`;

DELIMITER $$
USE `hr`$$
CREATE FUNCTION `exibir_quantidade_pessoas_contratadas_por_mes_e_ano`(month_number integer, year_number integer) RETURNS int
    READS SQL DATA
BEGIN
DECLARE hired_number INTEGER;
SELECT COUNT(*) INTO hired_number
FROM hr.employees 
WHERE MONTH(HIRE_DATE) = month_number 
AND YEAR(HIRE_DATE) = year_number;
RETURN hired_number;
END$$

DELIMITER ;

select hr.exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS contratadas;
