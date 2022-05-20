-- film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT title, rental_rate, replacement_cost FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);