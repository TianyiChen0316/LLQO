--{"gen": "erase", "time": "/", "template": "14c", "dataset": "full_job", "rows": null}
SELECT min(mi_idx.info) AS rating,
min(t.title) AS north_european_dark_production
FROM info_type AS it2,
keyword AS k,
movie_info AS mi,
movie_info_idx AS mi_idx,
movie_keyword AS mk,
title AS t
WHERE (it2.info = 'rating' AND k.keyword IS NOT NULL AND k.keyword IN ('murder', 'murder-in-title', 'blood', 'violence') AND mi.info IN ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Danish', 'Norwegian', 'German', 'USA', 'American') AND mi_idx.info < '8.5' AND t.production_year > 2005 AND t.id = mi.movie_id AND t.id = mk.movie_id AND t.id = mi_idx.movie_id AND mk.movie_id = mi.movie_id AND mk.movie_id = mi_idx.movie_id AND mi.movie_id = mi_idx.movie_id AND k.id = mk.keyword_id AND it2.id = mi_idx.info_type_id)
