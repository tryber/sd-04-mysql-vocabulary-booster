USE hr; 

DELIMITER $$

DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT) RETURNS INT BEGIN 
DECLARE quantity INT;
SELECT
  COUNT(*) INTO quantity
FROM
  hr.employees
WHERE
  MONTH(HIRE_DATE) = mes
  AND YEAR(HIRE_DATE) = ano;

RETURN quantity;

END $$

DELIMITER ;

SELECT
  exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
