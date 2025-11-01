INSERT INTO CW1.Users (Email, Password, FirstName, LastName)
VALUES
('johnsmith@email.com', 'securepassword', 'John', 'Smith'),
('erenkruger@email.com', 'securepassword', 'Eren', 'Kruger'),
('aidenhart@email.com', 'securepassword', 'Aiden', 'Hart');
GO

INSERT INTO CW1.Trail (TrailName, Location, Difficulty, Description)
VALUES
('Boring Trail','Devon','Easy','A scenic trail for beginners'),
('Mountain Trek','Cornwall','Hard','Steep and challenging mountain trail'),
('Figure Eight','Plymouth','Medium','A figure eight shaped trail through the forest');
GO

INSERT INTO CW1.Activity (UserID, ActivityType, Duration, Distance)
VALUES
(1,'Cycling',1.5,20.0),
(1,'Running',0.75,5.0),
(2,'Hiking',2.0,10.0),
(3,'Walking',1.0,3.5);
GO

INSERT INTO CW1.Review (UserID, TrailID, Rating, ReviewText)
VALUES
(1,1,5,'AMAZING trail, loved it from start to finish.'),
(2,2,4,'Challenging but still super fun.'),
(3,3,3,'super muddy but really nice trail.');
GO
