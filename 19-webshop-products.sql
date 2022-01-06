-- CREATE DATABASE webshop;

-- remember to log into new database

-- DROP TABLE products;

CREATE TABLE products (
    id SERIAL PRIMARY KEY, -- Postgresql
    -- id INTEGER PRIMARY KEY AUTO_INCREMENT, -- MySQL
    p_name VARCHAR(300),
    p_price NUMERIC(10,2),
    p_desc TEXT,
    p_stock SMALLINT,
    p_image VARCHAR(500)
);

INSERT INTO products (p_name,p_price,p_desc,p_stock,p_image)
VALUES ('Logitech MX500', 50, 'New super lightweight computer mouse from Logitech.',12,'X://images/logi_mx500.jpg');

ALTER TABLE products
-- MODIFY COLUMN p_name
 VARCHAR(300) NOT NULL,
-- MODIFY COLUMN p_price NUMERIC(10,2) NOT NULL CHECK (p_price >0),
-- MODIFY COLUMN p_desc TEXT,
-- MODIFY COLUMN p_stock SMALLINT NOT NULL CHECK (p_stock >-1),
-- MODIFY COLUMN p_image VARCHAR(500)
ALTER COLUMN p_name SET NOT NULL,
ALTER COLUMN p_price SET NOT NULL,
ALTER COLUMN p_desc SET NOT NULL,
ADD constraint price_positive CHECK(p_price >0),
ADD constraint stock_postive CHECK(p_stock >=0);

