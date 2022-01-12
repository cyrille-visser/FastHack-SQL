SELECT TOP 20 * from HumanResources.EmployeePayHistory
ORDER BY BusinessEntityID ASC

-- add permission to table
GRANT SELECT ON HumanResources.EmployeePayHistory TO TestUser;  

-- add mask
ALTER TABLE HumanResources.EmployeePayHistory
ALTER COLUMN Rate ADD MASKED WITH (FUNCTION = 'default()');

-- query w mask -- observe the 'RateBucket' 
EXECUTE AS USER = 'TestUser';
SELECT TOP 20 *, 
    CASE 
        WHEN Rate > 100 THEN '>100'
        WHEN Rate > 50 THEN '>50'
        ELSE '<50'
    END AS RateBucket
    FROM HumanResources.EmployeePayHistory
ORDER BY BusinessEntityID ASC
REVERT;