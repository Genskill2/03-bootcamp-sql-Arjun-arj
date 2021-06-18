insert into publisher(name,country) values ('PHI','India');
insert into publisher(name,country) values ('Harper','USA');
insert into publisher(name,country) values ('GCP','USA');
insert into publisher(name,country) values ('Avery','USA');
insert into publisher(name,country) values ('Del Rey','UK');
insert into publisher(name,country) values ('Vintage','UK');


insert into books(title,publisher) values ('The C Programming Language', (select publ_table.id from publisher AS publ_table where publ_table.name='PHI'));
insert into books(title,publisher) values ('The Go Programming Language', (select publ_table.id from publisher AS publ_table where publ_table.name='PHI'));
insert into books(title,publisher) values ('The UNIX Programming Environment', (select publ_table.id from publisher AS publ_table where publ_table.name='PHI'));
insert into books(title,publisher) values ('Cryptonomicon', (select publ_table.id from publisher AS publ_table where publ_table.name='Harper'));
insert into books(title,publisher) values ('Deep Work', (select publ_table.id from publisher AS publ_table where publ_table.name='GCP'));
insert into books(title,publisher) values ('Atomic Habits', (select publ_table.id from publisher AS publ_table where publ_table.name='Avery'));
insert into books(title,publisher) values ('The City and The City', (select publ_table.id from publisher AS publ_table where publ_table.name='Del Rey'));
insert into books(title,publisher) values ('The Great War for Civilisation', (select publ_table.id from publisher AS publ_table where publ_table.name='Vintage'));


insert into subjects(name) values('C');
insert into subjects(name) values('UNIX');
insert into subjects(name) values('Technology');
insert into subjects(name) values('Go');
insert into subjects(name) values('Science Fiction');
insert into subjects(name) values('Productivity');
insert into subjects(name) values('Psychology');
insert into subjects(name) values('Politics');
insert into subjects(name) values('History');



insert into books_subjects(book,subject) values((select books.id from books where books.title='The C Programming Language'),(select subjects.id from subjects where subjects.name='C'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='The C Programming Language'),(select subjects.id from subjects where subjects.name='UNIX'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='The C Programming Language'),(select subjects.id from subjects where subjects.name='Technology'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='The Go Programming Language'),(select subjects.id from subjects where subjects.name='Go'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='The Go Programming Language'),(select subjects.id from subjects where subjects.name='Technology'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='The UNIX Programming Environment'),(select subjects.id from subjects where subjects.name='UNIX'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='The UNIX Programming Environment'),(select subjects.id from subjects where subjects.name='Technology'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='Cryptonomicon'),(select subjects.id from subjects where subjects.name='Technology'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='Cryptonomicon'),(select subjects.id from subjects where subjects.name='Science Fiction'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='Deep Work'),(select subjects.id from subjects where subjects.name='Technology'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='Deep Work'),(select subjects.id from subjects where subjects.name='Productivity'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='Atomic Habits'),(select subjects.id from subjects where subjects.name='Productivity'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='Atomic Habits'),(select subjects.id from subjects where subjects.name='Psychology'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='The City and The City'),(select subjects.id from subjects where subjects.name='Science Fiction'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='The City and The City'),(select subjects.id from subjects where subjects.name='Politics'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='The Great War for Civilisation'),(select subjects.id from subjects where subjects.name='Politics'));
insert into books_subjects(book,subject) values((select books.id from books where books.title='The Great War for Civilisation'),(select subjects.id from subjects where subjects.name='History'));
