USE 2cse24_1288;

--------------------------------------------------
-- 1. Create Employee_master table using EMPLOYEEE
--------------------------------------------------
CREATE TABLE Employee_master AS
SELECT * FROM EMPLOYEEE;

-- OUTPUT:
-- Query OK, 14 rows affected (0.008 sec)
-- Records: 14  Duplicates: 0  Warnings: 0


--------------------------------------------------
-- 2. Delete records where DeptNo = 10
--------------------------------------------------
DELETE FROM Employee_master
WHERE DeptNo = 10;

-- OUTPUT:
-- Query OK, 1 row affected (0.003 sec)


--------------------------------------------------
-- 3. Increase salary by 10% for DeptNo = 20
--------------------------------------------------
UPDATE Employee_master
SET SAL = SAL + (SAL * 0.10)
WHERE DeptNo = 20;

-- OUTPUT:
-- Query OK, 6 rows affected (0.002 sec)
-- Rows matched: 6  Changed: 6  Warnings: 0


--------------------------------------------------
-- 4. Alter SAL column to DECIMAL(10,2)
--------------------------------------------------
ALTER TABLE Employee_master
MODIFY SAL DECIMAL(10,2);

-- OUTPUT:
-- Query OK, 13 rows affected (0.016 sec)
-- Records: 13  Duplicates: 0  Warnings: 0


--------------------------------------------------
-- 5. Display Employee_master table
--------------------------------------------------
SELECT * FROM Employee_master;

-- OUTPUT:
-- +-------+--------+-----------+------+------------+---------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+---------+------+--------+
-- | 7369  | SMITH  | CLERK     | 7902 | 1980-12-17 |  880.00 | NULL | 20     |
-- | 7499  | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 | 300  | 30     |
-- | 7521  | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 | 300  | 30     |
-- | 7566  | JONES  | MANAGER   | 7839 | 1981-04-02 | 3273.00 | NULL | 20     |
-- | 7654  | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400 | 30     |
-- | 7698  | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL | 30     |
-- | 7782  | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2695.00 | NULL | 20     |
-- | 7788  | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 | NULL | 40     |
-- | 7839  | KING   | PRESIDENT | NULL | 1981-11-17 | 5500.00 | NULL | 20     |
-- | 7844  | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 | 0    | 30     |
-- | 7876  | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1210.00 | NULL | 20     |
-- | 7900  | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 | NULL | 30     |
-- | 7902  | FORD   | ANALYST   | 7566 | 1981-12-03 | 3300.00 | NULL | 20     |
-- +-------+--------+-----------+------+------------+---------+------+--------+
-- 13 rows in set (0.001 sec)


--------------------------------------------------
-- 6. Drop Employee_master table
--------------------------------------------------
DROP TABLE Employee_master;

-- OUTPUT:
-- Query OK, 0 rows affected
