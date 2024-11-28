CREATE DATABASE fitness_center_db;

USE fitness_center_db;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Task 1: SQL Data Insertion
INSERT INTO Members (id, name, age)
VALUES
(1, 'Jane Doe', 35),
(2, 'John Smith', 24),
(3, 'Alice Johnson', 18);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES
(1, 1, '2024-11-25', '6:00 am', 'CrossFit'),
(2, 2, '2024-11-26', '12:00 pm', 'Weight Training'),
(3, 3, '2024-11-27', '5:00 pm', 'Running');

-- Task 2: SQL Data Update
UPDATE WorkoutSessions
SET session_time = '6:00 pm'
WHERE member_id = 1;

-- Task 3: SQL Data Deletion
DELETE FROM WorkoutSessions
WHERE member_id = 2;

DELETE FROM Members
WHERE id = 2;

SELECT M.name, M.age, W.session_date, W.session_time, W.activity
FROM Members M, WorkoutSessions W
WHERE M.id = W.member_id;