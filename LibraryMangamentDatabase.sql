CREATE DATABASE Library_Database;
USE Library_Database;

CREATE TABLE book(
Book_Title VARCHAR(255) NOT NULL,
Book_ID INT AUTO_INCREMENT,
ISBN char(13) NOT NULL,
Category VARCHAR(255) NOT NULL,
PRIMARY KEY(Book_ID)
);

CREATE TABLE publisher(
Publisher_Name VARCHAR(255) NOT NULL,
Publish_Year VARCHAR(20) NOT NULL,
Publisher_ID INT AUTO_INCREMENT,
Book_ID_Link INT not null, 
PRIMARY KEY(Publisher_ID),
FOREIGN KEY (Book_ID_Link) references book(Book_ID)
);

CREATE TABLE author(
Author_Name VARCHAR(255) NOT NULL,
Author_Location VARCHAR(255) NOT NULL,
Author_ID  INT AUTO_INCREMENT,
Book_ID_Link INT not null,
PRIMARY KEY(Author_ID),
FOREIGN KEY (Book_ID_Link) references book(Book_ID)
);

CREATE TABLE book_copies(
Copies_ID INT AUTO_INCREMENT,
Number_of_Copies INT NOT NULL,
Book_ID_Link INT not null,
PRIMARY KEY(Copies_ID),
FOREIGN KEY (Book_ID_Link) references book(Book_ID)
);

#havent done this yet
CREATE TABLE library_branch(
Library_Branch_ID INT AUTO_INCREMENT,
Library_Branch_Name VARCHAR(255) NOT NULL,
Library_Branch_Location VARCHAR(255) NOT NULL,
PRIMARY KEY (Library_Branch_ID)
);

#havent done this yet
CREATE TABLE library_users(
Card_Number INT PRIMARY KEY,
User_Name VARCHAR(255),
User_Address VARCHAR(255),
User_Phone VARCHAR(255)
);

#havent done this yet
#child of user or books with list of checkout books titles
CREATE TABLE check_out_books(
Book_Title VARCHAR(255) NOT NULL
);

#remove table
drop table publisher;

#populating db
INSERT INTO book (Book_Title, ISBN, Category)VALUES('The Lord of the Rings: The Fellowship of the Ring', '9780618260584', 'Fantasy');
INSERT INTO publisher (Publisher_Name, Publish_Year, Book_ID_Link)VALUES('Houghton Mifflin', '2002', 1);
INSERT INTO author (Author_Name, Author_Location, Book_ID_Link)VALUES('J.R.R. Tolkien', 'United Kingdom', 1);
INSERT INTO book_copies (Number_of_Copies, Book_ID_Link)VALUES(3, 1);

INSERT INTO book (Book_Title, ISBN, Category)VALUES('Harry Potter And The Order Of The Phoenix', '9780439358071', 'Fantasy');
INSERT INTO publisher (Publisher_Name, Publish_Year, Book_ID_Link)VALUES('Scholastic Paperbacks', '2004', 2);
INSERT INTO author (Author_Name, Author_Location, Book_ID_Link)VALUES('Rowling, J.K.', 'United Kingdom', 2);
INSERT INTO book_copies (Number_of_Copies, Book_ID_Link)VALUES(10, 1);

INSERT INTO book (Book_Title, ISBN, Category)VALUES('Math Letters: Discover a different side of mathematics', '9780578282046', 'Educational');
INSERT INTO publisher (Publisher_Name, Publish_Year, Book_ID_Link)VALUES('Lamberton Press', '2022', 3);
INSERT INTO author (Author_Name, Author_Location, Book_ID_Link)VALUES('Schaefman, W.B.', 'United States', 3);
INSERT INTO book_copies (Number_of_Copies, Book_ID_Link)VALUES(1, 1);

INSERT INTO book (Book_Title, ISBN, Category)VALUES('The Art Of War', '9781599869773', 'Historical');
INSERT INTO publisher (Publisher_Name, Publish_Year, Book_ID_Link)VALUES('LSC Communications', '2007', 4);
INSERT INTO author (Author_Name, Author_Location, Book_ID_Link)VALUES('Sun Tzu', 'China', 4);
INSERT INTO book_copies (Number_of_Copies, Book_ID_Link)VALUES(2, 1);

#567
INSERT INTO book (Book_Title, ISBN, Category)VALUES('Pride and Prejudice', '9780141439518', 'Romance');
INSERT INTO book (Book_Title, ISBN, Category)VALUES('The Great Gatsby', '9798745274824', 'Tragedy');
INSERT INTO book (Book_Title, ISBN, Category)VALUES('Adventures of Huckleberry Finn', '9781953649805', 'Fiction');

INSERT INTO publisher (Publisher_Name, Publish_Year, Book_ID_Link)VALUES('SeaWolf Press', '2021', 7);
INSERT INTO author (Author_Name, Author_Location, Book_ID_Link)VALUES('Twain, Mark', 'United States', 7);
INSERT INTO book_copies (Number_of_Copies, Book_ID_Link)VALUES(20, 1);

INSERT INTO publisher (Publisher_Name, Publish_Year, Book_ID_Link)VALUES('Penguin Books', '2002', 5);
INSERT INTO author (Author_Name, Author_Location, Book_ID_Link)VALUES('Jane Austen', 'United Kingdom', 5);
INSERT INTO book_copies (Number_of_Copies, Book_ID_Link)VALUES(3, 1);

INSERT INTO publisher (Publisher_Name, Publish_Year, Book_ID_Link)VALUES('Independently published', '2021', 6);
INSERT INTO author (Author_Name, Author_Location, Book_ID_Link)VALUES('Fitzgerald, F. Scott', 'United States', 6);
INSERT INTO book_copies (Number_of_Copies, Book_ID_Link)VALUES(1, 1);








#view

#working on this query
SELECT book.Book_Title, author.Author_Name, book.Category, publisher.Publisher_Name, book.Book_ID_Link, author.Book_ID, publisher.Book_ID
from book
join author
join publisher
on Book_ID_Link = Book_ID;


SELECT * FROM book 
inner join publisher on Book_ID_Link = Book_ID;

SELECT * FROM book 
inner join author on Book_ID_Link = Book_ID;

SELECT * FROM author; 

SELECT * FROM book;
