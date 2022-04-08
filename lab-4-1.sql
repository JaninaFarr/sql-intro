-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

--SELECT SUM(hits)
--FROM players p, stats s
--WHERE p.id = s.player_id 
--and p.first_name = "Barry"
--and p.last_name = "Bonds";

SELECT SUM(stats.hits)
FROM players INNER JOIN stats ON players.id = stats.player_id
WHERE players.first_name = "Barry" AND players.last_name = "Bonds";
