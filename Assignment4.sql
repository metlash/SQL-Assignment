Select SUM(UnitPrice) As Total,CompanyName 
FROM Product
Group by CompanyName
having Product ='exotic liquids' and UnitPrice >50;




select SUBSTRING(CompanyName,1,4) as MyFirstWord from Company;




Select * From Employee
group by DOJ
having count(*)=1





Select * From Employee
group by DOJ
having MAX(DOJ)





Select ProductName,MAX(UnitPrice) AS MOST_EXPENSE,
MIN(UnitPrice) AS LEAST_EXPENCE
From Product
Group by ProductName, UnitPrice
Having count(unitprice)>0




Select * From Product
Where Package ='yes'



Select * From Product
Where UnitPrice < IsDiscontinued



Select IsDiscontinued,Package
From Product
Group by IsDiscontinued,Package
Having count(IsDiscontinued)>=1 



Select * From Customer
where Id=
(Select Id From OrderItem
Group by Id
Having Max(Id)>0)