SELECT 
	CONCAT(first_name, " ", last_name) as `Nome completo`, 
	job_title as `Cargo`, 
	start_date as `Data de início do cargo`,
	department_name as `Departamento`
FROM hr.job_history AS jh JOIN hr.employees AS e 
	ON jh.employee_id = e.employee_id
JOIN hr.jobs AS j
	ON	jh.job_id = j.job_id
JOIN hr.departments AS d
	ON d.department_id = jh.department_id
ORDER BY `Nome completo` DESC, `Cargo`
	