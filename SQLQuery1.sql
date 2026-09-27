create database RestaurantDB
create table Restaurant
( 
 Restaurant_ID          char(20)    primary key, 
 Restaurant_Name        char(30)  not null, 
Restaurant_Address     varchar(50), 
Restaurant_Contact     bigint, 
 Restaurant_Rating      float, 
 Restaurant_Type        char(50) 
 ) 
 insert into Restaurant values('101','Ps4','Bus Stand Road',9876543215,4.0,'Veg and Non Veg')
 insert into Restaurant values('102','Taj','Tiruchanoor Road',9876543210,3.2,'Pure Veg')
 insert into Restaurant values('103','A2B','KT Road',9876543211,3.5,'Pure Veg')
 insert into Restaurant values('104','Orion','Nandi circle',9876543212,4.5,'Pure Veg')

 insert into Restaurant values('105','Vivaha Bhojanambu','Dr Mahal Road',9876543213,3.5,'Non Veg')
 insert into Restaurant values('106','Space Biryani','VV mahal Road',9876543214,3.0,'Non Veg')

select * from Restaurant

create table Food
( 
 Food_Id     int       primary key,  
 Food_Name   char(30) unique, 
 Food_Type   char(20), 
 Quantity    int, 
 Food_Price  int 
 ) 
 insert into Food values(301,'Panner tikka','Veg',3, 250)
 insert into Food values(302,'Veg Biryani','Veg',2, 150)
 insert into Food values(303,'North Indian Meals','Veg',1, 290)
 insert into Food values(304,'South Indian Meals','Veg',1, 190)
 insert into Food values(305,'Pizza','Non Veg',1, 250)
 insert into Food values(306,'Mutton Biryani','Non Veg',4,130)
 insert into Food values(307,'Puri','Veg',2,90)
 insert into Food values(308,'Gobi fried rice','Veg',1,180)
 insert into Food values(309,'Chicken fried rice','Non Veg',1,290)
 insert into Food values(310,'Chicken Biryani','Non veg',1,280)

 select * from Food

create table Customer
( 
 Customer_Id       int           primary key, 
 Customer_Mobile   bigint, 
 Customer_Email    varchar(50),
 Customer_Address  varchar(50), 
 Customer_Name     char(20),
 Ordered_Food      char(30)  foreign key(Ordered_Food) references Food(Food_Name)
 ) 
insert into Customer values(50001,9876500001,'bhavana@gmail.com','Tirupati','Bhavana','Panner tikka') 
insert into Customer values(50002,9876500002,'aswini@gmail.com','Piler','Aswini','Veg Biryani') 
insert into Customer values(50003,9876500003,'bhargavi@gmail.com','Madanapalle','Bhargavi','North Indian Meals') 
insert into Customer values(50004,9876500004,'teju@gmail.com','Chennai','Teju','South Indian Meals') 
insert into Customer values(50005,9876500005,'yashu@gmail.com','Bangalore','Yashu','Pizza') 
insert into Customer values(50006,9876500006,'charitha@gmail.com','Kurnool','Charitha','Mutton Biryani') 
insert into Customer values(50007,9876500010,'nandhu@gmail.com','Vijayawada','Nandhu','Puri') 
insert into Customer values(50008,9876500009,'keerthana@gmail.com','Hyderabad','Keerthana','Gobi fried rice') 
insert into Customer values(50009,9876500007,'harini@gmail.com','Nellore','Harini','Chicken fried rice') 
insert into Customer values(500010,9876500008,'sravani@gmail.com','Kadapa','Sravani','Chicken Biryani') 

select * from Customer 

create table Payment
( 
 Payment_Id             int        primary key, 
 Amount                 int, 
 Payment_Type           char(20), 
 Discount_Percent       int, 
 Payment_Date           Date 
 ) 
 insert into Payment values(501,200,'Cash',12,'2026-07-16')
 insert into Payment values(502,280,'UPI',12,'2026-08-16')
 insert into Payment values(503,220,'Cash',10,'2026-09-16')
 insert into Payment values(504,180,'UPI',8,'2026-08-16')
 insert into Payment values(505,100,'Cash',5,'2026-07-16')
 insert into Payment values(506,399,'Card',12,'2026-08-16')
 insert into Payment values(507,150,'UPI',8,'2026-09-16')
 insert into Payment values(508,230,'UPI',12,'2026-08-16')
 insert into Payment values(509,200,'Card',12,'2026-09-16')
 insert into Payment values(510,210,'Cash',12,'2026-08-16')
 
 select * from Payment

create table Staff( 
 Staff_Id     int         primary key, 
 Staff_name   char(20), 
 Staff_Type   char(20), 
 Rating       float, 
 Salary       int,
 Orders       int
 ) 

insert into Staff values(161,'Rahul','Chef',4.3,270500,150) 
insert into Staff values(162,'Arun','Server',3.8,202800,120) 
insert into Staff values(163,'Babu','Manager',2,305000,20)
insert into Staff values(164,'Rohit','Assistant Manager',4.6,350000,200)
insert into Staff values(165,'Naveen','Deliverry Staff',4.2,24000,250)

select * from Staff


update Restaurant set Restaurant_Address = 'Annamayya Circle' where Restaurant_ID = 101
update Restaurant set Restaurant_Rating = 4.5  where Restaurant_Name ='Taj'
update Customer set Customer_Address = 'Tiruchanoor Road'  where Customer_Name = 'Bhavana'
update Customer set Customer_Email = 'bhavana99@gmail.com'  where Customer_Name = 'Bhavana'
update Payment set Discount_Percent=50 where Payment_ID=501
update Payment set Discount_Percent=15 where Payment_ID=502
update Food set Food_Type='Fast Food' where Food_Name='Pizza'
delete from Payment where Payment_ID=505 and Payment_Type='Cash'
delete from Food where Food_Name='Burger'
delete from Staff where Staff_Name='Babu' and Rating=2
update Restaurant set Restaurant_Type='Veg' where Restaurant_Name='Vivaha Bhojanambu'
update Food set Quantity=10 where Food_Id=304 or Food_Price=399

select * from Restaurant
where Restaurant_Type = 'Pure Veg'

select * from Restaurant
where Restaurant_Rating = 4.5 and Restaurant_Address = 'Nandi circle'

select Customer_Email from Customer
where Customer_Id = 500010

select Food_Name, Quantity, Food_Price from Food


select * from Food
where Food_Type = 'Fast Food' and Food_Price = 250

select * from Payment
where Payment_Id = 505

update Staff set Salary = 29000 
where rating = 4.6 and Orders>=200

alter table Staff
add Joining_Date date
update Staff set Joining_Date ='2025-10-31'
where Staff_Id = 161


update Staff set Joining_Date ='2023-02-08'
where Staff_Id = 162

update Staff set Joining_Date ='2024-09-21'
where Staff_Id = 163

update Staff set Joining_Date ='2025-06-10'
where Staff_Id = 164

update Staff set Joining_Date ='2022-08-08'
where Staff_Id = 165

delete from Staff where Rating=2 and Orders <=20


select * from Restaurant
select * from Food
select * from Customer
select * from Payment
select * from Staff


