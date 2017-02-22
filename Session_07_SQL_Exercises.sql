USE AdventureWorks2012; /*Set current database*/

/*1, Display the total amount collected from the orders for each order date. */
/* Table: Sales.SalesOrderHeader*/

SELECT SUM(TotalDue) as Total_Amount, OrderDate 
FROM Sales.SalesOrderHeader
GROUP BY OrderDate;


SELECT * FROM Sales.SalesOrderDetail;


/*2, Display the total amount collected from selling the products, 774 and 777. */
/* Table: Sales.SalesOrderDetail*/

SELECT sum(LineTotal) as Total_Amount, ProductID 
FROM Sales.SalesOrderDetail
WHERE ProductID = 774 or ProductID = 777
Group BY ProductID;

/*3, Write a query to display the sales person BusinessEntityID, last name and first name of all the sales persons and the name of the territory to which they belong.*/

Select s.BusinessEntityID, s.LastName, s.firstname, p.Name From person.Person as s, sales.SalesTerritory as p;



/*4,  Write a query to display the Business Entities of the customers that have the 'Vista' credit card.*/
/* Tables: Sales.CreditCard, Sales.PersonCreditCard, Person.Person*/

SELECT s.CardType , p.BusinessEntityID
FROM Sales.CreditCard as s
JOIN Sales.PersonCreditCard as p
on s.CreditCardID=p.CreditCardID
WHERE CardType like '%Vista%';


SELECT * FROM person.Person;

/*Show the number of customers for each type of credit cards*/

SELECT s.CardType, Count (p.BusinessEntityID)
FROM Sales.CreditCard as s
JOIN Sales.PersonCreditCard as p
on s.CreditCardID=p.CreditCardID
Group By CardType;

/*5, Write a query to display ALL the country region codes along with their corresponding territory IDs*/
/* tables: Sales.SalesTerritory,  Person.CountryRegion*/

SELECT CountryRegionCode, TerritoryID
FROM Person.CountryRegion;

SELECT s.CountryRegionCode,
p.TerritoryID
FROM Person.CountryRegion as s
LEFT OUTER JOIN Sales.SalesTerritory as p
ON s.CountryRegionCode=p.CountryRegionCode;

/*List all the countries/regions that do not belong to any territory*/

SELECT s.CountryRegionCode,
p.TerritoryID
FROM Person.CountryRegion as s
LEFT OUTER JOIN Sales.SalesTerritory as p
ON s.CountryRegionCode=p.CountryRegionCode




SELECT * FROM Person.CountryRegion;

/*6, Find out the average of the total dues of all the orders.*/
/* tables: Sales.SalesOrderHeader*/


SELECT AVG(TotalDue) as Average_TotalDue
FROM Sales.SalesOrderHeader;


/*7, Write a query to report the sales order ID of those orders where the total due is greater than the average of the total dues of all the orders*/

SELECT SalesOrderID, TotalDue    
FROM Sales.SalesOrderHeader
WHERE TotalDue > 3915.9951
ORDER BY TotalDue;

SELECT SalesOrderID, TotalDue    
FROM Sales.SalesOrderHeader
WHERE TotalDue > 
(SELECT AVG(TotalDue) as Average_TotalDue
FROM Sales.SalesOrderHeader)
ORDER BY TotalDue;

