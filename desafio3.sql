SELECT JOB_TITLE 'Cargo', (MAX_SALARY-MIN_SALARY) 'Diferença entre salários máximo e mínimo' FROM hr.jobs ORDER BY MAX_SALARY-MIN_SALARY ASC, JOB_TITLE ASC;
