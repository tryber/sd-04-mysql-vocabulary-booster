DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(start_month INT, start_year INT)

RETURNS INT READS SQL DATA

BEGIN
    DECLARE hired INTEGER;

    SELECT COUNT(e.employee_id) INTO hired
    FROM hr.employees AS e
    WHERE MONTH(e.hire_date) = start_month AND YEAR(e.hire_date) = start_year;

    RETURN hired;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) as 'total';