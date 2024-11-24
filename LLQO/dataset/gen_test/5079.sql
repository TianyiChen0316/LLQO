--{"gen": "erase", "time": "/", "template": "2b", "dataset": "full_job", "rows": null}
SELECT min(t.title) AS movie_title
FROM keyword AS k,
movie_companies AS mc,
movie_keyword AS mk,
title AS t
WHERE (k.keyword = 'character-name-in-title' AND mc.movie_id = t.id AND t.id = mk.movie_id AND mk.keyword_id = k.id AND mc.movie_id = mk.movie_id)
