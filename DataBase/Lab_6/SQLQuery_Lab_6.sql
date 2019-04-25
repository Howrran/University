--use Library;


--create view Catalog2
-- as
--  select distinct book_id,book_name,book_id_catalog,status from Book_Catalog;

--select * from Catalog2
--where status = 0

select Catalog2.book_id, catalog2.book_name, book.name, book.publisher_id from Catalog2, Book
where book.id = catalog2.book_id_catalog and publisher_id = 1