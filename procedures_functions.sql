-- 1. Stored Procedure: Get all borrowed books by a member
DELIMITER //
CREATE PROCEDURE GetBorrowedBooksByMember(IN memberName VARCHAR(100))
BEGIN
    SELECT b.Title, a.Name AS Author_Name, br.BorrowDate, br.ReturnDate
    FROM Borrowing br
    JOIN Books b ON br.BookID = b.BookID
    JOIN Authors a ON b.AuthorID = a.AuthorID
    JOIN Members m ON br.MemberID = m.MemberID
    WHERE m.Name = memberName;
END //
DELIMITER ;

-- Calling the procedure
CALL GetBorrowedBooksByMember('John Doe');

-- 2. Stored Function: Count total books by genre
DELIMITER //
CREATE FUNCTION CountBooksByGenre(p_genre VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE book_count INT;
    SELECT COUNT(*) INTO book_count
    FROM Books
    WHERE Genre = p_genre;
    RETURN book_count;
END //
DELIMITER ;

-- Using the function
SELECT CountBooksByGenre('Fiction') AS Total_Fiction_Books;
