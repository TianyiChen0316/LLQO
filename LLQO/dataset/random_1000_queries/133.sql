--{"gen": "combine", "time": "/", "template": "20c", "dataset": "full_job", "rows": null}
SELECT min(n.name) AS cast_member,
min(t.title) AS complete_dynamic_hero_movie
FROM complete_cast AS cc,
comp_cast_type AS cct1,
comp_cast_type AS cct2,
char_name AS chn,
cast_info AS ci,
keyword AS k,
kind_type AS kt,
movie_keyword AS mk,
name AS n,
title AS t,
info_type AS it1,
info_type AS it2,
movie_info AS mi,
movie_info_idx AS mi_idx
WHERE (cct1.kind = 'cast' AND cct2.kind LIKE '%complete%' AND chn.name IS NOT NULL AND (chn.name LIKE '%man%' OR chn.name LIKE '%Man%') AND k.keyword IN ('superhero', 'marvel-comics', 'based-on-comic', 'tv-special', 'fight', 'violence', 'magnet', 'web', 'claw', 'laser') AND kt.kind = 'movie' AND t.production_year > 2000 AND it1.info = 'release dates' AND it2.info = 'top 250 rank' AND kt.id = t.kind_id AND t.id = mk.movie_id AND t.id = ci.movie_id AND t.id = cc.movie_id AND mk.movie_id = ci.movie_id AND mk.movie_id = cc.movie_id AND ci.movie_id = cc.movie_id AND chn.id = ci.person_role_id AND n.id = ci.person_id AND k.id = mk.keyword_id AND cct1.id = cc.subject_id AND cct2.id = cc.status_id AND ci.movie_id = mi.movie_id AND ci.movie_id = mi_idx.movie_id AND mi.movie_id = mi_idx.movie_id AND it1.id = mi.info_type_id AND it2.id = mi_idx.info_type_id AND t.id = mi.movie_id AND t.id = mi_idx.movie_id AND cc.movie_id = mi.movie_id AND cc.movie_id = mi_idx.movie_id AND mk.movie_id = mi.movie_id AND mk.movie_id = mi_idx.movie_id)
