mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| test               |
| world              |
+--------------------+
7 rows in set (0.10 sec)

mysql> use test;
Database changed

mysql> show tables;
+----------------+
| Tables_in_test |
+----------------+
| namde          |
| name           |
| orders         |
| sajin          |
| student        |
+----------------+
5 rows in set (0.07 sec)

mysql> desc orders;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| order_id     | int           | YES  |     | NULL    |       |
| customer_id  | int           | YES  |     | NULL    |       |
| order_amount | decimal(10,2) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> select * from orders;
+----------+-------------+--------------+
| order_id | customer_id | order_amount |
+----------+-------------+--------------+
|        1 |           1 |      1000.00 |
|        2 |           2 |       500.00 |
|        3 |           1 |       750.00 |
|        4 |           3 |       300.00 |
|        5 |           2 |      1200.00 |
+----------+-------------+--------------+
5 rows in set (0.01 sec)


--TO INCREASE 5% IN ORDER_AMOUNT COLUMN

mysql> update orders set order_amount = order_amount * 1.05;
Query OK, 5 rows affected (0.04 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select * from orders;
+----------+-------------+--------------+
| order_id | customer_id | order_amount |
+----------+-------------+--------------+
|        1 |           1 |      1050.00 |
|        2 |           2 |       525.00 |
|        3 |           1 |       787.50 |
|        4 |           3 |       315.00 |
|        5 |           2 |      1260.00 |
+----------+-------------+--------------+
5 rows in set (0.00 sec)


create table sales(sales_id varchar(70),sales_items varchar(40),s' at line 1
mysql> create table sales(sales_id varchar(70),sales_items varchar(40),sales_amount varchar(40));
Query OK, 0 rows affected (0.10 sec)

mysql> desc sales;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| sales_id     | varchar(70) | YES  |     | NULL    |       |
| sales_items  | varchar(40) | YES  |     | NULL    |       |
| sales_amount | varchar(40) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into sales values()
    -> ;
Query OK, 1 row affected (0.01 sec)

mysql> insert into sales values(
    -> 1,"Apple",300);
Query OK, 1 row affected (0.01 sec)

mysql> insert into sales values(
    -> 2,"Mango",300),
    -> 3,"Orange",400);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3,"Orange",400)' at line 3
mysql> insert into sales values(
    -> 2,"Mango",300),
    -> (3,"Orange",400);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc sales;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| sales_id     | varchar(70) | YES  |     | NULL    |       |
| sales_items  | varchar(40) | YES  |     | NULL    |       |
| sales_amount | varchar(40) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from student;
+-------+-------+---------------------+----------+
| name  | regno | email               | password |
+-------+-------+---------------------+----------+
| Sajin | 222   | sajin2888@gmail.com | 12345678 |
| aaron | 2222  | aaron21@gmail.com   | 123456   |
| jizzz | 22993 | jizzz21@gmail.com   | 122456   |
+-------+-------+---------------------+----------+
3 rows in set (0.01 sec)

mysql> select * from sales;
+----------+-------------+--------------+
| sales_id | sales_items | sales_amount |
+----------+-------------+--------------+
| NULL     | NULL        | NULL         |
| 1        | Apple       | 300          |
| 2        | Mango       | 300          |
| 3        | Orange      | 400          |
+----------+-------------+--------------+
4 rows in set (0.00 sec)

mysql>



mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| test               |
| world              |
+--------------------+
7 rows in set (0.03 sec)

mysql> create table hello(Names varchar(40),Age varchar(10));
ERROR 1046 (3D000): No database selected
mysql> use test;
Database changed
mysql> create table hello(Names varchar(40),Age varchar(10));
Query OK, 0 rows affected (0.11 sec)