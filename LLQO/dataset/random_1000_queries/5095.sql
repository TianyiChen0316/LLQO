--{"gen": "combine", "time": "/", "template": "generated-b1b06b99-baad-472e-861e-83c7846d1555", "dataset": "full_job", "rows": null}
SELECT *
FROM keyword AS k,
movie_companies AS mc,
movie_keyword AS mk,
movie_link AS ml,
movie_info_idx AS mi_idx,
cast_info AS ci,
movie_info AS mi,
info_type AS it,
aka_title AS at,
title AS t,
complete_cast AS cc,
comp_cast_type AS cct2,
char_name AS chn
WHERE (k.keyword = 'sequel' AND mc.note IS NULL AND mi_idx.info > '3.0' AND ci.note IN ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)') AND mi.info IN ('Horror', 'Action', 'Sci-Fi', 'Thriller', 'Crime', 'War') AND it.info = 'votes' AND t.production_year > 1990 AND cct2.kind LIKE 'complete%' AND chn.name NOT LIKE '%Sherlock%' AND (chn.name LIKE '%Tony%Stark%' OR chn.name LIKE '%Iron%Man%') AND mk.keyword_id = k.id AND ml.movie_id = mk.movie_id AND ml.movie_id = mc.movie_id AND mk.movie_id = mc.movie_id AND mk.movie_id = mi_idx.movie_id AND ci.movie_id = mi.movie_id AND ci.movie_id = mi_idx.movie_id AND ci.movie_id = mk.movie_id AND mi.movie_id = mi_idx.movie_id AND mi.movie_id = mk.movie_id AND mc.movie_id = mi_idx.movie_id AND it.id = mi_idx.info_type_id AND mc.movie_id = at.movie_id AND mc.movie_id = mi.movie_id AND at.movie_id = mk.movie_id AND at.movie_id = mi.movie_id AND at.movie_id = mi_idx.movie_id AND mc.movie_id = ci.movie_id AND at.movie_id = ci.movie_id AND ml.movie_id = at.movie_id AND ml.movie_id = ci.movie_id AND ml.movie_id = mi.movie_id AND ml.movie_id = mi_idx.movie_id AND t.id = mi_idx.movie_id AND t.id = mk.movie_id AND t.id = ci.movie_id AND t.id = cc.movie_id AND ci.movie_id = cc.movie_id AND chn.id = ci.person_role_id AND cct2.id = cc.status_id AND cc.movie_id = mk.movie_id AND cc.movie_id = mi_idx.movie_id AND t.id = ml.movie_id AND t.id = mc.movie_id AND t.id = at.movie_id AND t.id = mi.movie_id AND ml.movie_id = cc.movie_id AND mc.movie_id = cc.movie_id AND at.movie_id = cc.movie_id AND cc.movie_id = mi.movie_id)