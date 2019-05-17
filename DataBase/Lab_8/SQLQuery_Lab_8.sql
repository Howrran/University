use Library;

--select * from Book_Catalog
--order by status

--select count(book_id) as books_amount, user_id from Book_Borrow
--group by user_id
--order by user_id

--select count([User].surname), Book.name
--from Book_Borrow 
--inner join Book_Catalog on (Book_Catalog.book_id_catalog = Book_Borrow.book_id)
--inner join [User] on ([User].id = Book_Borrow.user_id)	
--inner join Book on Book_Catalog.book_id = Book.id
--group by Book.name