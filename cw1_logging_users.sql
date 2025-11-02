CREATE TABLE CW1.UserLog (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT,
    Email VARCHAR(255),
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    CreatedAt DATETIME DEFAULT GETDATE()
);
GO


CREATE TRIGGER CW1.LogNewUser
ON CW1.Users
AFTER INSERT
AS
BEGIN
    INSERT INTO CW1.UserLog (UserID, Email, FirstName, LastName)
    SELECT UserID, Email, FirstName, LastName
    FROM inserted;
END;
GO


