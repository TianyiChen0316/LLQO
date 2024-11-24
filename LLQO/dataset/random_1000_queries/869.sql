--{"gen": "erase", "time": "/", "template": "3a", "dataset": "full_job", "rows": null}
SELECT min(t.title) AS movie_title
FROM movie_info AS mi,
movie_keyword AS mk,
title AS t
WHERE (mi.info IN ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German') AND t.production_year BETWEEN 2005 AND 2009 AND t.id = mi.movie_id AND t.id = mk.movie_id AND mk.movie_id = mi.movie_id)