use Insurance
go

/*********CUSTOMER TABLE***********/

/*********************************************************************************/
/******* registration table *******/
create table registerdetails1
(
firstname varchar(20),
lastname varchar(30),
email varchar(50),
contactno varchar(11),
city varchar(20),
UPassword varchar(20),
cpassword varchar(20)
)


--alter table registerdetails1
-- add 
-- ALTER TABLE  registerdetails1 
-- drop Customer_id int  primary key  identity(1,1)
/*drop table registerdetails1*/

select * from registerdetails1

/*******************************************************/


/****** Contacted Customer Details ******/

/*Customer those who are contacted for information*/
create table contactedcustomeedetails
(firstname varchar(20),
lastname varchar(30),
city varchar(20),
contactno varchar(11),
rSubject  varchar(100) 
)

select * from contactedcustomeedetails
/*delete from contactedcustomeedetails where firstname='76ri'*/

/*Payment method details*/

/******************************************************************/

/*****  BUY POLICY  *****/

create table Customerpolicy
( Policy_No int primary key identity(109401,1), 
CustomerFullName   varchar(40),
Email varchar(20),
cAddress varchar(50),
City varchar(20),
cState varchar(20),
ContactNo bigint,
ShipNo varchar(10),
ShipModel varchar(10),
ShipPurchasedamount bigint,
VesselName varchar(20),
Typeofpolicyrequired varchar (20),
SoursePortname  varchar(20),
DestinationPortname varchar(20),
PackingDetails varchar(100),
ExtrachargesinRS bigint 
)

drop table Customerpolicy

SELECT * FROM Customerpolicy

--alter table Customerpolicy
--drop Customer_id int constraint fk_c foreign key references registerdetails1(Customer_id)

--alter table Customerpolicy
--add Customer_id int constraint fk_c foreign key references registerdetails1(Customer_id)


--alter table Customerpolicy
--drop constraint pk_buypolicy

--alter table Customerpolicy
--drop column policyno


/*************************************************************/
/***** CLAIM *****/

create table claim
(Policy_No int foreign key references Customerpolicy(Policy_No), 
FullName  varchar(20),
Email  varchar(30),
Contactno bigint,
cAddress varchar(40),
City  varchar(20),
SpName  varchar(20),
DpName  varchar(20),
Shipno  varchar(20),
Dofleavingsportn date,
DateofLoss date,
LossDescription varchar(100),
NatureofGoods varchar(100),

)

select * from claim

alter table claim
drop column lPaidBillLocation 

alter table claim ADD  premiumbill varchar(200)
--alter table claim
--drop column email,Contactno,cAddress,City ,SpName,DpName 
 
 /***************************************************************************/
 
/******   PAYMENT  ******/
create table paymentdetails
( 
pay_id int identity(1,1) constraint pk_p primary key,
policyno bigint, 
fullname varchar(40),
email varchar(40),
nameoncreditcard varchar(40),
premiumamount bigint,
cardno bigint,
expmonth char(10),
expyear int,
cvv int,
)

drop table paymentdetails

select * from contactedcustomeedetails
select * from registerdetails1

SELECT * FROM Customerpolicy
select * from claim
select * from paymentdetails

--alter table paymentdetails 
--add premiumamount bigint

drop table paymentdetails

create table Payment
( 
pay_id int identity(1,1) constraint pk_p primary key,
policyno bigint, 
fullname varchar(40),
email varchar(40),
nameoncreditcard varchar(40),
premiumamount bigint,
cardno bigint,
expmonth char(10),
expyear int,
cvv int,
)



select * from contactedcustomeedetails

select * from registerdetails1

SELECT * FROM Customerpolicy

select * from claim

select * from Payment


delete from claim where  Policy_No=109401;