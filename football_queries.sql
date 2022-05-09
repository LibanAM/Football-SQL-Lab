-- psql -d football -f football_queries.sql

SELECT * FROM matches WHERE season = 2017; 

SELECT * FROM matches WHERE 'Barcelona' IN(hometeam, awayteam);

SELECT name FROM divisions WHERE country LIKE 'Scotland';

SELECT code FROM divisions WHERE name LIKE 'Bundesliga%';

SELECT COUNT(*) FROM matches WHERE division_code LIKE 'D1' AND 'Freiburg' IN(hometeam, awayteam);

SELECT DISTINCT hometeam FROM matches WHERE hometeam ILIKE '%city%';

SELECT COUNT(DISTINCT hometeam) FROM matches WHERE division_code ILIKE '%F%';

SELECT * FROM matches WHERE hometeam ILIKE 'Swansea' AND awayteam ILIKE 'Huddersfield';

SELECT ftr, COUNT(*) FROM matches WHERE division_code = 'N1' AND season BETWEEN 2010 AND 2015 AND ftr LIKE 'D' GROUP BY ftr;

SELECT * FROM matches WHERE division_code LIKE 'E0' ORDER BY fthg + ftag DESC, fthg DESC;

SELECT SUM(fthg + ftag), division_code, season FROM matches  GROUP BY division_code, season ORDER BY SUM(fthg + ftag) DESC;