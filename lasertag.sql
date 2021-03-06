-- Create the shots table
CREATE TABLE shots (player_frequency SERIAL NOT NULL PRIMARY KEY, shots integer);

-- Create all the schemas for the different players (used for the hit tables)
CREATE SCHEMA player1;
CREATE SCHEMA player2;
CREATE SCHEMA player3;
CREATE SCHEMA player4;
CREATE SCHEMA player5;
CREATE SCHEMA player6;
CREATE SCHEMA player7;
CREATE SCHEMA player8;
CREATE SCHEMA player9;
CREATE SCHEMA player10;

-- Give permissions to the lasertag user
GRANT ALL ON SCHEMA public TO lasertag;
GRANT ALL ON SCHEMA player1 TO lasertag;
GRANT ALL ON SCHEMA player2 TO lasertag;
GRANT ALL ON SCHEMA player3 TO lasertag;
GRANT ALL ON SCHEMA player4 TO lasertag;
GRANT ALL ON SCHEMA player5 TO lasertag;
GRANT ALL ON SCHEMA player6 TO lasertag;
GRANT ALL ON SCHEMA player7 TO lasertag;
GRANT ALL ON SCHEMA player8 TO lasertag;
GRANT ALL ON SCHEMA player9 TO lasertag;
GRANT ALL ON SCHEMA player10 TO lasertag;

-- Create all the hit tables for each player
CREATE TABLE player1.hits (player_frequency SERIAL NOT NULL PRIMARY KEY, hits integer);
CREATE TABLE player2.hits (player_frequency SERIAL NOT NULL PRIMARY KEY, hits integer);
CREATE TABLE player3.hits (player_frequency SERIAL NOT NULL PRIMARY KEY, hits integer);
CREATE TABLE player4.hits (player_frequency SERIAL NOT NULL PRIMARY KEY, hits integer);
CREATE TABLE player5.hits (player_frequency SERIAL NOT NULL PRIMARY KEY, hits integer);
CREATE TABLE player6.hits (player_frequency SERIAL NOT NULL PRIMARY KEY, hits integer);
CREATE TABLE player7.hits (player_frequency SERIAL NOT NULL PRIMARY KEY, hits integer);
CREATE TABLE player8.hits (player_frequency SERIAL NOT NULL PRIMARY KEY, hits integer);
CREATE TABLE player9.hits (player_frequency SERIAL NOT NULL PRIMARY KEY, hits integer);
CREATE TABLE player10.hits (player_frequency SERIAL NOT NULL PRIMARY KEY, hits integer);

-- Create a view to show the total takedowns for each player
CREATE VIEW takedowns AS SELECT (SELECT hits FROM player1.hits WHERE player_frequency=1) +
       (SELECT hits FROM player2.hits WHERE player_frequency=1) +
       (SELECT hits FROM player3.hits WHERE player_frequency=1) +
       (SELECT hits FROM player4.hits WHERE player_frequency=1) +
       (SELECT hits FROM player5.hits WHERE player_frequency=1) +
       (SELECT hits FROM player6.hits WHERE player_frequency=1) +
       (SELECT hits FROM player7.hits WHERE player_frequency=1) +
       (SELECT hits FROM player8.hits WHERE player_frequency=1) +
       (SELECT hits FROM player9.hits WHERE player_frequency=1) +
       (SELECT hits FROM player10.hits WHERE player_frequency=2) AS player_1,
       (SELECT hits FROM player1.hits WHERE player_frequency=2) +
       (SELECT hits FROM player2.hits WHERE player_frequency=2) +
       (SELECT hits FROM player3.hits WHERE player_frequency=2) +
       (SELECT hits FROM player4.hits WHERE player_frequency=2) +
       (SELECT hits FROM player5.hits WHERE player_frequency=2) +
       (SELECT hits FROM player6.hits WHERE player_frequency=2) +
       (SELECT hits FROM player7.hits WHERE player_frequency=2) +
       (SELECT hits FROM player8.hits WHERE player_frequency=2) +
       (SELECT hits FROM player9.hits WHERE player_frequency=2) +
       (SELECT hits FROM player10.hits WHERE player_frequency=2) AS player_2,
       (SELECT hits FROM player1.hits WHERE player_frequency=3) +
       (SELECT hits FROM player2.hits WHERE player_frequency=3) +
       (SELECT hits FROM player3.hits WHERE player_frequency=3) +
       (SELECT hits FROM player4.hits WHERE player_frequency=3) +
       (SELECT hits FROM player5.hits WHERE player_frequency=3) +
       (SELECT hits FROM player6.hits WHERE player_frequency=3) +
       (SELECT hits FROM player7.hits WHERE player_frequency=3) +
       (SELECT hits FROM player8.hits WHERE player_frequency=3) +
       (SELECT hits FROM player9.hits WHERE player_frequency=3) +
       (SELECT hits FROM player10.hits WHERE player_frequency=3) AS player_3,
       (SELECT hits FROM player1.hits WHERE player_frequency=4) +
       (SELECT hits FROM player2.hits WHERE player_frequency=4) +
       (SELECT hits FROM player3.hits WHERE player_frequency=4) +
       (SELECT hits FROM player4.hits WHERE player_frequency=4) +
       (SELECT hits FROM player5.hits WHERE player_frequency=4) +
       (SELECT hits FROM player6.hits WHERE player_frequency=4) +
       (SELECT hits FROM player7.hits WHERE player_frequency=4) +
       (SELECT hits FROM player8.hits WHERE player_frequency=4) +
       (SELECT hits FROM player9.hits WHERE player_frequency=4) +
       (SELECT hits FROM player10.hits WHERE player_frequency=4) AS player_4,
       (SELECT hits FROM player1.hits WHERE player_frequency=5) +
       (SELECT hits FROM player2.hits WHERE player_frequency=5) +
       (SELECT hits FROM player3.hits WHERE player_frequency=5) +
       (SELECT hits FROM player4.hits WHERE player_frequency=5) +
       (SELECT hits FROM player5.hits WHERE player_frequency=5) +
       (SELECT hits FROM player6.hits WHERE player_frequency=5) +
       (SELECT hits FROM player7.hits WHERE player_frequency=5) +
       (SELECT hits FROM player8.hits WHERE player_frequency=5) +
       (SELECT hits FROM player9.hits WHERE player_frequency=5) +
       (SELECT hits FROM player10.hits WHERE player_frequency=5) AS player_5,
       (SELECT hits FROM player1.hits WHERE player_frequency=6) +
       (SELECT hits FROM player2.hits WHERE player_frequency=6) +
       (SELECT hits FROM player3.hits WHERE player_frequency=6) +
       (SELECT hits FROM player4.hits WHERE player_frequency=6) +
       (SELECT hits FROM player5.hits WHERE player_frequency=6) +
       (SELECT hits FROM player6.hits WHERE player_frequency=6) +
       (SELECT hits FROM player7.hits WHERE player_frequency=6) +
       (SELECT hits FROM player8.hits WHERE player_frequency=6) +
       (SELECT hits FROM player9.hits WHERE player_frequency=6) +
       (SELECT hits FROM player10.hits WHERE player_frequency=6) AS player_6,
       (SELECT hits FROM player1.hits WHERE player_frequency=7) +
       (SELECT hits FROM player2.hits WHERE player_frequency=7) +
       (SELECT hits FROM player3.hits WHERE player_frequency=7) +
       (SELECT hits FROM player4.hits WHERE player_frequency=7) +
       (SELECT hits FROM player5.hits WHERE player_frequency=7) +
       (SELECT hits FROM player6.hits WHERE player_frequency=7) +
       (SELECT hits FROM player7.hits WHERE player_frequency=7) +
       (SELECT hits FROM player8.hits WHERE player_frequency=7) +
       (SELECT hits FROM player9.hits WHERE player_frequency=7) +
       (SELECT hits FROM player10.hits WHERE player_frequency=7) AS player_7,
       (SELECT hits FROM player1.hits WHERE player_frequency=8) +
       (SELECT hits FROM player2.hits WHERE player_frequency=8) +
       (SELECT hits FROM player3.hits WHERE player_frequency=8) +
       (SELECT hits FROM player4.hits WHERE player_frequency=8) +
       (SELECT hits FROM player5.hits WHERE player_frequency=8) +
       (SELECT hits FROM player6.hits WHERE player_frequency=8) +
       (SELECT hits FROM player7.hits WHERE player_frequency=8) +
       (SELECT hits FROM player8.hits WHERE player_frequency=8) +
       (SELECT hits FROM player9.hits WHERE player_frequency=8) +
       (SELECT hits FROM player10.hits WHERE player_frequency=8) AS player_8,
       (SELECT hits FROM player1.hits WHERE player_frequency=9) +
       (SELECT hits FROM player2.hits WHERE player_frequency=9) +
       (SELECT hits FROM player3.hits WHERE player_frequency=9) +
       (SELECT hits FROM player4.hits WHERE player_frequency=9) +
       (SELECT hits FROM player5.hits WHERE player_frequency=9) +
       (SELECT hits FROM player6.hits WHERE player_frequency=9) +
       (SELECT hits FROM player7.hits WHERE player_frequency=9) +
       (SELECT hits FROM player8.hits WHERE player_frequency=9) +
       (SELECT hits FROM player9.hits WHERE player_frequency=9) +
       (SELECT hits FROM player10.hits WHERE player_frequency=9) AS player_9,
       (SELECT hits FROM player1.hits WHERE player_frequency=10) +
       (SELECT hits FROM player2.hits WHERE player_frequency=10) +
       (SELECT hits FROM player3.hits WHERE player_frequency=10) +
       (SELECT hits FROM player4.hits WHERE player_frequency=10) +
       (SELECT hits FROM player5.hits WHERE player_frequency=10) +
       (SELECT hits FROM player6.hits WHERE player_frequency=10) +
       (SELECT hits FROM player7.hits WHERE player_frequency=10) +
       (SELECT hits FROM player8.hits WHERE player_frequency=10) +
       (SELECT hits FROM player9.hits WHERE player_frequency=10) +
       (SELECT hits FROM player10.hits WHERE player_frequency=1) AS player_10;

-- Create a view to show total hits for each player.
CREATE VIEW hits AS SELECT (SELECT hits FROM player1.hits WHERE player_frequency=1) +
       (SELECT hits FROM player1.hits WHERE player_frequency=2) +
       (SELECT hits FROM player1.hits WHERE player_frequency=3) +
       (SELECT hits FROM player1.hits WHERE player_frequency=4) +
       (SELECT hits FROM player1.hits WHERE player_frequency=5) +
       (SELECT hits FROM player1.hits WHERE player_frequency=6) +
       (SELECT hits FROM player1.hits WHERE player_frequency=7) +
       (SELECT hits FROM player1.hits WHERE player_frequency=8) +
       (SELECT hits FROM player1.hits WHERE player_frequency=9) +
       (SELECT hits FROM player1.hits WHERE player_frequency=10) AS player_1,
       (SELECT hits FROM player2.hits WHERE player_frequency=1) +
       (SELECT hits FROM player2.hits WHERE player_frequency=2) +
       (SELECT hits FROM player2.hits WHERE player_frequency=3) +
       (SELECT hits FROM player2.hits WHERE player_frequency=4) +
       (SELECT hits FROM player2.hits WHERE player_frequency=5) +
       (SELECT hits FROM player2.hits WHERE player_frequency=6) +
       (SELECT hits FROM player2.hits WHERE player_frequency=7) +
       (SELECT hits FROM player2.hits WHERE player_frequency=8) +
       (SELECT hits FROM player2.hits WHERE player_frequency=9) +
       (SELECT hits FROM player2.hits WHERE player_frequency=10) AS player_2,
       (SELECT hits FROM player3.hits WHERE player_frequency=1) +
       (SELECT hits FROM player3.hits WHERE player_frequency=2) +
       (SELECT hits FROM player3.hits WHERE player_frequency=3) +
       (SELECT hits FROM player3.hits WHERE player_frequency=4) +
       (SELECT hits FROM player3.hits WHERE player_frequency=5) +
       (SELECT hits FROM player3.hits WHERE player_frequency=6) +
       (SELECT hits FROM player3.hits WHERE player_frequency=7) +
       (SELECT hits FROM player3.hits WHERE player_frequency=8) +
       (SELECT hits FROM player3.hits WHERE player_frequency=9) +
       (SELECT hits FROM player3.hits WHERE player_frequency=10) AS player_3,
       (SELECT hits FROM player4.hits WHERE player_frequency=1) +
       (SELECT hits FROM player4.hits WHERE player_frequency=2) +
       (SELECT hits FROM player4.hits WHERE player_frequency=3) +
       (SELECT hits FROM player4.hits WHERE player_frequency=4) +
       (SELECT hits FROM player4.hits WHERE player_frequency=5) +
       (SELECT hits FROM player4.hits WHERE player_frequency=6) +
       (SELECT hits FROM player4.hits WHERE player_frequency=7) +
       (SELECT hits FROM player4.hits WHERE player_frequency=8) +
       (SELECT hits FROM player4.hits WHERE player_frequency=9) +
       (SELECT hits FROM player4.hits WHERE player_frequency=10) AS player_4,
       (SELECT hits FROM player5.hits WHERE player_frequency=1) +
       (SELECT hits FROM player5.hits WHERE player_frequency=2) +
       (SELECT hits FROM player5.hits WHERE player_frequency=3) +
       (SELECT hits FROM player5.hits WHERE player_frequency=4) +
       (SELECT hits FROM player5.hits WHERE player_frequency=5) +
       (SELECT hits FROM player5.hits WHERE player_frequency=6) +
       (SELECT hits FROM player5.hits WHERE player_frequency=7) +
       (SELECT hits FROM player5.hits WHERE player_frequency=8) +
       (SELECT hits FROM player5.hits WHERE player_frequency=9) +
       (SELECT hits FROM player5.hits WHERE player_frequency=10) AS player_5,
       (SELECT hits FROM player6.hits WHERE player_frequency=1) +
       (SELECT hits FROM player6.hits WHERE player_frequency=2) +
       (SELECT hits FROM player6.hits WHERE player_frequency=3) +
       (SELECT hits FROM player6.hits WHERE player_frequency=4) +
       (SELECT hits FROM player6.hits WHERE player_frequency=5) +
       (SELECT hits FROM player6.hits WHERE player_frequency=6) +
       (SELECT hits FROM player6.hits WHERE player_frequency=7) +
       (SELECT hits FROM player6.hits WHERE player_frequency=8) +
       (SELECT hits FROM player6.hits WHERE player_frequency=9) +
       (SELECT hits FROM player6.hits WHERE player_frequency=10) AS player_6,
       (SELECT hits FROM player7.hits WHERE player_frequency=1) +
       (SELECT hits FROM player7.hits WHERE player_frequency=2) +
       (SELECT hits FROM player7.hits WHERE player_frequency=3) +
       (SELECT hits FROM player7.hits WHERE player_frequency=4) +
       (SELECT hits FROM player7.hits WHERE player_frequency=5) +
       (SELECT hits FROM player7.hits WHERE player_frequency=6) +
       (SELECT hits FROM player7.hits WHERE player_frequency=7) +
       (SELECT hits FROM player7.hits WHERE player_frequency=8) +
       (SELECT hits FROM player7.hits WHERE player_frequency=9) +
       (SELECT hits FROM player7.hits WHERE player_frequency=10) AS player_7,
       (SELECT hits FROM player8.hits WHERE player_frequency=1) +
       (SELECT hits FROM player8.hits WHERE player_frequency=2) +
       (SELECT hits FROM player8.hits WHERE player_frequency=3) +
       (SELECT hits FROM player8.hits WHERE player_frequency=4) +
       (SELECT hits FROM player8.hits WHERE player_frequency=5) +
       (SELECT hits FROM player8.hits WHERE player_frequency=6) +
       (SELECT hits FROM player8.hits WHERE player_frequency=7) +
       (SELECT hits FROM player8.hits WHERE player_frequency=8) +
       (SELECT hits FROM player8.hits WHERE player_frequency=9) +
       (SELECT hits FROM player8.hits WHERE player_frequency=10) AS player_8,
       (SELECT hits FROM player9.hits WHERE player_frequency=1) +
       (SELECT hits FROM player9.hits WHERE player_frequency=2) +
       (SELECT hits FROM player9.hits WHERE player_frequency=3) +
       (SELECT hits FROM player9.hits WHERE player_frequency=4) +
       (SELECT hits FROM player9.hits WHERE player_frequency=5) +
       (SELECT hits FROM player9.hits WHERE player_frequency=6) +
       (SELECT hits FROM player9.hits WHERE player_frequency=7) +
       (SELECT hits FROM player9.hits WHERE player_frequency=8) +
       (SELECT hits FROM player9.hits WHERE player_frequency=9) +
       (SELECT hits FROM player9.hits WHERE player_frequency=10) AS player_9,
       (SELECT hits FROM player10.hits WHERE player_frequency=1) +
       (SELECT hits FROM player10.hits WHERE player_frequency=2) +
       (SELECT hits FROM player10.hits WHERE player_frequency=3) +
       (SELECT hits FROM player10.hits WHERE player_frequency=4) +
       (SELECT hits FROM player10.hits WHERE player_frequency=5) +
       (SELECT hits FROM player10.hits WHERE player_frequency=6) +
       (SELECT hits FROM player10.hits WHERE player_frequency=7) +
       (SELECT hits FROM player10.hits WHERE player_frequency=8) +
       (SELECT hits FROM player10.hits WHERE player_frequency=9) +
       (SELECT hits FROM player10.hits WHERE player_frequency=10) AS player_10;

-- Create a view to show the total score for each player
CREATE VIEW score AS SELECT (SELECT (takedowns.player_1 - (hits.player_1 / 10)::float)::float * ((takedowns.player_1 + 1) / (shots + 1)::float)::float AS score FROM takedowns, hits, shots WHERE shots.player_frequency = 1) AS player_1,
       (SELECT (takedowns.player_2 - (hits.player_2 / 10)::float)::float * ((takedowns.player_2 + 1) / (shots + 1)::float)::float AS score FROM takedowns, hits, shots WHERE shots.player_frequency = 2) AS player_2,
       (SELECT (takedowns.player_3 - (hits.player_3 / 10)::float)::float * ((takedowns.player_3 + 1) / (shots + 1)::float)::float AS score FROM takedowns, hits, shots WHERE shots.player_frequency = 3) AS player_3,
       (SELECT (takedowns.player_4 - (hits.player_4 / 10)::float)::float * ((takedowns.player_4 + 1) / (shots + 1)::float)::float AS score FROM takedowns, hits, shots WHERE shots.player_frequency = 4) AS player_4,
       (SELECT (takedowns.player_5 - (hits.player_5 / 10)::float)::float * ((takedowns.player_5 + 1) / (shots + 1)::float)::float AS score FROM takedowns, hits, shots WHERE shots.player_frequency = 5) AS player_5,
       (SELECT (takedowns.player_6 - (hits.player_6 / 10)::float)::float * ((takedowns.player_6 + 1) / (shots + 1)::float)::float AS score FROM takedowns, hits, shots WHERE shots.player_frequency = 6) AS player_6,
       (SELECT (takedowns.player_7 - (hits.player_7 / 10)::float)::float * ((takedowns.player_7 + 1) / (shots + 1)::float)::float AS score FROM takedowns, hits, shots WHERE shots.player_frequency = 7) AS player_7,
       (SELECT (takedowns.player_8 - (hits.player_8 / 10)::float)::float * ((takedowns.player_8 + 1) / (shots + 1)::float)::float AS score FROM takedowns, hits, shots WHERE shots.player_frequency = 8) AS player_8,
       (SELECT (takedowns.player_9 - (hits.player_9 / 10)::float)::float * ((takedowns.player_9 + 1) / (shots + 1)::float)::float AS score FROM takedowns, hits, shots WHERE shots.player_frequency = 9) AS player_9,
       (SELECT (takedowns.player_10 - (hits.player_10 / 10)::float)::float * ((takedowns.player_10 + 1) / (shots + 1)::float)::float AS score FROM takedowns, hits, shots WHERE shots.player_frequency = 10) AS player_10;

-- Allow the scores table to be selected
GRANT SELECT ON scores TO PUBLIC;

-- Create function to return the takedown value for a player
CREATE FUNCTION get_takedown_value(player_frequency integer) RETURNS TABLE (fc json) AS $$ BEGIN IF player_frequency = 1 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'takedowns', player_1) FROM takedowns; ELSIF player_frequency = 2 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'takedowns', player_2) FROM takedowns; ELSIF player_frequency = 3 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'takedowns', player_3) FROM takedowns; ELSIF player_frequency = 4 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'takedowns', player_4) FROM takedowns; ELSIF player_frequency = 5 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'takedowns', player_5) FROM takedowns; ELSIF player_frequency = 6 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'takedowns', player_6) FROM takedowns; ELSIF player_frequency = 7 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'takedowns', player_7) FROM takedowns; ELSIF player_frequency = 8 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'takedowns', player_8) FROM takedowns; ELSIF player_frequency = 9 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'takedowns', player_9) FROM takedowns; ELSIF player_frequency = 10 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'takedowns', player_10) FROM takedowns; ELSE RETURN QUERY SELECT json_build_object('player_frequency', 0, 'takedowns', 0) FROM takedowns; END IF; RETURN; END; $$ LANGUAGE plpgsql;

-- Create function to return the hits value for a player
CREATE FUNCTION get_hit_value(player_frequency integer) RETURNS TABLE (fc json) AS $$ BEGIN IF player_frequency = 1 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'hits', player_1) FROM hits; ELSIF player_frequency = 2 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'hits', player_2) FROM hits; ELSIF player_frequency = 3 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'hits', player_3) FROM hits; ELSIF player_frequency = 4 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'hits', player_4) FROM hits; ELSIF player_frequency = 5 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'hits', player_5) FROM hits; ELSIF player_frequency = 6 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'hits', player_6) FROM hits; ELSIF player_frequency = 7 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'hits', player_7) FROM hits; ELSIF player_frequency = 8 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'hits', player_8) FROM hits; ELSIF player_frequency = 9 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'hits', player_9) FROM hits; ELSIF player_frequency = 10 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'hits', player_10) FROM hits; ELSE RETURN QUERY SELECT json_build_object('player_frequency', 0, 'hits', 0) FROM hits; END IF; RETURN; END; $$ LANGUAGE plpgsql;

-- Create function to return the scores value for a player
CREATE FUNCTION get_score_value(player_frequency integer) RETURNS TABLE (fc json) AS $$ BEGIN IF player_frequency = 1 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'scores', player_1) FROM scores; ELSIF player_frequency = 2 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'scores', player_2) FROM scores; ELSIF player_frequency = 3 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'scores', player_3) FROM scores; ELSIF player_frequency = 4 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'scores', player_4) FROM scores; ELSIF player_frequency = 5 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'scores', player_5) FROM scores; ELSIF player_frequency = 6 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'scores', player_6) FROM scores; ELSIF player_frequency = 7 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'scores', player_7) FROM scores; ELSIF player_frequency = 8 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'scores', player_8) FROM scores; ELSIF player_frequency = 9 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'scores', player_9) FROM scores; ELSIF player_frequency = 10 THEN RETURN QUERY SELECT json_build_object('player_frequency', player_frequency, 'scores', player_10) FROM scores; ELSE RETURN QUERY SELECT json_build_object('player_frequency', 0, 'scores', 0) FROM scores; END IF; RETURN; END; $$ LANGUAGE plpgsql;

-- Create function to update the score table
CREATE FUNCTION notify_score_table() RETURNS trigger AS $$ DECLARE BEGIN PERFORM pg_notify('watchers', get_score_value(NEW.player_frequency)::text); RETURN NULL; END; $$ LANGUAGE plpgsql;

-- Create function to update the takedown table
CREATE FUNCTION notify_takedown_table() RETURNS trigger AS $$ DECLARE BEGIN PERFORM pg_notify('watchers', get_takedown_value(NEW.player_frequency)::text); RETURN NULL; END; $$ LANGUAGE plpgsql;

-- Create function to update the hit table
CREATE FUNCTION notify_hit_table() RETURNS trigger AS $$ DECLARE BEGIN PERFORM pg_notify('watchers', get_hit_value(TG_ARGV[0]::integer)::text); RETURN NEW; END; $$ LANGUAGE plpgsql;

-- Create the function to be used by the triggers on tables (announces a 'watcher' for NodeJS socekt)
CREATE FUNCTION notify_shot_table() RETURNS trigger AS $$ DECLARE BEGIN PERFORM pg_notify('watchers', row_to_json(NEW)::text); RETURN NULL; END; $$ LANGUAGE plpgsql;

-- Create trigger for the shots table
CREATE TRIGGER shots_table_trigger AFTER UPDATE ON shots FOR EACH ROW EXECUTE PROCEDURE notify_shot_table();

-- Create the triggers for the scores table
CREATE TRIGGER scores_table_trigger AFTER UPDATE ON shots FOR EACH ROW EXECUTE PROCEDURE notify_score_table();

CREATE TRIGGER player1_score_table_trigger AFTER UPDATE ON player1.hits FOR EACH ROW EXECUTE PROCEDURE notify_score_table();
CREATE TRIGGER player2_score_table_trigger AFTER UPDATE ON player2.hits FOR EACH ROW EXECUTE PROCEDURE notify_score_table();
CREATE TRIGGER player3_score_table_trigger AFTER UPDATE ON player3.hits FOR EACH ROW EXECUTE PROCEDURE notify_score_table();
CREATE TRIGGER player4_score_table_trigger AFTER UPDATE ON player4.hits FOR EACH ROW EXECUTE PROCEDURE notify_score_table();
CREATE TRIGGER player5_score_table_trigger AFTER UPDATE ON player5.hits FOR EACH ROW EXECUTE PROCEDURE notify_score_table();
CREATE TRIGGER player6_score_table_trigger AFTER UPDATE ON player6.hits FOR EACH ROW EXECUTE PROCEDURE notify_score_table();
CREATE TRIGGER player7_score_table_trigger AFTER UPDATE ON player7.hits FOR EACH ROW EXECUTE PROCEDURE notify_score_table();
CREATE TRIGGER player8_score_table_trigger AFTER UPDATE ON player8.hits FOR EACH ROW EXECUTE PROCEDURE notify_score_table();
CREATE TRIGGER player9_score_table_trigger AFTER UPDATE ON player9.hits FOR EACH ROW EXECUTE PROCEDURE notify_score_table();
CREATE TRIGGER player10_score_table_trigger AFTER UPDATE ON player10.hits FOR EACH ROW EXECUTE PROCEDURE notify_score_table();

-- Create all the triggers for the player takedown tables
CREATE TRIGGER player1_takedown_trigger AFTER UPDATE ON player1.hits FOR EACH ROW EXECUTE PROCEDURE notify_takedown_table();
CREATE TRIGGER player2_takedown_trigger AFTER UPDATE ON player2.hits FOR EACH ROW EXECUTE PROCEDURE notify_takedown_table();
CREATE TRIGGER player3_takedown_trigger AFTER UPDATE ON player3.hits FOR EACH ROW EXECUTE PROCEDURE notify_takedown_table();
CREATE TRIGGER player4_takedown_trigger AFTER UPDATE ON player4.hits FOR EACH ROW EXECUTE PROCEDURE notify_takedown_table();
CREATE TRIGGER player5_takedown_trigger AFTER UPDATE ON player5.hits FOR EACH ROW EXECUTE PROCEDURE notify_takedown_table();
CREATE TRIGGER player6_takedown_trigger AFTER UPDATE ON player6.hits FOR EACH ROW EXECUTE PROCEDURE notify_takedown_table();
CREATE TRIGGER player7_takedown_trigger AFTER UPDATE ON player7.hits FOR EACH ROW EXECUTE PROCEDURE notify_takedown_table();
CREATE TRIGGER player8_takedown_trigger AFTER UPDATE ON player8.hits FOR EACH ROW EXECUTE PROCEDURE notify_takedown_table();
CREATE TRIGGER player9_takedown_trigger AFTER UPDATE ON player9.hits FOR EACH ROW EXECUTE PROCEDURE notify_takedown_table();
CREATE TRIGGER player10_takedown_trigger AFTER UPDATE ON player10.hits FOR EACH ROW EXECUTE PROCEDURE notify_takedown_table();

-- Create all the triggers for the player hit tables
CREATE TRIGGER player1_hits_trigger AFTER UPDATE ON player1.hits FOR EACH ROW EXECUTE PROCEDURE notify_hit_table(1);
CREATE TRIGGER player2_hits_trigger AFTER UPDATE ON player2.hits FOR EACH ROW EXECUTE PROCEDURE notify_hit_table(2);
CREATE TRIGGER player3_hits_trigger AFTER UPDATE ON player3.hits FOR EACH ROW EXECUTE PROCEDURE notify_hit_table(3);
CREATE TRIGGER player4_hits_trigger AFTER UPDATE ON player4.hits FOR EACH ROW EXECUTE PROCEDURE notify_hit_table(4);
CREATE TRIGGER player5_hits_trigger AFTER UPDATE ON player5.hits FOR EACH ROW EXECUTE PROCEDURE notify_hit_table(5);
CREATE TRIGGER player6_hits_trigger AFTER UPDATE ON player6.hits FOR EACH ROW EXECUTE PROCEDURE notify_hit_table(6);
CREATE TRIGGER player7_hits_trigger AFTER UPDATE ON player7.hits FOR EACH ROW EXECUTE PROCEDURE notify_hit_table(7);
CREATE TRIGGER player8_hits_trigger AFTER UPDATE ON player8.hits FOR EACH ROW EXECUTE PROCEDURE notify_hit_table(8);
CREATE TRIGGER player9_hits_trigger AFTER UPDATE ON player9.hits FOR EACH ROW EXECUTE PROCEDURE notify_hit_table(9);
CREATE TRIGGER player10_hits_trigger AFTER UPDATE ON player10.hits FOR EACH ROW EXECUTE PROCEDURE notify_hit_table(10);

-- Insert 10 values into the shots table
INSERT INTO shots (shots) VALUES (0);
INSERT INTO shots (shots) VALUES (0);
INSERT INTO shots (shots) VALUES (0);
INSERT INTO shots (shots) VALUES (0);
INSERT INTO shots (shots) VALUES (0);
INSERT INTO shots (shots) VALUES (0);
INSERT INTO shots (shots) VALUES (0);
INSERT INTO shots (shots) VALUES (0);
INSERT INTO shots (shots) VALUES (0);
INSERT INTO shots (shots) VALUES (0);

-- Insert 10 values into each player hit table
INSERT INTO player1.hits (hits) VALUES (0);
INSERT INTO player1.hits (hits) VALUES (0);
INSERT INTO player1.hits (hits) VALUES (0);
INSERT INTO player1.hits (hits) VALUES (0);
INSERT INTO player1.hits (hits) VALUES (0);
INSERT INTO player1.hits (hits) VALUES (0);
INSERT INTO player1.hits (hits) VALUES (0);
INSERT INTO player1.hits (hits) VALUES (0);
INSERT INTO player1.hits (hits) VALUES (0);
INSERT INTO player1.hits (hits) VALUES (0);

INSERT INTO player2.hits (hits) VALUES (0);
INSERT INTO player2.hits (hits) VALUES (0);
INSERT INTO player2.hits (hits) VALUES (0);
INSERT INTO player2.hits (hits) VALUES (0);
INSERT INTO player2.hits (hits) VALUES (0);
INSERT INTO player2.hits (hits) VALUES (0);
INSERT INTO player2.hits (hits) VALUES (0);
INSERT INTO player2.hits (hits) VALUES (0);
INSERT INTO player2.hits (hits) VALUES (0);
INSERT INTO player2.hits (hits) VALUES (0);

INSERT INTO player3.hits (hits) VALUES (0);
INSERT INTO player3.hits (hits) VALUES (0);
INSERT INTO player3.hits (hits) VALUES (0);
INSERT INTO player3.hits (hits) VALUES (0);
INSERT INTO player3.hits (hits) VALUES (0);
INSERT INTO player3.hits (hits) VALUES (0);
INSERT INTO player3.hits (hits) VALUES (0);
INSERT INTO player3.hits (hits) VALUES (0);
INSERT INTO player3.hits (hits) VALUES (0);
INSERT INTO player3.hits (hits) VALUES (0);

INSERT INTO player4.hits (hits) VALUES (0);
INSERT INTO player4.hits (hits) VALUES (0);
INSERT INTO player4.hits (hits) VALUES (0);
INSERT INTO player4.hits (hits) VALUES (0);
INSERT INTO player4.hits (hits) VALUES (0);
INSERT INTO player4.hits (hits) VALUES (0);
INSERT INTO player4.hits (hits) VALUES (0);
INSERT INTO player4.hits (hits) VALUES (0);
INSERT INTO player4.hits (hits) VALUES (0);
INSERT INTO player4.hits (hits) VALUES (0);

INSERT INTO player5.hits (hits) VALUES (0);
INSERT INTO player5.hits (hits) VALUES (0);
INSERT INTO player5.hits (hits) VALUES (0);
INSERT INTO player5.hits (hits) VALUES (0);
INSERT INTO player5.hits (hits) VALUES (0);
INSERT INTO player5.hits (hits) VALUES (0);
INSERT INTO player5.hits (hits) VALUES (0);
INSERT INTO player5.hits (hits) VALUES (0);
INSERT INTO player5.hits (hits) VALUES (0);
INSERT INTO player5.hits (hits) VALUES (0);

INSERT INTO player6.hits (hits) VALUES (0);
INSERT INTO player6.hits (hits) VALUES (0);
INSERT INTO player6.hits (hits) VALUES (0);
INSERT INTO player6.hits (hits) VALUES (0);
INSERT INTO player6.hits (hits) VALUES (0);
INSERT INTO player6.hits (hits) VALUES (0);
INSERT INTO player6.hits (hits) VALUES (0);
INSERT INTO player6.hits (hits) VALUES (0);
INSERT INTO player6.hits (hits) VALUES (0);
INSERT INTO player6.hits (hits) VALUES (0);

INSERT INTO player7.hits (hits) VALUES (0);
INSERT INTO player7.hits (hits) VALUES (0);
INSERT INTO player7.hits (hits) VALUES (0);
INSERT INTO player7.hits (hits) VALUES (0);
INSERT INTO player7.hits (hits) VALUES (0);
INSERT INTO player7.hits (hits) VALUES (0);
INSERT INTO player7.hits (hits) VALUES (0);
INSERT INTO player7.hits (hits) VALUES (0);
INSERT INTO player7.hits (hits) VALUES (0);
INSERT INTO player7.hits (hits) VALUES (0);

INSERT INTO player8.hits (hits) VALUES (0);
INSERT INTO player8.hits (hits) VALUES (0);
INSERT INTO player8.hits (hits) VALUES (0);
INSERT INTO player8.hits (hits) VALUES (0);
INSERT INTO player8.hits (hits) VALUES (0);
INSERT INTO player8.hits (hits) VALUES (0);
INSERT INTO player8.hits (hits) VALUES (0);
INSERT INTO player8.hits (hits) VALUES (0);
INSERT INTO player8.hits (hits) VALUES (0);
INSERT INTO player8.hits (hits) VALUES (0);

INSERT INTO player9.hits (hits) VALUES (0);
INSERT INTO player9.hits (hits) VALUES (0);
INSERT INTO player9.hits (hits) VALUES (0);
INSERT INTO player9.hits (hits) VALUES (0);
INSERT INTO player9.hits (hits) VALUES (0);
INSERT INTO player9.hits (hits) VALUES (0);
INSERT INTO player9.hits (hits) VALUES (0);
INSERT INTO player9.hits (hits) VALUES (0);
INSERT INTO player9.hits (hits) VALUES (0);
INSERT INTO player9.hits (hits) VALUES (0);

INSERT INTO player10.hits (hits) VALUES (0);
INSERT INTO player10.hits (hits) VALUES (0);
INSERT INTO player10.hits (hits) VALUES (0);
INSERT INTO player10.hits (hits) VALUES (0);
INSERT INTO player10.hits (hits) VALUES (0);
INSERT INTO player10.hits (hits) VALUES (0);
INSERT INTO player10.hits (hits) VALUES (0);
INSERT INTO player10.hits (hits) VALUES (0);
INSERT INTO player10.hits (hits) VALUES (0);
INSERT INTO player10.hits (hits) VALUES (0);

-- SELECT all the tables and views to check that they are correct
SELECT * FROM shots;

SELECT * FROM player1.hits;
SELECT * FROM player2.hits;
SELECT * FROM player3.hits;
SELECT * FROM player4.hits;
SELECT * FROM player5.hits;
SELECT * FROM player6.hits;
SELECT * FROM player7.hits;
SELECT * FROM player8.hits;
SELECT * FROM player9.hits;
SELECT * FROM player10.hits;

SELECT * FROM hits;
SELECT * FROM takedowns;
