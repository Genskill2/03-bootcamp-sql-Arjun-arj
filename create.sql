create table publisher(id integer primary key autoincrement, name text, country text);
create table books(id integer primary key autoincrement, title text, publisher integer, FOREIGN KEY(publisher) REFERENCES publisher(id));
create table subjects(id integer primary key autoincrement, name text);
create table books_subjects(book text, subject text , foreign key(book) references books(id), foreign key(subject) references subjects(id));  


