--{"gen": "combine", "time": "/", "template": "14b", "dataset": "full_job", "rows": null}
SELECT min(mi_idx.info) AS rating,
min(t.title) AS western_dark_production
FROM info_type AS it1,
info_type AS it2,
keyword AS k,
kind_type AS kt,
movie_info AS mi,
movie_info_idx AS mi_idx,
movie_keyword AS mk,
title AS t,
cast_info AS ci,
name AS n,
person_info AS pi
WHERE (it1.info = 'countries' AND it2.info = 'rating' AND k.keyword IN ('murder', 'murder-in-title') AND kt.kind = 'movie' AND mi.info IN ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German', 'USA', 'American') AND mi_idx.info > '6.0' AND t.production_year > 2010 AND (t.title LIKE '%murder%' OR t.title LIKE '%Murder%' OR t.title LIKE '%Mord%') AND (pi.info ILIKE '%uk%' OR pi.info ILIKE '%spain%' OR pi.info ILIKE '%germany%' OR pi.info ILIKE '%italy%' OR pi.info ILIKE '%croatia%' OR pi.info ILIKE '%algeria%' OR pi.info ILIKE '%south%' OR pi.info ILIKE '%austria%' OR pi.info ILIKE '%hungary%') AND kt.id = t.kind_id AND t.id = mi.movie_id AND t.id = mk.movie_id AND t.id = mi_idx.movie_id AND mk.movie_id = mi.movie_id AND mk.movie_id = mi_idx.movie_id AND mi.movie_id = mi_idx.movie_id AND k.id = mk.keyword_id AND it1.id = mi.info_type_id AND it2.id = mi_idx.info_type_id AND pi.info_type_id = it2.id AND t.id = ci.movie_id AND ci.person_id = n.id AND n.id = pi.person_id AND ci.person_id = pi.person_id AND ci.movie_id = mi.movie_id AND ci.movie_id = mk.movie_id AND ci.movie_id = mi_idx.movie_id AND mi_idx.info_type_id = pi.info_type_id)
