SELECT any_user."uid", any_user."name", any_user."gender"
FROM Users any_user
WHERE (
  SELECT MAX(agg_comms.comments_posted)
  FROM (
    SELECT Comments."poster", Comments."recipient", COUNT(Comments."cid") AS comments_posted
    FROM Comments
    GROUP BY Comments."poster", Comments."recipient"
  ) agg_comms
  WHERE agg_comms."poster" = any_user."uid"
) > 1;