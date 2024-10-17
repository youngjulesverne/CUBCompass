CREATE TABLE Community (
community_id INT PRIMARY KEY,
community_description VARCHAR(100) NOT NULL,
community_name VARCHAR(50) NOT NULL
);

CREATE TABLE Users (
    user_id INT PRIMARY KEY ,
    user_name VARCHAR(100) NOT NULL UNIQUE,
    user_password VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    community_id INT,
    FOREIGN KEY (community_id)
        REFERENCES Community(community_id)
        ON DELETE CASCADE
    
);

CREATE TABLE Admin (
    admin_id INT PRIMARY KEY ,
    user_id INT,
    FOREIGN KEY (user_id)
        REFERENCES Users(user_id)
        ON DELETE CASCADE
);

CREATE TABLE Freshies (
    freshie_id INT PRIMARY KEY ,
    user_id INT,
    FOREIGN KEY (user_id)
        REFERENCES Users(user_id)
        ON DELETE CASCADE
);

CREATE TABLE Content (
    content_id INT PRIMARY KEY ,
    content_title VARCHAR(100) NOT NULL,
    content_description TEXT,
    community_id INT,
    FOREIGN KEY (community_id)
        REFERENCES Community(community_id)
        ON DELETE CASCADE
);

CREATE TABLE Questions (
    question_id INT PRIMARY KEY ,
    question_title VARCHAR(200) NOT NULL,
    question_description TEXT NOT NULL,
    FAQ BOOLEAN,
    content_id INT,
    FOREIGN KEY(content_id)
        REFERENCES Content(content_id)
        ON DELETE CASCADE
	
);

CREATE TABLE Answers (
    answer_id INT PRIMARY KEY ,
    answer_description TEXT NOT NULL,
    question_id INT,
    FOREIGN KEY(question_id)
        REFERENCES Questions(question_id)
        ON DELETE CASCADE
);

CREATE TABLE generalInfo (
info_id INT PRIMARY KEY ,
info_title VARCHAR(200) NOT NULL,
info_description TEXT NOT NULL,
content_id INT,
    FOREIGN KEY(content_id)
        REFERENCES Content(content_id)
        ON DELETE CASCADE
);

CREATE TABLE Announcement(
announcement_id INT PRIMARY KEY,
announcement_name VARCHAR(100) NOT NULL,
announcement_description TEXT NOT NULL,
announcement_date INT NOT NULL,
info_id INT,
    FOREIGN KEY(info_id)
        REFERENCES generalInfo(info_id)
        ON DELETE CASCADE
        );

CREATE TABLE Categories(
category_id INT PRIMARY KEY ,
category_name VARCHAR(100) NOT NULL,
category_description TEXT NOT NULL,
info_id INT,
    FOREIGN KEY(info_id)
        REFERENCES generalInfo(info_id)
        ON DELETE CASCADE
        );

CREATE TABLE feedback (
    id INT PRIMARY KEY,
    feedback_text TEXT NOT NULL,
    user_email VARCHAR(255),
    submission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

