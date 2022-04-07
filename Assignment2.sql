Select * from Customer where Country = 'GERMANY'

Create table Employee(
EmployeeId int Identity(1,1) Primary key,
FirstName nvarchar(40),
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(40)
)

select * from Employee

insert into dbo.Employee values ('Metlash','Met','Ohio','America','7010300589')
insert into dbo.Employee values ('Krishna','Das','Coimbatore','India','9874563210')
insert into dbo.Employee values ('Karthi','Niv','Paris','France','6549871230')
insert into dbo.Employee values ('Hari','Hara','Columbo','Srilanka','9012365478')
insert into dbo.Employee values ('Austin','Sti','Downtown','Dubai','8523697410')

select * from Employee

Alter table Customer 
ADD FaxNumber nvarchar(12);

select * from Customer

Select * from Customer Where FaxNumber is Not Null;

Select * from Customer Where FirstName Like '_u%';

Select * From OrderItem Where UnitPrice between 10 and 20;

select * From Order2

Select OrderDate AS SHIPPING_DATE 
From Order2
Order by OrderDate ASC

Select ShipName
From Order2
where ShipName =''La corned abondance' AND'OrderDate BETWEEN '2018-01-17' AND '2020-03-18' 
Order by OrderDate ASC

Select * From Product
Where Package ='EXOTIC LIQUIDS'

select avg(quantity) From OrderItem INNER JOIN Product ON OrderItem.ProductId = Product.id;


create table Shipping
(
shipcompany nvarchar(50),
ShipName nvarchar(50),
operational nvarchar(10),
)

Select ShipCompany, ShipName
From Shipping
Where Operational = 'yes'

Select E.NAME AS EMPLOYEE_NAME,M.NAME AS MANAGER_NAME
From Employee E JOIN Employee M
ON E.MANAGER=M.MANAGER

Select OI.OrderId,P.ProductName
From Product P INNER JOIN OrderItem OI
ON OI.ProductId = OI.ProductId

SELECT SUM(UnitPrice) As Total
FROM Product 
Group by Package
having Package ='exotic liquids' and UnitPrice >50;


