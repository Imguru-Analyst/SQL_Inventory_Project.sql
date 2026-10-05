create database sql_Project2;
use sql_Project2;
select * from inv;

-- 1> Highest  Sale
select concat(format(max(Total_Sale)/1000000,2),"M") as Highest_Sale from inv;

-- 2> Lowest Sale
select min(Total_Sale) as Lowest_Sale from inv;

-- 3> Average Sale
select concat(format(avg(Total_Sale)/1000000,2),"M") as Avrege_Sale from inv;

-- 4> Total Product
select count(Product_ID) as Total_Products from inv;

-- 5> Monthly Sale
select Stock_Month,concat(format(sum(Units_Sold)/1000,0),"K") as Monthly_Units_Sold,concat(format(sum(Total_Sale)/1000000,2),"M") as Monthly_Sale from inv group by Stock_Month order by field(Stock_Month,"January","February","March","April","May","June","July","August","September","October","November","December") asc ;

-- 6> Monthly Damaged Units
select Stock_Month,sum(Damaged_Units) as Monthly_Units_Damaged from inv group by Stock_Month order by field(Stock_Month,"January","February","March","April","May","June","July","August","September","October","November","December") asc ;

-- 7> Monthly avg Opening Stock
select Stock_Month,format(avg(Opening_Stock)/1,2) as Monthly_avg_Stock_Open from inv group by Stock_Month order by field(Stock_Month,"January","February","March","April","May","June","July","August","September","October","November","December") asc ;

-- 8> Category wise Sale with units sold
select Category,concat(format(sum(Units_Sold)/1000,0),"K") as Units_Sold,concat(format(sum(Total_Sale)/1000000,2),"M") as Total_Sale from inv group by Category;

-- 9> Subcategory wise sale
select Subcategory,concat(format(sum(Total_sale)/1000000,0),"M") as Total_Sale from inv group by Subcategory;

-- 10> Damaged Units by Category
select Category,sum(Damaged_Units) from inv group by Category;

-- 11> Damaged Units By Subcategory by Units sold
select Subcategory,sum(Damaged_Units) as Damaged_Units,concat(format(sum(Units_Sold)/1000,0),"K") as Units_Sold from inv group by Subcategory;

-- 12> Avg Rating by supplier
select Supplier,format(avg(Supplier_Rating)/1,2) as Avg_Rating from inv group by Supplier order by Supplier asc;

-- 13> Categort wise rating
select Category,format(avg(Supplier_Rating)/1,2) as avg_Rating from inv group by Category order by Category asc;

-- 14> Avg Closing Stock by Caegory
select Category,format(avg(Closing_Stock)/1,2) as Avg_Closing_Stock from inv group by Category;

-- 15> Category wise avg Opening stock
select Category,format(avg(Opening_Stock)/1,2) as Avg_Opening_Stock from inv group by Category order by Category asc;  