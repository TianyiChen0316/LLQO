--{"gen": "erase", "time": "/", "template": "generated-6d2a7241-013d-4a73-97dd-a156a53aac81", "dataset": "full_job", "rows": null}
SELECT min(mi_idx.info) AS rating,
min(t.title) AS western_violent_movie
FROM info_type AS it1,
info_type AS it2,
movie_companies AS mc,
movie_info AS mi,
movie_info_idx AS mi_idx,
movie_keyword AS mk,
title AS t
WHERE (it1.info = 'countries' AND it2.info = 'rating' AND mc.note NOT LIKE '%(TV)%' AND mc.note LIKE '%(200%)%' AND mi.info IN ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Danish', 'Norwegian', 'German', 'USA', 'American') AND mi_idx.info < '8.5' AND t.production_year > 2005 AND t.id = mi.movie_id AND t.id = mk.movie_id AND t.id = mi_idx.movie_id AND t.id = mc.movie_id AND mk.movie_id = mi.movie_id AND mk.movie_id = mi_idx.movie_id AND mk.movie_id = mc.movie_id AND mi.movie_id = mi_idx.movie_id AND mi.movie_id = mc.movie_id AND mc.movie_id = mi_idx.movie_id AND it1.id = mi.info_type_id AND it2.id = mi_idx.info_type_id)
