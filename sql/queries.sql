-- queries.sql for Project 00007


-- Query 1 - List all Customers
SELECT c.customer_id as employee_id,
		c.name as name,
		c.email as email,
		c.city as city
	From customer c
	