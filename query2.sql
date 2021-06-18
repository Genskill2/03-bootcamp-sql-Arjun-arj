select title , publisher.name from books, publisher AS publ INNER JOIN publisher ON publisher.id = books.publisher  where publisher.country = 'UK' group by title;
