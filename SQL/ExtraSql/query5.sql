### 7. Fetch all players and their respective teams, including players without a team
SELECT
    p.player_name,
    t.team_name
FROM Players p
LEFT JOIN Teams t ON p.team_id = t.team_id;

### 8. Total points scored by players, grouped by their teams

SELECT
    t.team_name,
    SUM(ps.points) AS total_team_points
FROM PlayerStats ps
JOIN Players p ON ps.player_id = p.player_id
JOIN Teams t ON p.team_id = t.team_id
GROUP BY t.team_name
ORDER BY total_team_points DESC;

### 9. Players who scored more than 5 points
SELECT
    p.player_name,
    SUM(ps.points) as total_points
FROM Players p
JOIN PlayerStats ps ON p.player_id = ps.player_id
GROUP BY p.player_name
HAVING SUM(ps.points) > 5;
