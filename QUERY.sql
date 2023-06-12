SELECT SaleDate, Amount,Boxes, Amount/Boxes  as 'Amount per Box' from sales;
SELECT * from sales;
where Amount>15000 AND  ORDER BY Amount desc ;
SELECT * from sales
where Amount>15000 and SaleDate >= '2022-01-01' ORDER BY SaleDate;

SELECT SaleDate, Amount  from sales
where Amount>15000 and year(SaleDate) = '2022' ORDER BY SaleDate;

SELECT * from sales
where Boxes BETWEEN '0' and '50' ORDER BY Boxes;

select boxes, weekday(SaleDate) as 'Day of Week'
from sales
where weekday(SaleDate)=4;

SELECT Salesperson, Location, Team 
FROM people where Team='Delish' or Team='Jucies' ;

SELECT Salesperson, Location, Team 
FROM people where Team IN ('Delish', 'Jucies') ;

SELECT *
FROM people where Salesperson like '%B%' ;

select SaleDate, Amount,
		case 	when Amount<1000 then 'under 1k'
				when Amount<5000 then 'under 5k'
                when Amount<10000 then 'under 10k'
			else '10k or more'
		end as  'Amount category'
from sales;