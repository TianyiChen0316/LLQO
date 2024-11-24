--{"gen": "erase", "time": "/", "template": "14a", "dataset": "full_job", "rows": null}
SELECT min(mi_idx.info) AS rating,
min(t.title) AS northern_dark_movie
FROM info_type AS it1,
info_type AS it2,
movie_info AS mi,
movie_info_idx AS mi_idx,
movie_keyword AS mk,
title AS t
WHERE (it1.info = 'budget' AND it2.info = 'rating' AND mi.info IN ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German', 'USA', 'American') AND mi_idx.info < '8.5' AND t.production_year BETWEEN 1980 AND 2010 AND t.id = mi.movie_id AND t.id = mk.movie_id AND t.id = mi_idx.movie_id AND mk.movie_id = mi.movie_id AND mk.movie_id = mi_idx.movie_id AND mi.movie_id = mi_idx.movie_id AND it1.id = mi.info_type_id AND it2.id = mi_idx.info_type_id)