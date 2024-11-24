--{"gen": "combine", "time": "/", "template": "26c", "dataset": "full_job", "rows": null}
SELECT min(chn.name) AS character_name,
min(mi_idx.info) AS rating,
min(t.title) AS complete_hero_movie
FROM complete_cast AS cc,
comp_cast_type AS cct1,
comp_cast_type AS cct2,
char_name AS chn,
cast_info AS ci,
info_type AS it2,
keyword AS k,
kind_type AS kt,
movie_info_idx AS mi_idx,
movie_keyword AS mk,
name AS n,
title AS t,
company_name AS cn,
info_type AS it1,
movie_companies AS mc,
movie_info AS mi
WHERE (cct1.kind = 'cast' AND cct2.kind LIKE '%complete%' AND chn.name IS NOT NULL AND (chn.name LIKE '%man%' OR chn.name LIKE '%Man%') AND it2.info = 'rating' AND k.keyword IN ('superhero', 'marvel-comics', 'based-on-comic', 'tv-special', 'fight', 'violence', 'magnet', 'web', 'claw', 'laser') AND kt.kind = 'movie' AND t.production_year > 2000 AND cn.name LIKE 'Lionsgate%' AND it1.info = 'genres' AND mi.info IN ('Horror', 'Action', 'Sci-Fi', 'Thriller', 'Crime', 'War') AND kt.id = t.kind_id AND t.id = mk.movie_id AND t.id = ci.movie_id AND t.id = cc.movie_id AND t.id = mi_idx.movie_id AND mk.movie_id = ci.movie_id AND mk.movie_id = cc.movie_id AND mk.movie_id = mi_idx.movie_id AND ci.movie_id = cc.movie_id AND ci.movie_id = mi_idx.movie_id AND cc.movie_id = mi_idx.movie_id AND chn.id = ci.person_role_id AND n.id = ci.person_id AND k.id = mk.keyword_id AND cct1.id = cc.subject_id AND cct2.id = cc.status_id AND it2.id = mi_idx.info_type_id AND t.id = mi.movie_id AND t.id = mc.movie_id AND ci.movie_id = mi.movie_id AND ci.movie_id = mc.movie_id AND mi.movie_id = mi_idx.movie_id AND mi.movie_id = mk.movie_id AND mi.movie_id = mc.movie_id AND mi_idx.movie_id = mc.movie_id AND mk.movie_id = mc.movie_id AND it1.id = mi.info_type_id AND cn.id = mc.company_id AND mc.movie_id = cc.movie_id AND cc.movie_id = mi.movie_id)
