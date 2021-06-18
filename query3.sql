select title from books JOIN books_subjects ON books.id=books_subjects.book WHERE id IN (select book from books_subjects JOIN subjects ON books_subjects.subject = subjects.id  where subject IN (select id from subjects WHERE name IN ('Politics','Technology'))) GROUP BY title;