-- The tasks table contains each individual task entry.
CREATE TABLE tasks (
    task_id BIGINT NOT NULL AUTO_INCREMENT,
    user_id BIGINT,
    project_id BIGINT,
    description VARCHAR(200),
    blocked BOOL,
    last_time_in_progress TIMESTAMP,
    created_time TIMESTAMP,
    completed_time TIMESTAMP
);

-- The projects table contains each project/epic that a task can be associated with.
CREATE TABLE projects (
    project_id BIGINT NOT NULL AUTO_INCREMENT,
    user_id BIGINT,
    company_id BIGINT,
    start_time TIMESTAMP
);

-- The users table represents each individual software engineer using Millstone.  
CREATE TABLE users (
    user_id BIGINT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(200),
    last_name VARCHAR(200)
);

-- The notes table contains any notes that have been added for a particular task.
CREATE TABLE notes (
    note_id BIGINT NOT NULL AUTO_INCREMENT,
    task_id BIGINT,
    content LONGTEXT,
    creation_date TIMESTAMP
);

-- The companies table contains each company you are working for to complete these tasks.
CREATE TABLE companies (
    company_id BIGINT NOT NULL AUTO_INCREMENT,
    user_id BIGINT,
    name VARCHAR(200),
    start_date TIMESTAMP,
    end_date TIMESTAMP
)