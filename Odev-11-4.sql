--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT COUNT(*), (SELECT first_name from customer WHERE payment.customer_id = customer.customer_id) FROM payment GROUP BY customer_id ORDER BY COUNT(*) DESC
