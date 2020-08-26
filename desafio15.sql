CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(35)) BEGIN
SELECT
  AVG(e.salary) AS 'Média salarial'
FROM
  hr.employees AS e
  INNER JOIN hr.jobs AS j ON (e.job_id = j.job_id)
WHERE
  cargo = j.job_title
END $$;
