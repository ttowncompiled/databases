SELECT Comments.text, Comments.posttime
FROM Comments
  INNER JOIN (
    SELECT Users.uid, Users.name, agg_comms.comments_posted
    FROM Users
        INNER JOIN (
          SELECT Comments.poster, COUNT(Comments.cid) AS comments_posted
          FROM Comments
          GROUP BY Comments.poster
        ) AS agg_comms ON Users.uid = agg_comms.poster
    WHERE agg_comms.comments_posted > 1
  ) AS friendly_posters ON Comments.poster = friendly_posters.uid
WHERE EXISTS (
  SELECT *
  FROM Friends
  WHERE Friends.uid1 = Comments.poster AND Friends.uid2 = Comments.recipient
);
