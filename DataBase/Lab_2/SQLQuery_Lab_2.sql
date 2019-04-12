IF EXISTS(SELECT * FROM sys.databases where name = 'Library_test')
DROP DATABASE Library_test;

CREATE DATABASE Library_test;

use Library_test;

create table Publisher(
	id int not null identity(1,1),
	name nvarchar(50),
	city nvarchar(50),
	PRIMARY KEY (id)
);

create table Book(
	id int not null IDENTITY(1,1),
	name nvarchar(50) not null,
	publication_date date,
	publisher_id int,
	primary key(id),

	CONSTRAINT FK_BOOK_PUBLISHER FOREIGN KEY (publisher_id)
	REFERENCES Publisher (id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

create table Author(
	id int not null identity(1,1),
	name nvarchar(50),
	surname nvarchar(50),
	fullname nvarchar(100)

	primary key(id)
);

create table Book_Authors(
	book_id int,
	author_id int,
	genre nvarchar(50),

	constraint FK_Book_Authors_Book foreign key(book_id)
	references Book(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
	constraint FK_Book_Authors_Author foreign key(author_id)
	references Author(id) ON DELETE NO ACTION ON UPDATE NO ACTION

);

create table Book_Catalog(
	book_id int,
	book_name nvarchar(50),
	book_id_catalog int not null,
	place nvarchar(50),
	status bit,
	amount int,
	primary key(book_id_catalog),
	constraint FK_Book_Catalog_Book foreign key (book_id)
	references Book (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
	
);

create table [User](
	id int not null identity(1,1),
	name nvarchar(50),
	surname nvarchar(50),
	full_name nvarchar(50),
	phone_number int,
	adress nvarchar(50),
	primary key (id)		
);

create table Book_Borrow(
	book_id int,
	user_id int,
	borrow_date date,
	return_date date,
	period int,
	primary key(book_id,user_id,borrow_date),
	
	constraint FK_Book_Borrow_User foreign key (user_id)
	references [User] (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
	constraint FK_Borrow_Book_Book_Catalog foreign key(book_id)
	references Book_Catalog (book_id_catalog) ON DELETE NO ACTION ON UPDATE NO ACTION
)

