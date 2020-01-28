



1)  alter table Product
add constraint Unique_name unique(CustomerName)

******************Insert Statements******************
insert into Product 
values(4,'Ajith','aji@gmail.com')

insert into Product 
values(4,'Nikita','niki@gmail.com')

insert into Product 
values(4,'Dinesh','dinesh@gmail.com')

2) sp_helptext spGetEmail ----Helps to view the text of stored procedure

******************Create Procedurer******************

CREATE procedure spGetEmail

@CustomerId int

as

begin

	select * from Product where CustomerId=@CustomerId

end

3)  ******************Altering stored Procedure******************

alter procedure spGetEmail
@CustomerId int
as
begin
	select * from Product where CustomerId=@CustomerId
end

exec spGetEmail @CustomerId=4

4)  *************Altering stored procedure with input parameters *******************

alter procedure spGetEmail
@CustomerId int
as
begin 
	select * from Product where CustomerId=@CustomerId
end

5)  *************Executing stored procedure with input parameters*************

exec spGetEmail @CustomerId=4
		(or)
exec spGetEmail 4

6) With Encrypt ----we cannot view the text of the stored procedure but we can delete sp
sp_helptext spGetEmail



alter procedure spGetEmail
@CustomerId int
with encryption
as
begin 
	select * from Product where CustomerId=@CustomerId
end


7) To delete a stored procedure 
 
 drop procedure spGetEmail

8)Stored procedure with output parameters

insert into PersonTable 
values ('Sathyaseelen','sathya@gmail.com','9566580353');

insert into PersonTable 
values ('Gokul','gokul@gmail.com','8072117799');
insert into PersonTable 

values ('Arun','arun@gmail.com','7010456890');

insert into PersonTable 
values ('Naveen','navee@gmail.com','9080456231');

insert into PersonTable 
values ('Santhosh','sandy@gmail.com','7894561235');

insert into PersonTable 
values ('Hari','hari@gmail.com','9566580353');

alter procedure spGetEmail
@PhoneNum nvarchar(50),
@PhoneNumCount int output
as
begin 
	select @PhoneNumCount=count(PersonId) from PersonTable where PhoneNumber=@PhoneNum
end


*************Executing stored procedure with output parameters

if we did not specify out out or output keyword  it initialize that variable as null


Declare @totalCount int 
exec spGetEmail @PhoneNum='9566580353',@PhoneNumCount=@totalCount out
print @totalCount

9) sp_help----View the information about stored procedures (Datatypes, Parameters name)

sp_help spGetEmail

10) sp_depends----View the dependencies of stored procedures.

sp_depends spGetEmail