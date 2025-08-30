
### 15. Determine the average number of rebounds per player for each team
SELECT
    t.team_name,
    AVG(ps.rebounds) AS avg_rebounds_per_player_game
FROM PlayerStats ps
JOIN Players p ON ps.player_id = p.player_id
JOIN Teams t ON p.team_id = t.team_id
GROUP BY t.team_name
ORDER BY avg_rebounds_per_player_game DESC;