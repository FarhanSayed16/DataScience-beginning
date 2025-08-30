### 2. Query to find players who scored points between 3 and 6

SELECT
    p.player_name,
    ps.game_id,
    ps.points
FROM Players p
JOIN PlayerStats ps ON p.player_id = ps.player_id
WHERE ps.points BETWEEN 3 AND 6
ORDER BY p.player_name, ps.points;