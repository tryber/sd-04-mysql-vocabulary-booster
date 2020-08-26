CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_de_emprego INT;
  SELECT COUNT(Jobhistory.EMPLOYEE_ID)
  FROM hr.employees AS Emp
  INNER JOIN hr.job_history AS Jobhistory
  ON Emp.EMPLOYEE_ID = Jobhistory.EMPLOYEE_ID
  WHERE Emp.EMAIL = employee_email
  INTO quantidade_de_emprego;
  RETURN quantidade_de_emprego;
END $$
