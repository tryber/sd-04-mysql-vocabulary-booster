-- DESAFIO 18

USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(employee_id)
FROM employees
WHERE MONTH(hire_date) = mes and YEAR(hire_date) = ano
INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;

-- DROP FUNCTION buscar_quantidade_de_empregos_por_funcionario;
-- SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
