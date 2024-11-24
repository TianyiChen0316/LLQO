--{"gen": "combine", "time": "/", "template": "13a", "dataset": "full_job", "rows": null}
SELECT min(mi.info) AS release_date,
min(miidx.info) AS rating,
min(t.title) AS german_movie
FROM company_name AS cn,
company_type AS ct,
info_type AS it,
info_type AS it2,
kind_type AS kt,
movie_companies AS mc,
movie_info AS mi,
movie_info_idx AS miidx,
title AS t,
movie_keyword AS mk,
keyword AS k,
cast_info AS ci,
info_type AS it1
WHERE (cn.country_code = '[de]' AND ct.kind = 'production companies' AND it.info = 'rating' AND it2.info = 'release dates' AND kt.kind = 'movie' AND lower(k.keyword) LIKE '%fight%' AND ci.note IN ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)') AND it1.info = 'genres' AND mi.movie_id = t.id AND it2.id = mi.info_type_id AND kt.id = t.kind_id AND mc.movie_id = t.id AND cn.id = mc.company_id AND ct.id = mc.company_type_id AND miidx.movie_id = t.id AND it.id = miidx.info_type_id AND mi.movie_id = miidx.movie_id AND mi.movie_id = mc.movie_id AND miidx.movie_id = mc.movie_id AND mk.keyword_id = k.id AND mk.movie_id = t.id AND t.id = ci.movie_id AND ci.movie_id = mi.movie_id AND ci.movie_id = mk.movie_id AND ci.movie_id = mc.movie_id AND mk.movie_id = mc.movie_id AND it1.id = mi.info_type_id AND mk.movie_id = mi.movie_id AND it1.id = it.id AND miidx.info_type_id = mi.info_type_id AND miidx.info_type_id = it1.id AND miidx.info_type_id = it2.id AND mi.info_type_id = it.id AND it1.id = it2.id AND it.id = it2.id AND miidx.movie_id = ci.movie_id AND miidx.movie_id = mk.movie_id)
