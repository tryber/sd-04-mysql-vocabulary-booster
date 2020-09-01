-- drop FUNCTION when neccesary
DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

DELIMITER $$

-- create FUNCTION
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (start_month INT, start_year INT)
RETURNS INT
BEGIN
    DECLARE hired INT;

    SELECT COUNT(e.employee_id) INTO hired
    FROM employees AS e
    WHERE MONTH(e.hire_date) = start_month AND YEAR(e.hire_date) = start_year;

    RETURN hired;
END $$

DELIMITER ;

-- execute FUNCTION
SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS 'total';
