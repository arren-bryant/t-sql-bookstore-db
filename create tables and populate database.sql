-- Create the "Authors" table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName NVARCHAR(100),
    Country NVARCHAR(50)
);
GO

-- Insert data into the "Authors" table
INSERT INTO Authors (AuthorID, AuthorName, Country)
VALUES
    (1, 'F. Scott Fitzgerald', 'USA'),
    (2, 'Harper Lee', 'USA'),
    (3, 'George Orwell', 'UK'),
    (4, 'J.K. Rowling', 'UK'),
    (5, 'Agatha Christie', 'UK');
GO

-- Create the "Books" table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title NVARCHAR(100),
    AuthorID INT FOREIGN KEY REFERENCES Authors(AuthorID),
    Genre NVARCHAR(50),
    PublishYear INT,
    PublisherID INT NULL -- Assuming you want to include a PublisherID column, it can be NULL for now.
);
GO

-- Insert data into the "Books" table
INSERT INTO Books (BookID, Title, AuthorID, Genre, PublishYear, PublisherID)
VALUES
    (1, 'The Great Gatsby', 1, 'Fiction', 1925, NULL),
    (2, 'To Kill a Mockingbird', 2, 'Fiction', 1960, NULL),
    (3, '1984', 3, 'Science Fiction', 1949, NULL),
    (4, 'Harry Potter and the Sorcerer''s Stone', 4, 'Fantasy', 1997, NULL),
    (5, 'Murder on the Orient Express', 5, 'Mystery', 1934, NULL),
    (6, 'Animal Farm', 3, 'Satire', 1945, NULL),
    (7, 'The Hound of the Baskervilles', 5, 'Mystery', 1902, NULL);
GO
