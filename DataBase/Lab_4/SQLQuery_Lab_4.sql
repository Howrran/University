use Library;

--delete from Author
--DBCC CHECKIDENT('Author', RESEED, 0) -- встановлює ід на 0
--insert into Author
--values ('Yohan','Traus'),
--('Ivan','Zozula'),
--('Oleg','Tramp'),
--('Ihor','Vas')

--delete from Publisher
--DBCC CHECKIDENT('Publisher', RESEED, 0)

--Bulk insert Publisher from 'D:publisher.txt'
--with(
--fieldterminator =',',
--rowterminator ='\n'
--)

--delete from Book_Catalog
--delete from Book
--DBCC CHECKIDENT('Book', RESEED, 0)

--Bulk insert Book from 'D:Book.txt'
--with(
--fieldterminator =',',
--rowterminator ='\n'
--)

--delete from Book_Catalog


--Bulk insert Book_Catalog from 'D:Book_Catalog.txt'
--with(
--fieldterminator =',',
--rowterminator ='\n'
--)

--delete from [User]
--DBCC CHECKIDENT('User', RESEED, 0)

--Bulk insert [User] from 'D:User.txt'
--with(
--fieldterminator =',',
--rowterminator ='\n'
--)

--update [User] set adress='Poltava'
--	where id = 5