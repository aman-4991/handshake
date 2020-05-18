with a as ( 
select city, 
extract(month from to_timestamp(date::text, 'YYYY-MM-DD')) as month, 
extract(year from to_timestamp(date::text, 'YYYY-MM-DD')) as year 
from birth_report )

select count(*) as child_births from a 
where month = 3 and city = 'Ranchi'
group by month; 

