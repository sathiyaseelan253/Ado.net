



alter table Product
add constraint Unique_name unique(CustomerName)


insert into Product 
values(4,'Ajith','aji@gmail.com')

insert into Product 
values(4,'Nikita','niki@gmail.com')

insert into Product 
values(4,'Dinesh','dinesh@gmail.com')

create proc Student_Procedure
as
begin

select * from Product

end


Student_Procedure

