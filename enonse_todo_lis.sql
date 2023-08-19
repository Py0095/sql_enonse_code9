CREATE DATABASE TodDoList CHARACTER SET 'utf8mb4';

USE TodDoList;


CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(255) NOT NULL,
    deskripsyon TEXT NOT NULL,
    due_date DATE NOT NULL,
    stati ENUM('pending', 'completed') DEFAULT 'pending' NOT NULL
    );

INSERT INTO tasks (task_name, desKripsyon, due_date, stati) VALUES
    ('Tach 1', 'Deskripsyon pou tach 1', '2023-08-25', 'pending'),
    ('Tach 2', 'Deskripsyon pou tach 2', '2023-08-20', 'completed'),
    ('Tach 3', 'Deskripsyon pou tach 3', '2023-08-30', 'pending'),
    ('Tach 4', 'Deskripsyon pou tach 4', '2023-08-17', 'pending'),
    ('Tach 5', 'Deskripsyon pou tach 5', '2023-09-05', 'completed');


SELECT * FROM  tasks;
SELECT * FROM tasks WHERE stati='pending';
SELECT * FROM tasks WHERE due_date <= DATE_ADD(CURDATE(), INTERVAL 7 DAY);
SELECT * FROM tasks WHERE stati = 'completed';
UPDATE tasks SET stati = 'completed' WHERE stati ='pending';

ALTER TABLE tasks ADD COLUMN priority INT;

UPDATE tasks SET priority = FLOOR(1 + RAND() * 4);


CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

ALTER TABLE tasks ADD COLUMN category_id INT;

ALTER TABLE tasks
ADD CONSTRAINT fk_category
FOREIGN KEY (category_id)
REFERENCES categories(category_id);


SELECT * FROM tasks WHERE priority = 1;

DELETE FROM tasks WHERE stati = 'completed' OR due_date < CURDATE();

