--{"gen": "erase", "time": "/", "template": "28a", "dataset": "full_job", "rows": null}
SELECT min(cn.name) AS movie_company,
min(mi_idx.info) AS rating,
min(t.title) AS complete_euro_dark_movie
FROM complete_cast AS cc,
comp_cast_type AS cct1,
company_name AS cn,
company_type AS ct,
info_type AS it1,
keyword AS k,
movie_companies AS mc,
movie_info AS mi,
movie_info_idx AS mi_idx,
movie_keyword AS mk,
title AS t
WHERE (cct1.kind = 'crew' AND cn.country_code <> '[pl]' AND it1.info = 'countries' AND k.keyword IN ('murder', 'murder-in-title', 'blood', 'violence') AND mc.note LIKE '%(1994)%' AND mc.note LIKE '%(200%)%' AND mi.info IN ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Danish', 'Norwegian', 'German', 'USA', 'American') AND mi_idx.info > '6.0' AND t.production_year BETWEEN 1950 AND 2010 AND t.id = mi.movie_id AND t.id = mk.movie_id AND t.id = mi_idx.movie_id AND t.id = mc.movie_id AND t.id = cc.movie_id AND mk.movie_id = mi.movie_id AND mk.movie_id = mi_idx.movie_id AND mk.movie_id = mc.movie_id AND mk.movie_id = cc.movie_id AND mi.movie_id = mi_idx.movie_id AND mi.movie_id = mc.movie_id AND mi.movie_id = cc.movie_id AND mc.movie_id = mi_idx.movie_id AND mc.movie_id = cc.movie_id AND mi_idx.movie_id = cc.movie_id AND k.id = mk.keyword_id AND it1.id = mi.info_type_id AND ct.id = mc.company_type_id AND cn.id = mc.company_id AND cct1.id = cc.subject_id)
