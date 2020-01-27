insert into StudentRecord values('Sathyaseelan');
insert into StudentRecord values('Madhu');
insert into StudentRecord values('Siva');
insert into StudentRecord values('Dinesh');

select * from StudentRecord

delete from StudentRecord where StudentName like 'Sathyaseelan';

insert into StudentRecord values('Gokul');

set identity_insert StudentRecord on

insert into StudentRecord(StudentId,StudentName) values(1,'Arun');

set identity_insert StudentRecord off

insert into StudentRecord values('Sathyaseelan');

