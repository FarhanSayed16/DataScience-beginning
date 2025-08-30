
### 4. Find games played in the last 30 days
SELECT
    game_id,
    t1.team_name AS team1,
    t2.team_name AS team2,
    score_team1,
    score_team2,
    game_date
FROM Games g
JOIN Teams t1 ON g.team1_id = t1.team_id
JOIN Teams t2 ON g.team2_id = t2.team_id
WHERE game_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

### 5. Create a view to summarize player statistics
CREATE OR REPLACE VIEW PlayerStatisticsSummary AS
SELECT
    p.player_name,
    t.team_name,
    COUNT(ps.game_id) AS games_played,
    COALESCE(SUM(ps.points), 0) AS total_points,
    COALESCE(AVG(ps.points), 0) AS avg_points_per_game,
    COALESCE(SUM(ps.assists), 0) AS total_assists,
    COALESCE(SUM(ps.rebounds), 0) AS total_rebounds
FROM Players p
LEFT JOIN Teams t ON p.team_id = t.team_id
LEFT JOIN PlayerStats ps ON p.player_id = ps.player_id
GROUP BY p.player_id, p.player_name, t.team_name;

-- After creating the view, query it like this:
SELECT * FROM PlayerStatisticsSummary;

### 6. Create a trigger to ensure points cannot be negative

DELIMITER $$
CREATE TRIGGER before_playerstats_insert
BEFORE INSERT ON PlayerStats
FOR EACH ROW
BEGIN
    IF NEW.points < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Points cannot be negative.';
    END IF;
END$$
DELIMITER ;

-- To test it, run this. It will produce an error, proving the trigger works.
-- INSERT INTO PlayerStats (player_id, game_id, points, assists, rebounds) VALUES (1, 2, -5, 2, 3);
