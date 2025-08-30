### 14. Retrieve a list of teams that have won at least one game
SELECT DISTINCT team_name
FROM (
    SELECT t.team_name FROM Games g JOIN Teams t ON g.team1_id = t.team_id WHERE g.score_team1 > g.score_team2
    UNION
    SELECT t.team_name FROM Games g JOIN Teams t ON g.team2_id = t.team_id WHERE g.score_team2 > g.score_team1
) AS winning_teams
ORDER BY team_name;

-- List of teams that have won at least one game, with scores and opponent
SELECT 
    t.team_name AS winning_team,
    g.game_id,
    opp.team_name AS opponent_team,
    g.score_team1,
    g.score_team2,
    g.game_date
FROM Games g
JOIN Teams t 
    ON (g.team1_id = t.team_id AND g.score_team1 > g.score_team2)
    OR (g.team2_id = t.team_id AND g.score_team2 > g.score_team1)
JOIN Teams opp 
    ON ( (t.team_id = g.team1_id AND opp.team_id = g.team2_id)
      OR (t.team_id = g.team2_id AND opp.team_id = g.team1_id) )
ORDER BY t.team_name, g.game_date;
