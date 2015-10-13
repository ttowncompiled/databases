SELECT any_user.uid, any_user.name, any_user.gender
FROM Users AS any_user
WHERE (
  SELECT MAX(agg_comms.comments_posted)
  FROM (
    SELECT Comments.poster, Comments.recipient, COUNT(Comments.cid) AS comments_posted
    FROM Comments
    WHERE Comments.poster = any_user.uid
    GROUP BY Comments.poster, Comments.recipient
  ) AS agg_comms
) > 1;