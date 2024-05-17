use sqllab;

select *
from applestore2;
/* QUESTION 1: Which are the different genres?*/
select prime_genre
from applestore2;

/* QUESTION 2: Which is the genre with more apps rated?*/
/*select prime_genre
 from applestore2;
select distinct prime_genre , cont_rating
from applestore2
order by cont_rating Desc, prime_genre;*/

select distinct prime_genre, cont_rating
from applestore2
where cont_rating >=17; 

/* QUESTION 3: Which is the genre with more apps?*/
select prime_genre , count(track_name) as apps_num
from applestore2 
group by prime_genre
order by apps_num desc
limit 1;




/* QUESTION 4: Which is the one with less?*/
select prime_genre , count(track_name) as apps_num
from applestore2 
group by prime_genre
order by apps_num asc
limit 1;


/* QUESTION 5: Take the 10 apps most rated*/

select track_name, rating_count_tot 
from applestore2
order by rating_count_tot desc
limit 10;


/* QUESTION 6: Take the 10 apps best rated by users*/
select track_name, user_rating
from applestore2
order by user_rating desc
limit 10;

/* QUESTION 7: Take a look on the data you retrieved in the question 5. Give some insights.*/
select *
from applestore2
order by rating_count_tot desc
limit 10;
/* it's basically the top 10 apps that have gained most number of ratings */

/* QUESTION 8: Take a look on the data you retrieved in the question 6. Give some insights.*/
select *
from applestore2
order by user_rating desc
limit 10;
/* It's basically the top ten apps that has more user ratings */

/* QUESTION 9: Now compare the data from questions 5 and 6. What do you see?*/

select track_name, user_rating, rating_count_tot 
from applestore2
order by rating_count_tot desc, user_rating desc
limit 10;
/* By comparing question 5 and 6 , I can see Facebook has the most count of rating but it does not have the highest user ratings, and I can also see
 some other apps (such as Pinterest, Bible, Candy Crush Saga, Softify Music, Angry Birds have the Highest User Ratings , but they have less total number
 of ratings */

 /* QUESTION 10: How could you take the top 3 regarding the user ratings but also the number of votes?*/
 select track_name, user_rating, rating_count_tot
 from applestore2
 where user_rating = 4.5 
 order by rating_count_tot desc
 limit 3;
 
  /* QUESTION 11: Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/
  select track_name, prime_genre, user_rating, rating_count_tot, currency, price

  from applestore2
  group by prime_genre
  order by price desc, rating_count_tot desc;
  /* We can see that there are more "rating_count_tot" for the apps those don't have any price(Free Apps). And , we also can see that, the Genre "Utilities" and
  then "Business" has the most price but thhe "rating_count_tot" is not so high. So, we can predict that, people only want to spend money for apps if they really 
  need those. Otherwise people are interested to use free apps. */

  



 
