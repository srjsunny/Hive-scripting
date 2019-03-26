
create table empData
(
id int,
name string,
age int,
gender string,
department string,
ctc int

)row format delimited fields terminated by '\t';

load data local inpath '/home/suraj/Desktop/employeeData.txt' overwrite into table empData;


select * from empData limit 5;

select distinct(department) from empData;

select e.id,e.name,e.department, e.ctc from empData as e inner join (select e2.department,max(e2.ctc) as salary from empData as e2 group by e2.department) as t on e.department = t.department and e.ctc = t.salary;
 
