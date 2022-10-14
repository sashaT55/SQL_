show databases;
use students;
show tables;
select*from characters;
select fname,lname,patronus from characters where patronus is not null;
select*from characters where lname like '%e';
select sum(age) from characters;
select fname,lname,age from characters order by age;
select fname,age from characters where age between 50 and 100;
select distinct(age) from characters;
select*from characters where faculty="Gryffindor" and age >30;
select distinct(faculty) from characters limit 3;
select fname from characters where (length(fname) =5 and  fname like'H%') or fname like 'L%';
select avg(age) from characters;
delete from characters where char_id=11;
select lname from characters where lname like'%a%';
select char_id,book_id,fname from characters  where patronus is not null order by fname;
select fname,lname from characters where lname in ("Crabbe", "Granger" ,"Diggory");
select min(age) from characters;
select fname from characters union select book_name from library;
select faculty ,count(char_id) from characters group by faculty having count(char_id) > 1;
select fname,lname,
case 
when faculty = "Gryffindor" then "Godric"
when faculty = "Slytherin" then "Salazar"
when faculty = "Ravenclaw" then "Rowena"
when faculty = "Hufflepuff" then "Helga"
else "Muggle"
end as faculty from characters; 

select lname from characters where lname not regexp '^[SHL]';

