SELECT Users.uid, Users.name, Users.gender
FROM Users LEFT JOIN (SELECT DISTINCT males.uid
                      FROM Comments INNER JOIN Users AS males ON Comments.recipient = males.uid
                                    INNER JOIN Users AS females ON Comments.poster = females.uid
                      WHERE males.gender = 'M' AND females.gender = 'F') AS no_females ON Users.uid = no_females.uid
WHERE Users.gender = 'M' AND no_females.uid IS NULL;