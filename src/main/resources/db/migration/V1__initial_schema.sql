-- The tasks table contains each individual task entry.
CREATE TABLE tasks (
    task_id SERIAL,
    user_id INTEGER,
    description VARCHAR(200),
    created_time TIMESTAMP,
    completed_time TIMESTAMP
);

-- The tags table contains tags that can be applied to a task.  Multiple tags
-- can be assigned to a single task.
CREATE TABLE tags (
    tag_id INTEGER,
    description VARCHAR(200)
);

INSERT INTO tags (tag_id, description) VALUES
    (1, 'Scrum Worthy'),
    (2, 'Worked On Today'),
    (3, 'Blocked');

-- task_tags associates a single task with any number of tags on a given date.  
CREATE TABLE task_tags (
    task_id INTEGER,
    tag_id INTEGER,
    tag_date DATE
);

-- The users table represents each individual software engineer using Millstone.  
CREATE TABLE users (
    user_id SERIAL,
    first_name VARCHAR(200),
    last_name VARCHAR(200)
);
