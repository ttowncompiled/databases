SELECT males."uid", males."name", males."gender", females."uid", females."name", females."gender", fr."startdate"
FROM Users males
    INNER JOIN Friends fr ON males."uid" = fr."uid1"
    INNER JOIN Users females ON fr."uid2" = females."uid"
WHERE males."gender" = 'M' AND females."gender" = 'F'
    AND '31-DEC-2014' < fr."startdate" AND '01-JAN-2016' > fr."startdate";