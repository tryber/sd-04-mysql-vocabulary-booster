CREATE PROCEDURE buscar_media_por_cargo (IN nome_do_cargo VARCHAR(200))
SELECT
  AVG(e.salary) AS 'Média salarial'
FROM
  hr.employees AS e
  INNER JOIN hr.jobs AS j ON (e.job_id = j.job_id)
WHERE
  nome_do_cargo = j.job_title
END $$;
