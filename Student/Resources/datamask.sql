SELECT top 10 person.FirstName, person.LastName, phone.PhoneNumber
FROM Person.Person person
INNER JOIN Person.PersonPhone phone 
ON person.BusinessEntityID = phone.BusinessEntityID
WHERE person.LastName LIKE 'S%'
ORDER BY person.LastName ASC

ALTER TABLE Person.PersonPhone
ALTER COLUMN PhoneNumber ADD MASKED WITH (FUNCTION = 'partial(0,"x",5)');

CREATE USER TestUser WITHOUT LOGIN;  
GRANT SELECT ON Person.Person TO TestUser;  
GRANT SELECT ON Person.PersonPhone TO TestUser;  

EXECUTE AS USER = 'TestUser';
SELECT top 10 person.FirstName, person.LastName, phone.PhoneNumber
FROM Person.Person person
INNER JOIN Person.PersonPhone phone 
ON person.BusinessEntityID = phone.BusinessEntityID
WHERE person.LastName LIKE 'S%'
ORDER BY person.LastName ASC
REVERT;

ALTER TABLE Person.PersonPhone
ALTER COLUMN PhoneNumber DROP MASKED;