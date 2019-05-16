use Library;


--select * from  Book_Catalog where book_id_catalog between 10 and 25
--Order By book_id_catalog DESC

--select * from [User] where phone_number like '%21%'

--select * from Book_Catalog inner join Book_Borrow on book_id_catalog = Book_Borrow.book_id

--select book_id, user_id, borrow_date, period, id, name, surname, phone_number, adress
--from Book_Borrow right join [User] on user_id = id

--select * from Publisher left join Book on Publisher.id = Book.publisher_id

--select user_id, sum (period) from Book_Borrow
--group by user_id

--select [User].name, [User].surname,[User].phone_number, Book_Borrow.return_date, Book_Catalog.book_id_catalog, Book_Catalog.status, Book.name
--from Book_Borrow 
--inner join Book_Catalog on (Book_Catalog.book_id_catalog = Book_Borrow.book_id)
--inner join [User] on ([User].id = Book_Borrow.user_id)	
--inner join Book on Book_Catalog.book_id = Book.id



