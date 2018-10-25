use Training_19Sep18_Pune
select * from Poonam_Students

insert into Poonam_students values( 'Poonam', 'Satghare');
insert into Poonam_students values( 'Pushpa', 'Thakur');
insert into Poonam_students values( 'Rushikesh', 'Satghare');

create table Poonam_Students(
Pid int identity,
FirstName varchar(52),
LastName varchar (50),
)


create proc Poonam_AddStudents_161407(
@FName varchar(50),
@LName varchar(50),
@pid int output)

as 
begin
insert into Poonam_Students values (@FName, @LName)
set @pid = SCOPE_IDENTITY()
end

create proc Poonam_GetStudentDetails
(
@pid int)
as
begin
select * from Poonam_Students where Pid = @pid
end