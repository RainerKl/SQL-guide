DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;

-- CREATE TYPE employment_status AS ENUM('self-employed','unemployed','employed');

CREATE TABLE users (
    -- id SERIAL PRIMARY KEY, -- Postgresql
    id INTEGER PRIMARY KEY AUTO_INCREMENT, -- MySQL
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)),
    -- full_name VARCHAR(300) NOT NULL,
    yearly_salary INT CHECK (yearly_salary >0),
    current_status ENUM('self-employed','unemployed','employed') -- MySQL
    -- current_status employment_status -- Postgresql
);

CREATE TABLE employers (
    -- id SERIAL PRIMARY KEY, -- Postgresql
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK (yearly_revenue >0),
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
    -- id SERIAL PRIMARY KEY, -- Postgresql
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    user_id INT,
    employer_id INT,
    message TEXT NOT NULL,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (first_name,last_name,yearly_salary,current_status)
VALUES ('Max', 'Schwartz',19000, 'self-employed');