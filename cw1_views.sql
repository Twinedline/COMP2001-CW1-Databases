CREATE VIEW CW1.UserProfile AS 
SELECT
    u.UserID,
    u.FirstName,
    u.LastName,
    u.Email,
    a.ActivityType,
    a.Duration,
    a.Distance,
    t.TrailName,
    r.Rating,
    R.ReviewText
FROM CW1.Users u
LEFT JOIN CW1.Activity a ON u.UserID = a.UserID
LEFT JOIN CW1.Review r ON u.UserID = r.UserID
LEFT JOIN CW1.Trail t ON r.TrailID = t.TrailID;
