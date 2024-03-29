﻿------UC1-------
CREATE DATABASE ADDRESS_BOOK_SERVICE;
USE ADDRESS_BOOK_SERVICE;

------UC2------
----CREATING TABLE-----
CREATE TABLE ADDRESS_BOOK_SERVICE
(
FirstName char(25),
LastName char(25),
City char(25),
StateName char(25),
Zip int,
Phone varchar(25),
Email varchar(25)
);
 SELECT * FROM ADDRESS_BOOK_SERVICE;

 -----UC3-----
 ----INSERT CONTACT IN ADDRESSBOOK------
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Manasi','Patil','Nashik','Maharashtra','412109','845784','mansi@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Ansh','Patil','Mumbai','Maharashtra','560085','454645','ansh@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Aryansh','Patil','Pune','Maharashtra','8375','763784','aryansh@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('snehal','sonwane','nashik','Maharashtra','574895','09384903','snaehal@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Priyanka','sonawane','hyderabad','Telangana','455454','09384903','priyanka@gmail.com');
SELECT * FROM ADDRESS_BOOK_SERVICE;
----------------UC4--------------
-----Editing Details Using Name----------
UPDATE ADDRESS_BOOK_SERVICE SET Phone='7002285211' WHERE FirstName='Manasi';
SELECT * FROM ADDRESS_BOOK_SERVICE;

-------UC5--------------
-------Deleating a person using name---------
DELETE FROM ADDRESS_BOOK_SERVICE WHERE FirstName= 'snehal';
SELECT * FROM ADDRESS_BOOK_SERVICE;

--------------------UC6-------------
----------Retrieving Data by City or State----------
Select * from ADDRESS_BOOK_SERVICE WHERE City='Mumbai';
Select * from ADDRESS_BOOK_SERVICE WHERE StateName='Maharashtra';

------------UC7-----------
---------Size of Address book by City or State------------
Select COUNT(City) as City_Count FROM ADDRESS_BOOK_SERVICE;
Select COUNT(StateName) as State_Count FROM ADDRESS_BOOK_SERVICE;

----------------UC8--------------
-----------Sorting data Alphabetically by person name------------
SELECT * FROM ADDRESS_BOOK_SERVICE ORDER BY(FirstName);

-----------UC9-----
----------Ability to identify each Address Book with name and Type---------
alter table ADDRESS_BOOK_SERVICE  add addressBook_Name varchar(30),addressBook_Type varchar(30);
update ADDRESS_BOOK_SERVICE set addressBook_Name = 'family address book', addressBook_Type = 'Family' where FirstName='Ankita';
update ADDRESS_BOOK_SERVICE set addressBook_Name = 'friends address book', addressBook_Type = 'Friends' where FirstName='sanket';
select * from ADDRESS_BOOK_SERVICE;
------uc10-------
---------Ability to get number of contact persons using count type----------
select count(addressBook_Type) from ADDRESS_BOOK_SERVICE where addressBook_Type = 'Family';

-----UC11-------
-----------Ability to add person to both Friend and Family-------
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Snehal','Patil','pune','Maharashtra','412109','845784','snehalp@gmail.com','friends address book','Friends');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Pallavi','Khaire','Mumbai','Maharashtra','560085','454645','pallu@gmail.com',' address book','Family');
select * from ADDRESS_BOOK_SERVICE;