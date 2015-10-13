SELECT agg_users."uid", agg_users."name", agg_users."gender", right_table.max_comments_received
FROM Users agg_users
    INNER JOIN (
      SELECT Comments."recipient", COUNT(Comments."poster") AS comments_received
      FROM Comments
      GROUP BY Comments."recipient"
    ) agg_comments ON agg_users."uid" = agg_comments."recipient"
    INNER JOIN (
      SELECT MAX(max_comments.comments_received) AS max_comments_received
      FROM Users max_users
          INNER JOIN (
            SELECT Comments."recipient", COUNT(Comments."poster") AS comments_received
            FROM Comments
            GROUP BY Comments."recipient"
          ) max_comments ON max_users."uid" = max_comments."recipient"
    ) right_table ON agg_comments.comments_received = right_table.max_comments_received;