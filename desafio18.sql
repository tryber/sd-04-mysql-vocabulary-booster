USE hr;

DELIMITER $$ 
DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano$$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT) 
RETURNS INT
BEGIN
DECLARE contratados INT;
SELECT
    COUNT(*) 
FROM
    hr.job_history
WHERE
    MONTH(HIRE_DATE) = mes
    AND YEAR(HIRE_DATE) = ano
INTO contratados;
    RETURN contratados;
END $$ 
DELIMITER ;
