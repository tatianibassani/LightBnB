select p.city, count(r.id) from properties p
left join reservations r on p.id = r.property_id
group by p.city
order by count(r.id) desc;