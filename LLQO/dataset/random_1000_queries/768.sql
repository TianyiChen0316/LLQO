--{"gen": "erase", "time": "/", "template": "22b", "dataset": "full_job", "rows": null}
SELECT min(cn.name) AS movie_company,
min(mi_idx.info) AS rating,
min(t.title) AS western_violent_movie
FROM company_name AS cn,
info_type AS it1,
info_type AS it2,
movie_companies AS mc,
movie_info AS mi,
movie_info_idx AS mi_idx,
movie_keyword AS mk,
title AS t
WHERE (cn.country_code <> '[pl]' AND it1.info = 'votes' AND it2.info = 'rating' AND mc.note NOT LIKE '%(USA)%' AND mc.note LIKE '%(Blu-ray)%' AND mi.info IN ('Germany', 'German', 'USA', 'American') AND mi_idx.info < '7.0' AND t.production_year > 2009 AND t.id = mi.movie_id AND t.id = mk.movie_id AND t.id = mi_idx.movie_id AND t.id = mc.movie_id AND mk.movie_id = mi.movie_id AND mk.movie_id = mi_idx.movie_id AND mk.movie_id = mc.movie_id AND mi.movie_id = mi_idx.movie_id AND mi.movie_id = mc.movie_id AND mc.movie_id = mi_idx.movie_id AND it1.id = mi.info_type_id AND it2.id = mi_idx.info_type_id AND cn.id = mc.company_id)