SELECT * FROM Person.address;

USE AdventureWorks2014
GO

CREATE PROC dbo.uspGetAddress
AS
SELECT * FROM Person.Address 
GO


/*--After the stored procedure name you need to use the keyword "AS" 
and then the rest is just the regular SQL code that you would normally execute.
One thing to note is that you cannot use the keyword "GO" in the stored procedure.--*/


EXEC dbo.uspGetAddress;

/*---OR----*/

uspGetAddress;


/*----During Testing needed to drop the older PROC----*/
DROP PROCEDURE IF EXISTS dbo.uspGetAddress;


/*------SQL with Parameters-----------*/

USE AdventureWorks2014


CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30)
AS
SELECT * FROM Person.Address
WHERE City = @City
GO


EXEC dbo.uspGetAddress @City = 'New York'

/*------------WILD CARD PROC----------------*/

CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30) 
AS 
SELECT * 
FROM Person.Address 
WHERE City LIKE @City + '%' 
GO

/*-----------------Setting up PROC with multiple Parameters-----------------------*/


CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30) = NULL, @AddressLine1 nvarchar(60) = NULL
AS
SELECT *
FROM Person.Address
WHERE City = ISNULL(@City,City)
AND AddressLine1 LIKE '%' + ISNULL(@AddressLine1 ,AddressLine1) + '%'
GO

EXEC dbo.uspGetAddress @City = 'Calgary'

EXEC dbo.uspGetAddress @AddressLine1 = 'Acardia'





