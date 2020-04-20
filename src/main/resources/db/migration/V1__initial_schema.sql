-- The tasks table contains each individual task entry.
CREATE TABLE tasks (
    task_id SERIAL,
    user_id BIGINT UNSIGNED,
    project_id BIGINT UNSIGNED,
    description VARCHAR(200),
    blocked BOOL,
    created_time TIMESTAMP,
    completed_time TIMESTAMP
);

-- The projects table contains each project/epic that a task can be associated with.
CREATE TABLE projects (
    project_id SERIAL,
    user_id BIGINT UNSIGNED,
    company_id BIGINT UNSIGNED,
    start_time TIMESTAMP
);

-- The users table represents each individual software engineer using Millstone.  
CREATE TABLE users (
    user_id SERIAL,
    first_name VARCHAR(200),
    last_name VARCHAR(200)
);

-- The notes table contains any notes that have been added for a particular task.
CREATE TABLE notes (
    note_id SERIAL,
    task_id BIGINT UNSIGNED,
    content LONGTEXT,
    creation_date TIMESTAMP
);

-- The companies table contains each company you are working for to complete these tasks.
CREATE TABLE companies (
    company_id SERIAL,
    user_id BIGINT UNSIGNED,
    name VARCHAR(200),
    start_date TIMESTAMP,
    end_date TIMESTAMP
)