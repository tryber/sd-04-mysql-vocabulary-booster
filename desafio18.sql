USE hr; 

DELIMITER $$

DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano$$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hire_month INT, hire_year INT)
RETURNS INT
BEGIN 

DECLARE count INT;
SELECT COUNT(*) FROM hr.employees
WHERE MONTH(hire_date) = hire_month AND YEAR(hire_date) = hire_year
INTO count;
RETURN count;

END$$

DELIMITER ;
