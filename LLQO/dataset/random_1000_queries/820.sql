--{"gen": "combine", "time": "/", "template": "5b", "dataset": "full_job", "rows": null}
SELECT min(t.title) AS american_vhs_movie
FROM company_type AS ct,
info_type AS it,
movie_companies AS mc,
movie_info AS mi,
title AS t,
cast_info AS ci,
char_name AS chn
WHERE (ct.kind = 'production companies' AND mc.note LIKE '%(VHS)%' AND mc.note LIKE '%(USA)%' AND mc.note LIKE '%(1994)%' AND mi.info IN ('USA', 'America') AND t.production_year > 2010 AND ci.role_id = 1 AND t.id = mi.movie_id AND t.id = mc.movie_id AND mc.movie_id = mi.movie_id AND ct.id = mc.company_type_id AND it.id = mi.info_type_id AND ci.movie_id = t.id AND chn.id = ci.person_role_id AND ci.movie_id = mi.movie_id AND ci.movie_id = mc.movie_id)
