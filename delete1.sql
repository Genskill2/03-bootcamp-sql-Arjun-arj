DELETE FROM books_subjects WHERE subject IN (select id from subjects WHERE name = 'History');
DELETE FROM subjects WHERE name='History';
