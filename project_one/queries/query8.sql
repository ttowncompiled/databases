SELECT any_user.uid, any_user.name, any_user.gender
FROM Users AS any_user
WHERE NOT EXISTS (
  SELECT *
  FROM Users AS female_user
  WHERE female_user.gender = 'F' AND NOT EXISTS (
    SELECT *
    FROM Comments
    WHERE Comments.poster = any_user.uid AND Comments.recipient = female_user.uid
  )
);