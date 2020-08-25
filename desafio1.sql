select c.country_name as 'País',
if(c.region_id = 1, 'incluído', 'não incluído') as 'Status Inclusao'
from hr.countries c
order by País asc;