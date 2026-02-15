USE 2cse24_1288;

-- 1. Create Employee_master table using EMPLOYEEE
CREATE TABLE Employee_master AS
SELECT * FROM EMPLOYEEE;

-- 2. Delete records where DeptNo = 10
DELETE FROM Employee_master
WHERE DeptNo = 10;

-- 3. Increase salary by 10% for DeptNo = 20
UPDATE Employee_master
SET SAL = SAL + (SAL * 0.10)
WHERE DeptNo = 20;

-- 4. Alter SAL column to DECIMAL(10,2)
ALTER TABLE Employee_master
MODIFY SAL DECIMAL(10,2);

-- 5. Drop Employee_master table
DROP TABLE Employee_master;
