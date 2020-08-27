CREATE function exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hireMonth INT, hireYear INT)
RETURNS INT READS SQL DATA

BEGIN
DECLARE total INT;
select COUNT(*) FROM hr.employees
WHERE MONTH(HIRE_DATE) = hireMonth AND YEAR(HIRE_DATE) =  hireYear
INTO total;
RETURN total;
END $$
