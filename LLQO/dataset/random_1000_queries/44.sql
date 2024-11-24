--{"gen": "erase", "time": "/", "template": "26b", "dataset": "full_job", "rows": null}
SELECT min(chn.name) AS character_name,
min(mi_idx.info) AS rating,
min(t.title) AS complete_hero_movie
FROM complete_cast AS cc,
comp_cast_type AS cct1,
comp_cast_type AS cct2,
char_name AS chn,
cast_info AS ci,
info_type AS it2,
movie_info_idx AS mi_idx,
movie_keyword AS mk,
name AS n,
title AS t
WHERE (cct1.kind = 'cast' AND cct2.kind LIKE '%complete%' AND chn.name IS NOT NULL AND (chn.name LIKE '%man%' OR chn.name LIKE '%Man%') AND it2.info = 'countries' AND mi_idx.info > '8.0' AND t.production_year > 2005 AND t.id = mk.movie_id AND t.id = ci.movie_id AND t.id = cc.movie_id AND t.id = mi_idx.movie_id AND mk.movie_id = ci.movie_id AND mk.movie_id = cc.movie_id AND mk.movie_id = mi_idx.movie_id AND ci.movie_id = cc.movie_id AND ci.movie_id = mi_idx.movie_id AND cc.movie_id = mi_idx.movie_id AND chn.id = ci.person_role_id AND n.id = ci.person_id AND cct1.id = cc.subject_id AND cct2.id = cc.status_id AND it2.id = mi_idx.info_type_id)
