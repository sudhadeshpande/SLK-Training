create database Insurance2

use Insurance2
go


/**********************CUSTOMER TABLE**********************/
create table Customer
(
customer_id int identity(1,1) constraint pk primary key,
firstname varchar(20),
lastname varchar(30),
email varchar(50),
contactno varchar(11),
city varchar(20),
UPassword varchar(20),
cpassword varchar(20)
)

select * from Customer

/********************************************************************************/
