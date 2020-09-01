DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

DELIMITER $$

-- create FUNCTION
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(startMonth INT, startYear INT)
RETURNS INT
BEGIN
    DECLARE hired INT;

    SELECT COUNT(e.employee_id) INTO hired
    FROM employees AS e
    WHERE MONTH(e.hire_date) = startMonth AND YEAR(e.hire_date) = startYear;

    RETURN hired;
END $$

DELIMITER ;

-- execute FUNCTION
SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS 'total';
