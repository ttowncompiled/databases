SELECT DISTINCT males.uid, males.name, males.gender
FROM Users AS males
    INNER JOIN Friends AS fr ON males.uid = fr.uid1
    INNER JOIN Users AS females ON fr.uid2 = females.uid
WHERE males.gender = 'M' AND females.gender = 'F';