### 12. Players who scored more than the average points in a specific game

SELECT
    p.player_name,
    ps.points
FROM PlayerStats ps
JOIN Players p ON ps.player_id = p.player_id
WHERE ps.game_id = 1
  AND ps.points > (SELECT AVG(points) FROM PlayerStats WHERE game_id = 1);	
  
  ### 13. Find the top 3 players who have scored the highest total points across all games

SELECT
    p.player_name,
    SUM(ps.points) AS total_points
FROM Players p
JOIN PlayerStats ps ON p.player_id = ps.player_id
GROUP BY p.player_name
ORDER BY total_points DESC
LIMIT 3;