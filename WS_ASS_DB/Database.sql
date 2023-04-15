USE [master]
GO
CREATE DATABASE [WS_PRJ301]
GO
USE [WS_PRJ301]
GO
CREATE TABLE Categories(
	CateId int primary key,
	CateName varchar(50) NULL,
	Status int NULL
) 
GO
CREATE TABLE Items(
	ItemId int primary key,
	ItemName varchar(50) NULL,
	Price int NULL,
	CateId int NULL 
) 
GO
CREATE TABLE FAQ(
	Id int identity(1,1) primary key,
	CustName varchar(50) not null,
    CustContent varchar(100) not NULL,	
    ItemId int          
) 
GO
ALTER TABLE Items  
ADD  CONSTRAINT [FK_Items_Categories] FOREIGN KEY(CateId)
REFERENCES Categories(CateId)
GO

ALTER TABLE FAQ
ADD  CONSTRAINT [FK_Items_FAQ] FOREIGN KEY(ItemId)
REFERENCES Items(ItemId)
---------------------------------------
insert Categories values(1,'Dining tables',1)
insert Categories values(2,'Chairs',0)
insert Categories values(3,'Clocks & Barometers',1)
GO
--------------------------------------------
insert Items values(1,'table walnut side',2000,1)
insert Items values(2,'Edwardian-Torchiere',1200,1)
insert Items values(3,'Large Oak farmhouse',1000,1)
insert Items values(4,'Mahogani',2000,2)
insert Items values(5,'Carver',900,2)
insert Items values(6,'Library',1000,2)
insert Items values(7,'Chiming Longcase',3000,3)
insert Items values(8,'small Caver',2300,3)
GO