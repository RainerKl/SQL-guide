--Postgresql and ENUM -> we have to create a custom type
CREATE TYPE employment_status AS ENUM('employed','self-employed','unemployed');

CREATE TABLE users (
    full_name VARCHAR(255),
    yearly_salary INT,
    current_status employment_status
    --current_status ENUM("employed","self-employed","unemployed")
);