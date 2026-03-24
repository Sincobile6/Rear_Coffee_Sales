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

create table Dim_Date(
DateID varchar(250),
Full_Date date,
Day int,
Month int,
year int,
Day_Of_Week int,

)

create table Dim_Store(
StoreID varchar(250),
Store_Name varchar(250),
City Varchar(250),
Region varchar(250),
Store_Type varchar(250)


)

create table Dim_product(
ProductID varchar(250),
Product_Name varchar(250),
Category varchar(250),
Size int,
Price int,


)

create table Dim_Payment(
PaymentID varchar(250),
Payment_Type varchar(250),
Provider varchar(250),
Transaction_Fee int,


)

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

