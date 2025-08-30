SELECT
    t.team_name,
    p1.player_name AS player1,
    p2.player_name AS player2
FROM Players p1
JOIN Players p2 ON p1.team_id = p2.team_id AND p1.player_id < p2.player_id
JOIN Teams t ON p1.team_id = t.team_id
ORDER BY t.team_name, p1.player_name, p2.player_name;
