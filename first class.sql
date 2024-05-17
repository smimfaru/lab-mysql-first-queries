use sakila;

select * 
from sakila.film;

select *
from sakila.film
limit 20;

select title, description, rental_rate
from sakila.film
limit 20;

select distinct rental_duration
from film;

select distinct rental_rate
from film;

select distinct rental_rate, rental_duration
from film;

select title, length
from film
order by length desc
limit 29;

select *
from film
order by length, rental_rate desc
limit 20;

select title, rental_rate, length, rental_rate/length as revenue_per_minute
from film
order by revenue_per_minute desc;

select concat("The movie ", title," is rated ",rating)
from film;

select *
from film
where film.rental_duration in (2,4,6) AND rating ='PG-13';

select *
from film
where film.rental_duration in (2,4,6) or rating ='PG-13';

select *
from film
where film.rental_duration not in (2,4,6) AND not rating ='PG-13';

select *
from film
where film.special_features = 'Deleted Scenes';

select *
from film
where film.special_features like 'Deleted Scenes';
select *
from film
where film.special_features like '%Deleted Scenes%';

select max(rental_rate), avg(rental_duration), count(title)
from film;


