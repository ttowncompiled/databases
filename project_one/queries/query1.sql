SELECT Comments."cid", Comments."poster", Comments."recipient", Comments."text", Comments."posttime"
FROM Comments
WHERE Comments."text" LIKE '%OMG%'
ORDER BY Comments."poster" ASC, Comments."posttime" DESC;