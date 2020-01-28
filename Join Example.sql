insert into tblEmployee
values('Todd','Male',40000,1)

insert into tblEmployee
values('Anu','Female',30000,3)

insert into tblEmployee
values('Arnold','Male',23000,1)

insert into tblEmployee
values('Kenry','Male',34000,3)

insert into tblEmployee
values('Siva','Male',40000,2)

insert into tblEmployee
values('Madhu','Female',30000,2)

insert into tblEmployee
values('Sara','Female',33000,3)

insert into tblEmployee
values('James','Male',45000,2)

insert into tblEmployee
values('Sam',null,20000,3)

insert into tblEmployee
values('Ben',null,390000,1)

insert into tblDept
values(1,'Finance','New-Delhi','Rich')

insert into tblDept
values(2,'HR','Chennai','Ramesh')

insert into tblDept
values(3,'IT','Mumbai','Saravanan')

insert into tblDept
values(1,'Marketing','Karnataka','Balachandar')

insert into tblDept
values(4,'Training','Coimbatore','Roy')

select * from tblEmployee
select * from tblDept

update tblEmployee
set DeptId=null where Name='Ben';

delete from tblEmployee 
/*********************Inner Join****************************/

select Name,Gender,Salary ,DeptName from tblEmployee
inner join tblDept
on tblEmployee.DeptId=tblDept.Id;

/*********************Left Join ,use where clause to make advanved and intelligent joins****************************/

select Name,Gender,Salary ,DeptName from tblEmployee
Left join tblDept
on tblEmployee.DeptId=tblDept.Id
where tblEmployee.DeptId is null;

/*********************Right Join use where clause to make advanved and intelligent joins****************************/

select Name,Gender,Salary ,DeptName from tblEmployee
Right join tblDept
on tblEmployee.DeptId=tblDept.Id
where tblEmployee.DeptId is null

/**********************Full Join use where clause to make advanved and intelligent joins****************************/

select Name,Gender,Salary ,DeptName from tblEmployee
Full join tblDept
on tblEmployee.DeptId=tblDept.Id
where tblEmployee.DeptId is null
or tblDept.Id is null