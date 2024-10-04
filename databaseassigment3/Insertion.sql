INSERT INTO Community (community_description, community_name) 
VALUES ('Community for Freshies', 'Freshie Group'), 
       ('Main COnstructor University Community', 'University');

INSERT INTO Users (user_name, user_password, email, community_id) 
VALUES ('Rafael Hasanov', 'rafa123xx', 'rafael.hasanov@gmail.com', 1),
       ('Sara Mamedova', '17082004Sara', 'sara.mamedova@gmail.com', 2);

INSERT INTO Freshies (user_id) VALUES (1);

INSERT INTO Content (content_title, content_description, community_id) 
VALUES ('Freshers Guide', 'This guide will help new students.', 1),
       ('Housing Information', 'Details about housing for students.', 1);

INSERT INTO Questions (question_title, question_description, FAQ, content_id) 
VALUES ('How to register for courses?', 'Instructions on course registration.', TRUE, 1),
       ('Where is the housing office?', 'Location of the housing office.', FALSE, 2);


INSERT INTO Answers (answer_description, question_id) 
VALUES ('You can register for courses via the student portal.', 1),
       ('The housing office is located on the second floor of the admin building.', 2);

INSERT INTO generalInfo (info_title, info_description, content_id) 
VALUES ('University Gym Hours', 'The gym is open from 6 AM to 10 PM.', 1),
       ('Housing Guide', 'Details about student housing.', 2);

INSERT INTO Announcement (announcement_name, announcement_description, announcement_date, info_id) 
VALUES ('Gym Maintenance', 'The gym will be closed for maintenance on October 15th.', 20231015, 1);

INSERT INTO Categories (category_name, category_description, info_id) 
VALUES ('Registration', 'Guidance on course registration', 1), 
       ('Housing', 'Housing and accommodation details', 2);



