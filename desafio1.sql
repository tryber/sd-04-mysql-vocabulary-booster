select countries.country_name as País,
if ( regions.region_id = 1,"incluído" , "não incluído") as 'Status Inclusão'
from countries  
inner join regions 
on countries.REGION_ID = regions.REGION_ID
order by countries.country_name;
/* 1.A primeira coluna deve possuir o alias "País" e exibir o nome do país.
2.A segunda coluna deve possuir o alias "Status Inclusão" e deve exibir "incluído" 
se o país em questão está incluso em "Europe", ou "não incluído", caso contrário. */
