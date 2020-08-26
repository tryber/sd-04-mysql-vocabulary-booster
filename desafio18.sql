USE hr; 

DELIMITER 

DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT) RETURNS INT BEGIN 
DECLARE quantidade_de_pessoas_contratadas INT;
SELECT
  COUNT(*) INTO quantidade_de_pessoas_contratadas
FROM
  hr.employees
WHERE
  MONTH(hire_date) = mes
  AND YEAR(hire_date) = ano;

RETURN quantidade_de_pessoas_contratadas;

END;

DELIMITER ;

SELECT
  exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
