--{"gen": "erase", "time": "/", "template": "generated-269929ea-e4fc-4d67-bb73-70e3d92b0f62", "dataset": "full_job", "rows": null}
SELECT min(cn1.name) AS first_company,
min(cn2.name) AS second_company,
min(mi_idx1.info) AS first_rating,
min(mi_idx2.info) AS second_rating,
min(t2.title) AS second_movie
FROM company_name AS cn1,
company_name AS cn2,
info_type AS it1,
movie_companies AS mc1,
movie_companies AS mc2,
movie_info_idx AS mi_idx1,
movie_info_idx AS mi_idx2,
movie_link AS ml,
title AS t2,
kind_type AS kt1,
title AS t1
WHERE (cn1.country_code = '[nl]' AND it1.info = 'genres' AND mi_idx2.info < '3.0' AND t2.production_year BETWEEN 2005 AND 2008 AND kt1.kind IN ('tv series', 'episode') AND t2.id = ml.linked_movie_id AND it1.id = mi_idx1.info_type_id AND cn1.id = mc1.company_id AND ml.movie_id = mi_idx1.movie_id AND ml.movie_id = mc1.movie_id AND mi_idx1.movie_id = mc1.movie_id AND t2.id = mi_idx2.movie_id AND cn2.id = mc2.company_id AND t2.id = mc2.movie_id AND ml.linked_movie_id = mi_idx2.movie_id AND ml.linked_movie_id = mc2.movie_id AND mi_idx2.movie_id = mc2.movie_id AND t1.id = ml.movie_id AND t1.id = mi_idx1.movie_id AND kt1.id = t1.kind_id AND t1.id = mc1.movie_id)
