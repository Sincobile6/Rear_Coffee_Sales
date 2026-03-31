--create the database 

create database Rear_Coffee_Sales

go

use Rear_Coffee_Sales

--create the tables

create table Dim_Customers(
CustomerID varchar(250),
First_Name varchar(250),
Last_Name varchar(250),
Gender varchar(250),
City varchar(250),


)

go


INSERT INTO Dim_Customers (CustomerID, First_Name, Last_Name, Gender, City) VALUES
('C001','John','Smith','Male','Port Elizabeth'),
('C002','Sarah','Johnson','Female','Port Elizabeth'),
('C003','Michael','Brown','Male','Johannesburg'),
('C004','Emily','Davis','Female','Cape Town'),
('C005','David','Wilson','Male','Durban'),
('C006','Jessica','Taylor','Female','Port Elizabeth'),
('C007','Daniel','Anderson','Male','Pretoria'),
('C008','Ashley','Thomas','Female','Cape Town'),
('C009','Chris','Moore','Male','Durban'),
('C010','Amanda','Martin','Female','Port Elizabeth'),
('C011','James','Lee','Male','Johannesburg'),
('C012','Olivia','White','Female','Cape Town'),
('C013','Robert','Harris','Male','Durban'),
('C014','Sophia','Clark','Female','Pretoria'),
('C015','William','Lewis','Male','Port Elizabeth');

create table Dim_Date(
DateID varchar(250),
Full_Date date,
Day int,
Month int,
year int,
Day_Of_Week int,

)

go


INSERT INTO Dim_Date (DateID, Full_Date, Day, Month, Year, Day_Of_Week) VALUES
('D001','2026-03-01',1,3,2026,7),
('D002','2026-03-02',2,3,2026,1),
('D003','2026-03-03',3,3,2026,2),
('D004','2026-03-04',4,3,2026,3),
('D005','2026-03-05',5,3,2026,4),
('D006','2026-03-06',6,3,2026,5),
('D007','2026-03-07',7,3,2026,6),
('D008','2026-03-08',8,3,2026,7),
('D009','2026-03-09',9,3,2026,1),
('D010','2026-03-10',10,3,2026,2);

create table Dim_Store(
StoreID varchar(250),
Store_Name varchar(250),
City Varchar(250),
Region varchar(250),
Store_Type varchar(250)


)

go

INSERT INTO Dim_Store (StoreID, Store_Name, City, Region, Store_Type) VALUES
('S001','Rear Coffee Central','Port Elizabeth','Eastern Cape','Flagship'),
('S002','Rear Coffee Mall','Cape Town','Western Cape','Mall'),
('S003','Rear Coffee Express','Johannesburg','Gauteng','Kiosk');

create table Dim_product(
ProductID varchar(250),
Product_Name varchar(250),
Category varchar(250),
Size int,
Price int,


)

go

INSERT INTO Dim_Product (ProductID, Product_Name, Category, Size, Price) VALUES
('P001','Espresso','Coffee',250,30),
('P002','Latte','Coffee',350,45),
('P003','Cappuccino','Coffee',350,40),
('P004','Americano','Coffee',300,35),
('P005','Mocha','Coffee',400,48),
('P006','Flat White','Coffee',300,42),
('P007','Tea','Beverage',300,25),
('P008','Hot Chocolate','Beverage',350,38),
('P009','Croissant','Bakery',150,28),
('P010','Blueberry Muffin','Bakery',150,25),
('P011','Chocolate Muffin','Bakery',150,27),
('P012','Sandwich','Food',250,55),
('P013','Bagel','Food',200,30),
('P014','Iced Latte','Cold Beverage',400,50),
('P015','Frappuccino','Cold Beverage',450,55);

create table Dim_Payment(
PaymentID varchar(250),
Payment_Type varchar(250),
Provider varchar(250),
Transaction_Fee int,


)

go

INSERT INTO Dim_Payment (
PaymentID, Payment_Type, Provider, Transaction_Fee) VALUES

('PM001','Cash','None',0),
('PM002','Card','Visa',2),
('PM003','Card','Mastercard',2),
('PM004','Mobile','Apple Pay',3),
('PM005','Mobile','Google Pay',3);



create table sales(
SalesID varchar(250),
CustomerID varchar(250),
DateID varchar(250),
ProductID varchar(250),
PaymentID varchar(250),
Quantity int,
Total_Amount int,
Discount_Amount int,
Profit int,


)

go
 
INSERT INTO Sales (

SalesID, CustomerID, DateID, ProductID, PaymentID, Quantity, Total_Amount, Discount_Amount, Profit) VALUES
('S0001','C001','D001','P002','PM002',2,90,5,40),
('S0002','C002','D001','P003','PM001',1,40,0,18),
('S0003','C003','D002','P001','PM003',3,90,10,45),
('S0004','C004','D002','P010','PM002',2,50,0,20),
('S0005','C005','D003','P012','PM004',1,55,5,25),
('S0006','C006','D003','P005','PM002',2,96,6,42),
('S0007','C007','D004','P004','PM001',1,35,0,15),
('S0008','C008','D004','P009','PM003',3,84,4,30),
('S0009','C009','D005','P006','PM002',2,84,0,35),
('S0010','C010','D005','P007','PM001',2,50,0,20),
('S0011','C011','D006','P002','PM002',1,45,0,20),
('S0012','C012','D006','P003','PM003',2,80,5,30),
('S0013','C013','D007','P001','PM001',2,60,0,25),
('S0014','C014','D007','P011','PM004',3,81,6,28),
('S0015','C015','D008','P012','PM005',1,55,0,22),
('S0016','C001','D008','P014','PM002',2,100,10,40),
('S0017','C002','D009','P015','PM003',1,55,0,20),
('S0018','C003','D009','P013','PM001',2,60,5,25),
('S0019','C004','D010','P008','PM002',1,38,0,15),
('S0020','C005','D010','P002','PM002',3,135,10,60);
