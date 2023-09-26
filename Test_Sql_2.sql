-- Soal 2

CREATE TABLE email_list (
    ID SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL
);

-- contoh datanya
INSERT INTO email_list (email) VALUES
('abc@gmail.com'),
('def@gmail.com'),
('abc@yahoo.com'),
('abc@gmail.com');


-- Menemukan alamat email yang duplikat
SELECT email
FROM email_list
GROUP BY email
HAVING COUNT(*) > 1;

