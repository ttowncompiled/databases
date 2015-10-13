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