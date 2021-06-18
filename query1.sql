select title from books where publisher=(select id from publisher AS publisher_table  where publisher_table.name = 'PHI');
