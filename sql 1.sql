select*from library;
select*from characters;

select characters.fname, characters.lname,library.book_name from characters join library on characters.book_id=library.book_id;
select characters.fname, characters.lname,library.book_name from characters left join library on characters.book_id=library.book_id;
select characters.patronus,library.book_name from library join characters on characters.char_id=library.char_id;
select characters.fname,characters.lname,characters.age,library.book_name from characters join library on characters.book_id=library.book_id where age>15;
select characters.fname,library.book_name,library.start_date,library.end_date from library join characters on characters.book_id=library.book_id where age < 15 and patronus="Unknown";
select count(book_id) from library where end_date >(select end_date from library where char_id=2);
select patronus from characters where age > (select age from characters where patronus="Unknown");