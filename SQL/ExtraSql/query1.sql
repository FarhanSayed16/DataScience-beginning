### 1. Query to calculate the total points scored by each player

SELECT
    p.player_name,
    COALESCE(SUM(ps.points), 0) AS total_points
FROM Players p
LEFT JOIN PlayerStats ps ON p.player_id = ps.player_id
GROUP BY p.player_name
ORDER BY total_points DESC;
