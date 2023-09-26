-- soal 1

CREATE TABLE input_table (
    id SERIAL PRIMARY KEY,
    num INTEGER
);

--Contoh isi tabelnya
INSERT INTO input_table (num) VALUES
(1),
(1),
(1),
(2),
(1),
(2),
(2),
(1);

WITH Ranked AS (
    SELECT
        id,
        num,
        LAG(num) OVER (ORDER BY id) AS prev_num,
        LEAD(num) OVER (ORDER BY id) AS next_num
    FROM
        input_table
)

SELECT DISTINCT num
FROM Ranked
WHERE num = prev_num AND num = next_num
ORDER BY num;
