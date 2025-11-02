
IF OBJECT_ID('CW1.CreateUser', 'P') IS NOT NULL DROP PROCEDURE CW1.CreateUser;
IF OBJECT_ID('CW1.ReadUsers', 'P') IS NOT NULL DROP PROCEDURE CW1.ReadUsers;
IF OBJECT_ID('CW1.UpdateUser', 'P') IS NOT NULL DROP PROCEDURE CW1.UpdateUser;
IF OBJECT_ID('CW1.DeleteUser', 'P') IS NOT NULL DROP PROCEDURE CW1.DeleteUser;
GO

CREATE PROCEDURE CW1.CreateUser
    @Email VARCHAR(255),
    @Password VARCHAR(255),
    @FirstName VARCHAR(100),
    @LastName VARCHAR(100)
AS
BEGIN
    INSERT INTO CW1.Users (Email, Password, FirstName, LastName)
    VALUES (@Email, @Password, @FirstName, @LastName);
END;
GO



CREATE PROCEDURE CW1.ReadUsers
AS
BEGIN
    SELECT * FROM CW1.Users;
END;
GO


CREATE PROCEDURE CW1.UpdateUser
    @UserID INT,
    @Email VARCHAR(255),
    @FirstName VARCHAR(100),
    @LastName VARCHAR(100)
AS
BEGIN
    UPDATE CW1.Users
    SET Email = @Email,
        FirstName = @FirstName,
        LastName = @LastName
    WHERE UserID = @UserID;
END;
GO



CREATE PROCEDURE CW1.DeleteUser
    @UserID INT
AS
BEGIN
    DELETE FROM CW1.Users
    WHERE UserID = @UserID;
END;


EXEC CW1.ReadUsers;


EXEC CW1.CreateUser 'Rebecca@email.com', 'password123', 'Rebecca', 'Becca';
EXEC CW1.CreateUser 'Joey@email.com', 'password741', 'Joey', 'Mayers';


EXEC CW1.ReadUsers;

EXEC CW1.UpdateUser 1, 'David@email.com', 'David', 'Martinez';

EXEC CW1.ReadUsers;

EXEC CW1.DeleteUser 2;

EXEC CW1.ReadUsers;