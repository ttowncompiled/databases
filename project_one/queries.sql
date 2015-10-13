-- queries (Ian Riley)
-- query 1
SELECT Comments."cid", Comments."poster", Comments."recipient", Comments."text", Comments."posttime"
FROM Comments
WHERE Comments."text" LIKE '%OMG%'
ORDER BY Comments."poster" ASC, Comments."posttime" DESC;

-- query 2
SELECT DISTINCT males."uid", males."name", males."gender"
FROM Users males
    INNER JOIN Friends fr ON males."uid" = fr."uid1"
    INNER JOIN Users females ON fr."uid2" = females."uid"
WHERE males."gender" = 'M' AND females."gender" = 'F';

-- query 3
SELECT males."uid", males."name", males."gender", females."uid", females."name", females."gender", fr."startdate"
FROM Users males
    INNER JOIN Friends fr ON males."uid" = fr."uid1"
    INNER JOIN Users females ON fr."uid2" = females."uid"
WHERE males."gender" = 'M' AND females."gender" = 'F'
    AND '31-DEC-2014' < fr."startdate" AND '01-JAN-2016' > fr."startdate";

-- query 4
SELECT any_user."uid", any_user."name", any_user."gender", agg_female_friends.num_female_friends, agg_male_friends.num_male_friends
FROM Users any_user
    LEFT JOIN (
      SELECT female_friends."uid1", COUNT(female_friends."uid2") AS num_female_friends
      FROM Friends female_friends INNER JOIN Users females ON female_friends."uid2" = females."uid"
      WHERE females."gender" = 'F'
      GROUP BY female_friends."uid1"
    ) agg_female_friends ON any_user."uid" = agg_female_friends."uid1"
    LEFT JOIN (
      SELECT male_friends."uid1", COUNT(male_friends."uid2") AS num_male_friends
      FROM Friends male_friends INNER JOIN Users males ON male_friends."uid2" = males."uid"
      WHERE males."gender" = 'M'
      GROUP BY male_friends."uid1"
    ) agg_male_friends ON any_user."uid" = agg_male_friends."uid1";


-- query 5
SELECT Users."uid", Users."name", Users."gender"
FROM Users LEFT JOIN (
  SELECT DISTINCT males."uid"
  FROM Comments
      INNER JOIN Users males ON Comments."recipient" = males."uid"
      INNER JOIN Users females ON Comments."poster" = females."uid"
  WHERE males."gender" = 'M' AND females."gender" = 'F'
) no_females ON Users."uid" = no_females."uid"
WHERE Users."gender" = 'M' AND no_females."uid" IS NULL;

-- query 6
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

-- query 7
SELECT Comments."text", Comments."posttime"
FROM Comments
  INNER JOIN (
    SELECT Users."uid", Users."name", agg_comms.comments_posted
    FROM Users
        INNER JOIN (
          SELECT Comments."poster", COUNT(Comments."cid") AS comments_posted
          FROM Comments
          GROUP BY Comments."poster"
        ) agg_comms ON Users."uid" = agg_comms."poster"
    WHERE agg_comms.comments_posted > 1
  ) friendly_posters ON Comments."poster" = friendly_posters."uid"
WHERE EXISTS (
  SELECT *
  FROM Friends
  WHERE Friends."uid1" = Comments."poster" AND Friends."uid2" = Comments."recipient"
);

-- query 8
SELECT any_user."uid", any_user."name", any_user."gender"
FROM Users any_user
WHERE NOT EXISTS (
  SELECT *
  FROM Users female_user
  WHERE female_user."gender" = 'F' AND NOT EXISTS (
    SELECT *
    FROM Comments
    WHERE Comments."poster" = any_user."uid" AND Comments."recipient" = female_user."uid"
  )
);

-- query 9
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
