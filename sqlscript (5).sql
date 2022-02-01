REM   Script: lab - 8
REM   Set operators and Views

create table subject1_010 (Roll_no number,name varchar(30),marks number);

desc subject1_010 


insert into subject1_010 values(1,'Balaji',96);

insert into subject1_010 values(2,'Subrahmanyanm',82);

insert into subject1_010 values(3,'Subhash',87);

insert into subject1_010 values(4,'Sampath',91);

insert into subject1_010 values(5,'phani',85);

create table subject2_010 (Roll_no number,name varchar(30),marks number);

insert into subject2_010 values(1,'Balaji',98);

insert into subject2_010 values(2,'Subrahmanyam',81);

insert into subject2_010 values(3,'Subhash',88);

insert into subject2_010 values(4,'Sampath',93);

insert into subject2_010 values(5,'Phani',89);

select * from subject1_010 ;

select * from subject2_010 ;

select * from subject1_010  
union 
select * from subject2_010 ;

insert into subject1_010 values(6,'Venkata',84);

insert into subject2_010 values(6,'Venkata',84);

select * from subject1_010  
union 
select * from subject2_010;

select * from subject1_010  
union all 
select * from subject2_010;

select * from subject1_010  
union  
select * from subject2_010;

select * from subject1_010  
intersect 
select * from subject2_010;

select * from subject1_010  
minus 
select * from subject2_010;

select * from subject2_010  
minus 
select * from subject1_010;

select * from subject1_010  
minus 
select * from subject2_010 where marks > 95;

select * from subject1_010 where marks > 95 
union all 
select * from subject2_010 where marks>95;

select * from subject1_010 where marks > 95 
union 
select * from subject2_010 where marks>95;

create view v1 as select * from subject1_010;

select * from subject1_010;

desc v1


select * from v1;

select * from v1;

insert into v1 values (7,'shiva',83) ;

select * from subject1_010;

select * from v1;

create view v2 as select roll_no from subject1_010;

desc v2


insert into v2 values (100);

update subject1_010 set name ='kumar' where Roll_no=100;

select * from v2;

select * from v1;

delete from v2 where Roll_no=100;

select * from subject1_010;

select * from v1;

select * from v2;

create view v3 as select name from subject1_010;

select * from v3;

update v3 set name = 'shiva' where name = 'Krishna';

select * from v3;

update v3 set name='Krishna' where name = 'shiva';

 select * from v3;

 select * from subject1_010;

delete from v3 where name = 'Krishna' ;

 select * from v3;

 select * from subject1_010;

