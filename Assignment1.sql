create table Customer
(
Id int primary key,
FirstName nvarchar(50),
LastName nvarchar(50),
City nvarchar(40),
Country nvarchar(50),
Phone nvarchar(20)
)


create table Order2
(
Id int primary key,
OrderDate datetime,
OrderNumber nvarchar(10),
CustomerId  int ,
TotalAmount decimal(12,2)
)

create table OrderItem
(
Id int primary key,
OrderId int, 
ProductId int ,
UnitPrice decimal(12,2),
Quantity int
)

Create table Product
(
Id int primary key,
ProductName nvarchar(50),
UnitPrice decimal(12,2),
Package nvarchar(30),
IsDiscontinued bit
)

insert into Customer values (1, 'Metlash','met','hyderabad','India','9876543210')
insert into Customer values (2, 'Manoj','Mani','Ohio','America','8796541230')
insert into Customer values (3, 'Krishna','Das','Bangalore','India','9784563123')
insert into Customer values (4, 'Gokul','Hari','Berlin','Germany','9106238547')
insert into Customer values (5, 'Abijith','Abi','Coimbatore','India','8754714031')

Select * from Customer

insert into Order2 values(121, 18-01-2017, '1234', 1, 999.00);
insert into Order2 values(122, 21-07-2018, '1224', 2, 300.00);
insert into Order2 values(123, 22-03-2019, '1225', 3, 758.00);
insert into Order2 values(124, 12-08-2020, '1325', 4, 852.00);
insert into Order2 values(125, 17-06-2021, '1259', 5, 1258.00);

Select * from Order2

insert into OrderItem values(221, 234, 985, 296.00, 2);
insert into OrderItem values(223, 235, 885, 3521.00, 3);
insert into OrderItem values(224, 236, 585, 856.00, 4);
insert into OrderItem values(225, 237, 785, 797.00, 5);
insert into OrderItem values(226, 238, 258, 5862.00, 6);

select * from Order2

insert into Product values(921, 'Laptop', 4758.00, 'xyz', 1);
insert into Product values(922, 'Mobile', 1250.00, 'wer', 1);
insert into Product values(923, 'Charger', 111.00, 'asd', 0);
insert into Product values(924, 'Airdops', 525.00, 'der', 1);
insert into Product values(925, 'Camera', 2589.00, 'bog', 0);

select * from Product

Alter table Customer 
Alter Column FirstName nvarchar(40) NOT NULL;

Alter table Order2
Alter Column OrderDate datetime NOT NULL;


Select * from Customer Where Country LIKE 'i%' or Country LIKE 'a%'

Select * from Customer Where FirstName LIKE '__i%'