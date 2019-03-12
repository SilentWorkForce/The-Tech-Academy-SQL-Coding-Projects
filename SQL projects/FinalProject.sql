USE MASTER
GO
DROP DATABASE TechAcademyFinal
GO
CREATE DATABASE TechAcademyFinal
GO
USE TechAcademyFinal;
GO

--/*-----Drop Tables----------*/
DROP TABLE Library_branch;
DROP TABLE Book_loans;
DROP TABLE Book_Copies;
DROP TABLE Publisher;
DROP TABLE Books;
DROP TABLE Borrower;
DROP TABLE Book_authors;
--/*--------------------------*/



/*-------Select From--------------*/
SELECT * FROM Library_branch;
SELECT * FROM Book_loans;
SELECT * FROM Book_Copies;
SELECT * FROM Publisher;
SELECT * FROM Books;
SELECT * FROM Borrower;
SELECT * FROM Book_authors;
/*--------------------------------*/


/*-------------------------------Create Tables------------------------------------*/

CREATE TABLE Library_Branch (
	BranchID INT PRIMARY KEY NOT NULL,
	BranchName VARCHAR(50) NOT NULL,
	Address VARCHAR (50) NOT NULL
);

CREATE TABLE Borrower  (
	CardNo INT PRIMARY KEY NOT NULL,
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR (50) NOT NULL,
	Phone VARCHAR (50) NOT NULL
);


CREATE TABLE Book_Loans (
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	CardNo INT FOREIGN KEY REFERENCES Borrower(CardNo) NOT NULL,
	DateOut VARCHAR (50) NOT NULL,
	DateDue VARCHAR (50) NOT NULL
);


CREATE TABLE Book_Copies (
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	Number_of_Copies INT NOT NULL

);


CREATE TABLE Publisher (
	PublisherName VARCHAR (50) PRIMARY KEY,
	Address VARCHAR (50) NOT NULL,
	Phone VARCHAR (50) NOT NULL
);

	
CREATE TABLE Books (
	BookID INT PRIMARY KEY NOT NULL,
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) NOT NULL
);



CREATE TABLE Book_Authors (
	BookID INT NOT NULL,
	AuthorName VARCHAR(50) NOT NULL
	
);

	
/*------------------------INSERT TABLES-------------------------------*/

INSERT INTO Borrower
	(CardNo,Name,Address,Phone)
	VALUES
	('101','Jane','Portland','503-555-7894'),
	('102','John','Washington','206-555-3213'),
	('103','James','New York','809-555-1597'),
	('104','Janet','Los Angeles','405-555-3547'),
	('105','Julio','Portland','503-555-7526'),
	('106','Juan','Washington','206-555-4826'),
	('107','Jacob','New York','809-555-3497'),
	('108','Juliet','Los Angeles','405-555-3159')
;


INSERT INTO Library_Branch
	(BranchName, BranchID, Address)
	VALUES 
	('Sharpstown', '123','New York'),
	('Central','456', 'Los Angeles'),
	('Municiple','789','Portland'),
	('City','987','Washington')
;



INSERT INTO Book_Loans
	(BookID,BranchID,CardNo,DateOut,DateDue)
	VALUES
	('21','987','101','1/15/19','2/15/19'),
	('22','987','102','1/15/19','2/15/19'),
	('23','987','103','1/15/19','2/15/19'),
	('24','987','104','1/15/19','2/15/19'),
	('25','987','105','1/15/19','2/15/19'),
	('26','987','106','1/15/19','2/15/19'),
	('27','987','107','1/15/19','2/15/19'),
	('28','987','108','1/15/19','2/15/19'),
	('29','987','101','1/15/19','2/15/19'),
	('30','987','102','1/15/19','2/15/19'),
	('31','789','103','1/15/19','2/15/19'),
	('32','789','104','1/15/19','2/15/19'),
	('33','789','105','1/15/19','2/15/19'),
	('34','789','106','1/15/19','2/15/19'),
	('35','789','107','1/15/19','2/15/19'),
	('36','789','108','1/15/19','2/15/19'),
	('37','789','101','1/15/19','2/15/19'),
	('38','789','102','1/15/19','2/15/19'),
	('39','789','103','1/15/19','2/15/19'),
	('40','789','104','1/15/19','2/15/19'),
	('21','456','105','1/15/19','2/15/19'),
	('22','456','106','1/15/19','2/15/19'),
	('23','456','107','1/15/19','2/15/19'),
	('24','456','108','1/15/19','2/15/19'),
	('25','456','108','1/15/19','2/15/19'),
	('26','456','101','1/15/19','2/15/19'),
	('27','456','102','1/15/19','2/15/19'),
	('28','456','103','1/15/19','2/15/19'),
	('29','456','104','1/15/19','2/15/19'),
	('30','456','105','1/15/19','2/15/19'),
	('31','123','106','1/15/19','2/15/19'),
	('32','123','107','1/15/19','2/15/19'),
	('33','123','108','1/15/19','2/15/19'),
	('34','123','101','1/15/19','2/15/19'),
	('35','123','102','1/15/19','2/15/19'),
	('36','123','103','1/15/19','2/15/19'),
	('37','123','104','1/15/19','2/15/19'),
	('38','123','105','1/15/19','2/15/19'),
	('39','123','106','1/15/19','2/15/19'),
	('40','123','107','1/15/19','2/15/19'),
	('21','456','108','1/15/19','2/15/19'),
	('22','456','101','1/15/19','2/15/19'),
	('23','456','102','1/15/19','2/15/19'),
	('24','456','103','1/15/19','2/15/19'),
	('25','456','104','1/15/19','2/15/19'),
	('26','456','105','1/15/19','2/15/19'),
	('27','456','106','1/15/19','2/15/19'),
	('28','456','107','1/15/19','2/15/19'),
	('29','456','108','1/15/19','2/15/19'),
	('30','456','101','1/15/19','2/15/19')
;



INSERT INTO Book_Copies
	(BookID,BranchID,Number_of_Copies)
	VALUES
	('21','123','2'),
	('22','123','2'),
	('23','123','2'),
	('24','123','2'),
	('25','123','2'),
	('26','123','2'),
	('27','123','2'),
	('28','123','2'),
	('29','123','2'),
	('30','123','2'),
	('31','456','2'),
	('32','456','2'),
	('33','456','2'),
	('34','456','2'),
	('35','456','2'),
	('36','456','2'),
	('37','456','2'),
	('38','456','2'),
	('39','456','2'),
	('40','123','2'),
	('21','789','2'),
	('22','789','2'),
	('23','789','2'),
	('24','789','2'),
	('26','789','2'),
	('27','789','2'),
	('28','789','2'),
	('29','789','2'),
	('30','789','2'),
	('31','987','2'),
	('32','987','2'),
	('33','987','2'),
	('34','987','2'),
	('35','987','2'),
	('36','987','2'),
	('37','987','2'),
	('38','987','2'),
	('39','987','2'),
	('40','123','2')
;


INSERT INTO Publisher
	(PublisherName,Address,Phone)
	VALUES
	('Scholastic','Portland','503-555-2845'),
	('Wiley','Washington','206-555-2050')
;


INSERT INTO Books
	(BookID,Title,PublisherName)
	VALUES
	('21','AppleForDummies','Wiley'),
	('22','Dogman','Wiley'),
	('23','Romantic','Wiley'),
	('24','Comedy','Wiley'),
	('25','Action','Wiley'),
	('26','Thriller','Wiley'),
	('27','RomCom','Wiley'),
	('28','Discover','Wiley'),
	('29','Biopic','Wiley'),
	('30','SelfHelp','Scholastic'),
	('31','Horror','Scholastic'),
	('32','Bible','Scholastic'),
	('33','ReadingRainbow','Scholastic'),
	('34','ScienceFiction','Scholastic'),
	('35','WishBone','Scholastic'),
	('36','GhostWriter','Scholastic'),
	('37','PreSchool','Scholastic'),
	('38','Vehicles','Scholastic'),
	('39','Health','Scholastic'),
	('40','TheLostTribe','Scholastic')
;










INSERT INTO Book_Authors
	(BookID,AuthorName)
	VALUES
	('21','StephenKing'),
	('22','StephenKing'),
	('23','JamesPatterson'),
	('24','J.K.Rowling'),
	('25','JaneAusten'),
	('26','Shakespeare'),
	('27','NoraRoberts'),
	('28','JohnGrisham'),
	('29','TomClancy'),
	('30','Tolkien'),
	('31','JulesVerne'),
	('32','Tolkien'),
	('33','NoraRoberts'),
	('34','JohnGrisham'),
	('35','TomClancy'),
	('36','StephenKing'),
	('37','StephenKing'),
	('38','JamesPatterson'),
	('39','J.K.Rowling'),
	('40','TomClancy')
;


/*-----------------------------------Creating PROC---------------------------------*/


SELECT * FROM Book_Copies 
SELECT * FROM Books
SELECT * FROM Library_Branch


SELECT * FROM Book_Copies
INNER JOIN Books ON Book_Copies.BookID = Books.BookID
SELECT * FROM Library_Branch

SELECT * FROM Book_Copies
INNER JOIN Books ON Book_Copies.BookID = Books.BookID
INNER JOIN Library_Branch ON Book_Copies.BookID = Library_Branch.BranchID
WHERE Books.Title = 'TheLostTribe' AND Library_Branch.BranchName = BranchName











SELECT * FROM Book_Copies
SELECT * FROM Books
SELECT * FROM Library_Branch


SELECT * FROM Book_Copies
INNER JOIN Books ON Book_Copies.BookID = Books.BookID
SELECT * FROM Library_Branch


SELECT * FROM Book_Copies
INNER JOIN Books ON Book_Copies.BookID = Books.BookID
INNER JOIN Library_Branch ON Book_Copies.BranchID = Library_Branch.BranchID;


SELECT * FROM Book_Copies
INNER JOIN Books ON Book_Copies.BookID = Books.BookID
INNER JOIN Library_Branch ON Book_Copies.BranchID = Library_Branch.BranchID
WHERE Books.title = 'TheLostTribe' AND Library_Branch.BranchName = 'Sharpstown'

GO

CREATE PROC Drill @bookTitle varchar(30),@branchName varchar(30)
AS
SELECT Book_Copies.Number_of_Copies,Books.Title,Library_Branch.BranchName
FROM Book_Copies
INNER JOIN Books ON Book_Copies.BookID = Books.BookID
INNER JOIN Library_Branch ON Book_Copies.BranchID = Library_Branch.BranchID
WHERE Books.title = 'TheLostTribe' AND Library_Branch.BranchName = @branchName



EXEC Drill @bookTitle = 'TheLostTribe', @branchName = 'Sharpstown'

GO

ALTER PROC Drill @bookTitle varchar(30) = NULL,@branchName varchar(30) = NULL
AS
SELECT Book_Copies.Number_of_Copies,Books.Title,Library_Branch.BranchName
FROM Book_Copies
INNER JOIN Books ON Book_Copies.BookID = Books.BookID
INNER JOIN Library_Branch ON Book_Copies.BranchID = Library_Branch.BranchID
WHERE Books.title = isNULL(@bookTitle,Books.Title) AND Library_Branch.BranchName = isNULL(@branchName, Library_Branch.BranchName)

EXEC Drill

