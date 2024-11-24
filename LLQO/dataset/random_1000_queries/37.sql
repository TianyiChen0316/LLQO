--{"gen": "combine", "time": "/", "template": "5a", "dataset": "full_job", "rows": null}
SELECT min(t.title) AS typical_european_movie
FROM company_type AS ct,
info_type AS it,
movie_companies AS mc,
movie_info AS mi,
title AS t,
keyword AS k,
movie_keyword AS mk,
cast_info AS ci,
char_name AS chn
WHERE (ct.kind = 'production companies' AND mc.note LIKE '%(theatrical)%' AND mc.note LIKE '%(France)%' AND mi.info IN ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German') AND t.production_year > 2005 AND k.keyword = 'character-name-in-title' AND ci.role_id = 1 AND t.id = mi.movie_id AND t.id = mc.movie_id AND mc.movie_id = mi.movie_id AND ct.id = mc.company_type_id AND it.id = mi.info_type_id AND mk.keyword_id = k.id AND mc.movie_id = mk.movie_id AND chn.id = ci.person_role_id AND ci.movie_id = mc.movie_id AND ci.movie_id = mk.movie_id AND t.id = ci.movie_id AND t.id = mk.movie_id AND ci.movie_id = mi.movie_id AND mk.movie_id = mi.movie_id)
