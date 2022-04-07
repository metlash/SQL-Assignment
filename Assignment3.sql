select * From Order2 INNER Join Customer 
ON Order2.CustomerId = Customer.id and Customer.Phone = '9784563123';

Select * From Product
Where CATEGORY = 'SeaFood'

select * From Order2 INNER Join Customer ON Order2.CustomerId = Customer.id 
and Customer.Country != 'LONDON';

select * From Order2 where id = 
(Select OrderId from OrderItem Inner Join Product ON OrderItem.ProductId = Product.id and ProductName= 'Mobile')

Select E.NAME AS EMP_NAME , D.DeptName AS DEPT_NAME,E.RATING
From Employee E INNER JOIN Dept D
ON E.DeptId = D.DeptId