SELECT DISTINCT males."uid", males."name", males."gender"
FROM Users males
    INNER JOIN Friends fr ON males."uid" = fr."uid1"
    INNER JOIN Users females ON fr."uid2" = females."uid"
WHERE males."gender" = 'M' AND females."gender" = 'F';