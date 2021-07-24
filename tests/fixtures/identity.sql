SUM(1)
SUM(CASE WHEN x > 1 THEN 1 ELSE 0 END) / y

1
1.0
(1 * 2) / (3 - 5)
''
''''
'x'
'\x'
"x"
""
x
x % 1
x < 1
x <= 1
x > 1
x >= 1
x <> 1
x = y OR x > 1
x & 1
x | 1
x ^ 1
~x
x << 1
x >> 1
x >> 1 | 1 & 1 ^ 1
x || y
1 - -1
x IN (-1, 1)
x IN ('a', 'a''a')
x BETWEEN -1 AND 1
ARRAY_CONTAINS(x, 1)
STR_POSITION(x, 'a')
STR_POSITION(x, 'a', 3)
x RLIKE '%[0-9]+$'
INTERVAL '1' day
INTERVAL '1' month
INTERVAL 2 months
x[y - 1]
(ROW() OVER())
NOT 1
NOT NOT 1
SELECT * FROM test
SELECT *, 1 FROM test
SELECT 1
SELECT 1 FROM test
SELECT * FROM a, b, (SELECT 1) AS c
SELECT a FROM test
SELECT 1 AS range FROM test
SELECT 1 AS count FROM test
SELECT DISTINCT x FROM test
SELECT DISTINCT x, y FROM test
SELECT test.* FROM test
SELECT a AS b FROM test
SELECT "a"."b" FROM "a"
SELECT "a".b FROM a
SELECT a.b FROM "a"
SELECT a.b FROM a
SELECT '"hi' AS x FROM x
SELECT 1 AS "|sum" FROM x
SELECT '\"hi' AS x FROM x
SELECT 1 AS b FROM test
SELECT 1 AS "b" FROM test
SELECT 1 + 1 FROM test
SELECT 1 - 1 FROM test
SELECT 1 * 1 FROM test
SELECT 1 % 1 FROM test
SELECT 1 / 1 FROM test
SELECT 1 < 2 FROM test
SELECT 1 <= 2 FROM test
SELECT 1 > 2 FROM test
SELECT 1 >= 2 FROM test
SELECT 1 <> 2 FROM test
SELECT JSON_PATH(x, '$.hello')
SELECT x LIKE '%x%' FROM test
SELECT * FROM test LIMIT 100
SELECT (1 > 2) AS x FROM test
SELECT NOT (1 > 2) FROM test
SELECT 1 + 2 AS x FROM test
SELECT a, b, 1 < 1 FROM test
SELECT a FROM test WHERE a = 1
SELECT a FROM test WHERE a = 1 AND b = 2
SELECT a FROM test ORDER BY a
SELECT a FROM test ORDER BY a, b
SELECT x FROM tests ORDER BY a DESC, b DESC, c
SELECT a, b FROM test GROUP BY 1
SELECT a, b FROM test GROUP BY a
SELECT a, b FROM test WHERE a = 1 GROUP BY a HAVING a = 2
SELECT a, b FROM test WHERE a = 1 GROUP BY a HAVING a = 2 ORDER BY a
SELECT a, b FROM test WHERE a = 1 GROUP BY CASE 1 WHEN 1 THEN 1 END
SELECT CASE WHEN a < b THEN 1 WHEN a < c THEN 2 ELSE 3 END FROM test
SELECT CASE 1 WHEN 1 THEN 1 ELSE 2 END
SELECT CASE 1 WHEN 1 THEN MAP('a', 'b') ELSE MAP('b', 'c') END['a']
SELECT CASE 1 + 2 WHEN 1 THEN 1 ELSE 2 END
SELECT CASE TEST(1) + x[0] WHEN 1 THEN 1 ELSE 2 END
SELECT CASE x[0] WHEN 1 THEN 1 ELSE 2 END
SELECT CASE a.b WHEN 1 THEN 1 ELSE 2 END
SELECT CASE CASE x > 1 WHEN true THEN 1 END WHEN 1 THEN 1 ELSE 2 END
SELECT a FROM (SELECT a FROM test) AS x
SELECT a FROM (SELECT a FROM (SELECT a FROM test) AS y) AS x
SELECT a FROM test WHERE a IN (1, 2, 3) OR b BETWEEN 1 AND 4
SELECT AVG(a) FROM test
SELECT COUNT(a) FROM test
SELECT COUNT(1) FROM test
SELECT COUNT(*) FROM test
SELECT COUNT(DISTINCT a) FROM test
SELECT FIRST(a) FROM test
SELECT LAST(a) FROM test
SELECT MAX(a) FROM test
SELECT MIN(a) FROM test
SELECT SUM(a) FROM test
SELECT CAST(a AS INT) FROM test
SELECT CAST(a AS VARCHAR) FROM test
SELECT CAST(a < 1 AS INT) FROM test
SELECT CAST(a IS NULL AS INT) FROM test
SELECT COUNT(CAST(1 < 2 AS INT)) FROM test
SELECT COUNT(CASE WHEN CAST(1 < 2 AS BOOLEAN) THEN 1 END) FROM test
SELECT CAST(a AS DECIMAL) FROM test
SELECT CAST(a AS DECIMAL(1)) FROM test
SELECT CAST(a AS DECIMAL(1, 2)) FROM test
SELECT CAST(a AS MAP(INT, INT)) FROM test
SELECT CAST(a AS TIMESTAMP) FROM test
SELECT CAST(a AS DATE) FROM test
SELECT CAST(a AS ARRAY(INT)) FROM test
SELECT COALESCE(a, b, c) FROM test
SELECT 1 FROM a JOIN b ON a.x = b.x
SELECT 1 FROM a JOIN b AS c ON a.x = b.x
SELECT 1 FROM a INNER JOIN b ON a.x = b.x
SELECT 1 FROM a LEFT JOIN b ON a.x = b.x
SELECT 1 FROM a RIGHT JOIN b ON a.x = b.x
SELECT 1 FROM a CROSS JOIN b ON a.x = b.x
SELECT 1 FROM a JOIN (SELECT a FROM c) AS b ON a.x = b.x AND a.x < 2
SELECT 1 FROM a UNION SELECT 2 FROM b
SELECT 1 FROM a UNION ALL SELECT 2 FROM b
SELECT 1 FROM a JOIN b ON a.foo = b.bar JOIN c ON a.foo = c.bar
SELECT 1 FROM a LEFT JOIN b ON a.foo = b.bar JOIN c ON a.foo = c.bar
SELECT 1 FROM a LEFT INNER JOIN b ON a.foo = b.bar
SELECT 1 FROM a LEFT OUTER JOIN b ON a.foo = b.bar
SELECT 1 FROM a OUTER JOIN b ON a.foo = b.bar
SELECT 1 FROM a FULL JOIN b ON a.foo = b.bar
SELECT 1 UNION ALL SELECT 2
SELECT * FROM (SELECT 1) AS x
SELECT * FROM (SELECT 1 UNION SELECT 2) AS x
SELECT * FROM (SELECT 1 UNION ALL SELECT 2) AS x
SELECT * FROM (SELECT 1 UNION ALL SELECT 2)
WITH a AS (SELECT 1) SELECT a.* FROM a
WITH a AS (SELECT 1), b AS (SELECT 2) SELECT a.*, b.* FROM a CROSS JOIN b
SELECT * FROM (WITH y AS (SELECT 1 AS z) SELECT z FROM y) AS x
SELECT RANK() OVER() FROM x
SELECT RANK() OVER() AS y FROM x
SELECT RANK() OVER(PARTITION BY a) FROM x
SELECT RANK() OVER(PARTITION BY a, b) FROM x
SELECT RANK() OVER(ORDER BY a) FROM x
SELECT RANK() OVER(ORDER BY a, b) FROM x
SELECT RANK() OVER(PARTITION BY a ORDER BY a) FROM x
SELECT RANK() OVER(PARTITION BY a, b ORDER BY a, b DESC) FROM x
SELECT SUM(x) OVER(PARTITION BY a) AS y FROM x
SELECT SUM(x) OVER(PARTITION BY a ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
SELECT SUM(x) OVER(PARTITION BY a ORDER BY b ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
SELECT SUM(x) OVER(PARTITION BY a ORDER BY b ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
SELECT SUM(x) OVER(PARTITION BY a ORDER BY b RANGE BETWEEN INTERVAL '1' DAY PRECEDING AND CURRENT ROW)
SELECT SUM(x) OVER(PARTITION BY a ORDER BY b RANGE BETWEEN INTERVAL '1' DAY PRECEDING AND INTERVAL '2' DAYS FOLLOWING)
SELECT SUM(x) OVER(PARTITION BY a ORDER BY b RANGE BETWEEN INTERVAL '1' DAY PRECEDING AND UNBOUNDED FOLLOWING)
SELECT SUM(x) OVER(PARTITION BY a ROWS BETWEEN UNBOUNDED PRECEDING AND PRECEDING)
SELECT SUM(x) OVER(PARTITION BY a ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
SELECT SUM(x) OVER(PARTITION BY a ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING)
SELECT SUM(x) OVER(PARTITION BY a RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
SELECT SUM(x) OVER(PARTITION BY a RANGE BETWEEN 1 AND 3)
SELECT SUM(x) OVER(PARTITION BY a RANGE BETWEEN 1 FOLLOWING AND 3)
SELECT SUM(x) OVER(PARTITION BY a RANGE BETWEEN 1 FOLLOWING AND UNBOUNDED FOLLOWING)
SELECT COUNT(DISTINCT a) OVER(PARTITION BY c ORDER BY d ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING)
SELECT a['1'], b[0], x.c[0], "x".d['1'] FROM x
SELECT ARRAY(1, 2, 3) FROM x
SELECT ARRAY(ARRAY(1), ARRAY(2)) FROM x
SELECT MAP[ARRAY(1), ARRAY(2)] FROM x
SELECT MAP(ARRAY(1), ARRAY(2)) FROM x
SELECT MAX(ARRAY(1, 2, 3)) FROM x
SELECT ARRAY(ARRAY(0))[0][0] FROM x
SELECT MAP[ARRAY('x'), ARRAY(0)]['x'] FROM x
SELECT student, score FROM tests LATERAL VIEW EXPLODE(scores) t AS score
SELECT student, score FROM tests LATERAL VIEW EXPLODE(scores) t AS score, name
SELECT student, score FROM tests LATERAL VIEW OUTER EXPLODE(scores) t AS score, name
SELECT student, score FROM tests CROSS JOIN UNNEST(scores) AS t (score)
SELECT student, score FROM tests CROSS JOIN UNNEST(scores) AS t (a, b)
SELECT student, score FROM tests CROSS JOIN UNNEST(scores) WITH ORDINALITY AS t (a, b)
CREATE TABLE a.b AS SELECT 1
CREATE TABLE a.b AS SELECT a FROM a.c
CREATE TABLE IF NOT EXISTS x AS SELECT a FROM d
CREATE VIEW x AS SELECT a FROM b
CREATE VIEW IF NOT EXISTS x AS SELECT a FROM b
DROP TABLE a
DROP TABLE a.b
DROP VIEW a
DROP VIEW a.b
