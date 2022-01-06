CREATE TABLE conversations (
    user_name VARCHAR(255),
    employer_name VARCHAR(255),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE employers (
    company_name VARCHAR(255),
    company_address VARCHAR(255),
    yearly_revenue NUMERIC(5,2),
    is_hiring BOOLEAN DEFAULT FALSE
);

