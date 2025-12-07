# Project00007

## Overview
Project00007 is a simple SQLite project that models a customer–order–product relationship. It demonstrates schema design, data insertion, and query validation, showing how customers place orders that contain products, with order details tracking quantities. The project uses consistent lowercase, plural, snake_case naming conventions for tables and columns to ensure clarity and cross‑platform compatibility.

---

## ⚡ Quick Start
1. Clone the repo:
   ```bash
   git clone https://github.com/jrhcorp2023Git/Project00007.git
   cd Project00007
   ```
2. Build the database:
   ```bash
	sqlite3 project00007.db < sql/schema.sql
	sqlite3 project00007.db < sql/inserts.sql
   ```
3. Run queries:
   ```bash
	sqlite3 project00007.db < sql/queries.sql
   ```
4. Run tests
   ```bash
	sqlite3 project00006.db < sql/test.sql
   ```

---

🚀 Getting Started

To set up and run Project00007 on your local machine:

1. **Install SQLite**
   - Make sure you have SQLite installed. You can verify with:
     ```bash
     sqlite3 --version
     ```

2. **Clone the repository**
   ```bash
   git clone https://github.com/jrhcorp2023Git/Project00007.git
   cd Project00007

3. Initialize the database
- Create the schema:
sqlite3 project00007.db < sql/schema.sql

4. Insert sample database
sqlite3 project00007.db < sql/inserts.sql

5. Run queries
sqlite3 project00007.db < sql/queries.sql

6. View results
1|Alice Johnson|alice@example.com|Pittsburgh
101|Laptop|1200.0
1001|1|2025-12-01
5001|1001|101|1

---

📊 Query Outputs

---

## Roadmap

The following steps outline how Project00007 will evolve:

- **Phase 1: Validation (Complete)**
  - Build schema with customers, products, orders, and order_details.
  - Insert sample data and confirm with basic queries.

- **Phase 2: Query Expansion (In Progress)**
  - Add joins to connect customers, orders, and products.
  - Create aggregate queries (e.g., total sales per customer, most popular product).
  - Introduce filtering and grouping for deeper analysis.

- **Phase 3: Automation**
  - Develop validation scripts to automatically run queries and check outputs.
  - Add reinforcement quizzes at the end of each project to lock in learning.

- **Phase 4: Documentation**
  - Expand README with practice query checklist and advanced examples.
  - Provide recruiter‑friendly outputs and explanations.

- **Phase 5: Dataset Growth**
  - Add more customers, products, and orders for realistic scenarios.
  - Explore subqueries and advanced SQL features (e.g., window functions).

- **Phase 6: Portfolio Readiness**
  - Ensure reproducibility with clear instructions.
  - Polish documentation and outputs for recruiter and collaborator review.
---
## Reinforcement Quiz

Test your understanding of Project00007 with these quick questions:

1. **Which table stores the relationship between orders and products?**  
   - A) customers  
   - B) order_details ✅  
   - C) products  
   - D) orders  
   *Explanation:* The `order_details` table links orders to products and records the quantity purchased.  
   *Hint:* Think about where quantities of products per order are tracked.

---

2. **What SQL clause is used to combine rows from two tables based on a related column?**  
   - A) ORDER BY  
   - B) JOIN ✅  
   - C) GROUP BY  
   - D) WHERE  
   *Explanation:* `JOIN` is used to combine rows from two or more tables based on a related column.  
   *Hint:* It’s the clause you used to connect orders to customers.

---

3. **Which query would return the total amount spent by each customer?**  
   - A)  
     ```sql
     SELECT c.name, SUM(p.price * d.quantity)
     FROM customers c
     JOIN orders o ON c.customer_id = o.customer_id
     JOIN order_details d ON o.order_id = d.order_id
     JOIN products p ON d.product_id = p.product_id
     GROUP BY c.name;
     ``` ✅  
   - B) `SELECT AVG(price) FROM products;`  
   - C) `SELECT * FROM orders;`  
   - D) `SELECT SUM(price) FROM products;`  
   *Explanation:* The first query correctly joins all four tables and groups by customer name.  
   *Hint:* It requires joining all four tables and grouping by customer name.

---

4. **What is the purpose of the GROUP BY clause?**  
   - A) To aggregate rows by a column ✅  
   - B) To sort rows  
   - C) To filter rows  
   - D) To join tables  
   *Explanation:* `GROUP BY` is used to aggregate rows that share the same values in specified columns.  
   *Hint:* It’s often paired with `SUM` or `COUNT`.

---

5. **Which query would list all orders with customer names and order dates?**  
   - A) `SELECT name, email FROM customers;`  
   - B)  
     ```sql
     SELECT o.order_id, c.name, o.order_date
     FROM orders o
     JOIN customers c ON o.customer_id = c.customer_id;
     ``` ✅  
   - C) `SELECT product_name FROM products;`  
   - D) `SELECT * FROM orders;`  
   *Explanation:* This query joins orders with customers to display order IDs, customer names, and order dates.  
   *Hint:* It’s the query you already wrote in `qcalc.sql`.

---

License
MIT License

---

This shell gives you **structure without confusion**: Overview → Quick Start → Getting Started → Outputs → Tests → Roadmap → License. Tomorrow, once you’ve coded and run the queries, we’ll fill in the outputs and make it recruiter‑ready.















