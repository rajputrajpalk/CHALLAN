PS C:\Users\DELL\Desktop\javacasestudy\challan> mysql -u root -p 
Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 54
Server version: 8.0.44 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE challan;
Query OK, 1 row affected (0.02 sec)

mysql> USE challan;
Database changed
mysql> CREATE TABLE challan;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> CREATE TABLE challan(id INT AUTO_INCREMENT PRIMARY KEY,vehicle_no VARCHAR(15),offence VARCHAR(30),fine INT ,challan_date DATE);
Query OK, 0 rows affected (0.05 sec)

mysql> SELECT * FROM challan;
Empty set (0.01 sec)
       SELECT * FROM challan;
+----+---------------+--------------+------+--------------+
| id | vehicle_no    | offence      | fine | challan_date |
+----+---------------+--------------+------+--------------+
|  1 | MH 18 BV 1171 | overs speed  | 2000 | 2026-10-28   |
|  2 | MH 12 BB 1111 | break signal | 2100 | 2026-10-27   |
|  3 | MH 12 BB 1111 | break signal | 2100 | 2026-10-27   |
|  4 | MH 12 BB 1111 | overs speed  | 2100 | 2026-10-11   |
|  5 | MH 18 BV 1171 | overs speed  | 2100 | 2026-10-11   |
|  6 | MH 18 BV 1171 | overs speed  | 2100 | 2026-10-11   |
|  7 | MH 18 BV 1171 | overs speed  | 2100 | 2026-10-11   |
|  8 | MH 12 JJ 0101 | overs speed  | 3889 | 2026-10-18   |
|  9 | MH 00 HH 9999 | overs speed  | 2000 | 2026-10-26   |
+----+---------------+--------------+------+--------------+
9 rows in set (0.00 sec)

mysql> 
