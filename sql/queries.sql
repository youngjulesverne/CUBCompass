-- Query 1
SELECT f.freshie_id, u.user_name, c.community_name
FROM Freshies f
JOIN Users u ON f.user_id = u.user_id
JOIN Community c ON u.community_id = c.community_id;

-- Query 2
SELECT c.content_title, COUNT(q.question_id) AS question_count
FROM Content c
LEFT JOIN Questions q ON c.content_id = q.content_id
GROUP BY c.content_title;

-- Query 3
SELECT a.admins_id, u.user_name, u.email
FROM Admins a
JOIN Users u ON a.user_id = u.user_id;

-- Query 4
SELECT c.community_name, COUNT(f.freshie_id) AS total_freshies
FROM Freshies f
JOIN Users u ON f.user_id = u.user_id
JOIN Community c ON u.community_id = c.community_id
GROUP BY c.community_name;

-- Query 5
SELECT q.question_title, c.content_title, c.content_description
FROM Questions q
JOIN Content c ON q.content_id = c.content_id
WHERE q.FAQ = TRUE;

--Query 6 
SELECT a.announcement_name, g.info_title, a.announcement_date
FROM Announcement a
JOIN generalInfo g ON a.info_id = g.info_id;

--Query 7
SELECT cat.category_name, g.info_title
FROM Categories cat
JOIN generalInfo g ON cat.info_id = g.info_id;

--Query 8
SELECT c.community_name, COUNT(u.user_id) AS total_users
FROM Community c
LEFT JOIN Users u ON c.community_id = u.community_id
GROUP BY c.community_name;

--Query 9 
SELECT g.info_title, MAX(a.announcement_date) AS latest_announcement
FROM generalInfo g
JOIN Announcement a ON g.info_id = a.info_id
GROUP BY g.info_title;



