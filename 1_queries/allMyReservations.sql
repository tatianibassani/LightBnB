/*
Select the reservation id, property title, reservation start_date, property cost_per_night and the average rating of the property. You'll need data from both the reservations and properties tables.
The reservations will be for a single user, so just use 1 for the user_id.
Order the results from the earliest start_date to the most recent start_date.
Limit the results to 10.
*/

select r.id, p.title, r.start_date, p.cost_per_night, avg(pr.rating) as average_rating
from reservations r
join properties p on p.id = r.property_id
join property_reviews pr on p.id = pr.property_id
where r.guest_id = 1
group by r.id, p.title, r.start_date, p.cost_per_night
order by r.start_date
limit 10;