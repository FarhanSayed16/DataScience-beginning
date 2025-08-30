### 10. Update and assign Sarah Moore to the team Green Sharks|
set sql_safe_updates=0; -- Switching off the safe mode
UPDATE Players
SET team_id = (SELECT team_id FROM Teams WHERE team_name = 'Green Sharks')
WHERE player_name = 'Sarah Moore';
 
-- Verify the change:
SELECT p.player_name, t.team_name FROM Players p JOIN Teams t ON p.team_id = t.team_id WHERE p.player_name = 'Sarah Moore';

### 11. Deleting all records where the game id is 5
-- You must delete from the 'child' table (PlayerStats) first to satisfy the foreign key constraint.
DELETE FROM PlayerStats WHERE game_id = 5;
DELETE FROM Games WHERE game_id = 5;

-- Verify the deletion (this will return an empty set)
SELECT * FROM Games WHERE game_id = 5;
