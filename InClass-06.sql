use AdventureWorks2012;

/*MATTHEW SMITH HW#6*/

/*Activity 1. Using the HumanResources.Employee table, provide a count of the number of employees by job title.  The query should consider only current employees (the CurrentFlag must equal 1).  */

SELECT JobTitle, Count(BusinessEntityID) as Number 
FROM HumanResources.Employee
WHERE CurrentFlag = 1
GROUP BY JobTitle
Order BY Number Desc;





/*Activity 2. Modify the query you created in Activity 1 so that the output shows only those job titles for which there is more than 1 employee.  */

SELECT JobTitle, Count(BusinessEntityID) as Number 
FROM HumanResources.Employee
WHERE CurrentFlag = 1
GROUP BY JobTitle
having sum(BusinessEntityID) >= 1
Order BY Number Desc;



/*Activity 3. For each product, show its ProductID and Name (FROM the ProductionProduct table) and the location of its inventory (FROM the Product.Location table) and amount of inventory held at that location (FROM the Production.ProductInventory table).*/


SELECT s.ProductID, s.Quantity, a.Name, PA.Name as Location
FROM Production.ProductInventory as s
JOIN Production.Product as a
on a.ProductID=s.ProductID
JOIN Production.Location as PA
on PA.LocationID =s.LocationID
ORDER BY s.ProductID;



/*Activity 4. Find the product model IDs that have no product associated with them.  
To do this, first do an outer join between the Production.Product table and the Production.ProductModel table in such a way that the ID FROM the ProductModel table always shows, even if there is no product associate with it.  
Then, add a WHERE clause to specify that the ProductID IS NULL 
*/



SELECT s.Name,
p.ProductModelID
FROM Production.Product as s
RIGHT OUTER JOIN production.ProductModel as p
ON s.ProductModelID=p.ProductModelID
WHERE s.Name Is Null;

