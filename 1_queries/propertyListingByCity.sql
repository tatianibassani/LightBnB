SELECT p.id, p.title, p.cost_per_night, avg(pr.rating) as average_rating 
from properties p
join property_reviews pr on p.id = pr.property_id
where p.city = 'Vancouver' and pr.rating >= 4
group by p.id, p.title, p.cost_per_night
order by p.cost_per_night
limit 10;