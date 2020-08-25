select c.country_name as 'País',
if(c.region_id = 1, 'incluído', 'não incluído') as 'Status Inclusão'
from hr.countries c
inner join hr.regions r on r.REGION_ID = c.REGION_ID
order by País;
