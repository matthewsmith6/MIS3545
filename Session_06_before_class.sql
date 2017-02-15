use AdventureWorks2012;

/*Find out all the customers from Sales.Customer table.*/
SELECT * 
FROM Sales.Customer;


/*Find out all the sales orders from Sales.SalesOrderHeader table.*/
SELECT *
FROM Sales.SalesOrderHeader;


/*Find out sales details about productID 843*/
SELECT * FROM Sales.SalesOrderDetail 
/WHERE ProductID = 843;
/WHERE ProductID BETWEEN 843 and 845;
WHERE PRODUCTID in (843, 844, 845)


/*Sales info of all the products of which unit price is between 100 and 200*/
SELECT * FROM Sales.SalesOrderDetail
/"Where UnitPrice between 100 and 200;"/
Where Unitprice = 200 and Unitprice = 100;




/*All the store names*/
SELECT Name
FROM Sales.Store;


/*Find out store names that contain "Bike" */
SELECT NAME
FROM Sales.Store WHERE NAME like '%Bike%';

/*Find out store names that end with "Bikes" */
SELECT NAME
FROM Sales.Store WHERE NAME like '%Bikes';

/*Find out name where the end is only lower case "b" for "bikes" */
SELECT NAME
FROM Sales.Store WHERE NAME like '%bikes'COLLATE SQL_Latin1_General_CP1_CS_AS;

/*info of all the credit cards*/
SELECT DISTINCT CardType
FROM Sales.CreditCard;


/* A list of credit card types*/


