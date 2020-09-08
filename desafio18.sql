USE hr;

DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

DELIMITER $ $ CREATE PROCEDURE exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT) BEGIN
SELECT
    COUNT(*)
FROM
    hr.job_history AS jh
WHERE
    MONTH(jh.STAR_DATE) = mes
    AND YEAR(jh.STAR_DATE) = ano
END $ $ DELIMITER;
