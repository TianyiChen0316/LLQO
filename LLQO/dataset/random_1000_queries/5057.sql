--{"gen": "combine", "time": "/", "template": "3c", "dataset": "full_job", "rows": null}
SELECT min(t.title) AS movie_title
FROM movie_info AS mi,
movie_keyword AS mk,
title AS t,
cast_info AS ci,
movie_companies AS mc,
complete_cast AS cc,
info_type AS it2,
movie_info_idx AS mi_idx
WHERE (mi.info IN ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German', 'USA', 'American') AND t.production_year > 1990 AND ci.note IN ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)') AND mc.note IS NOT NULL AND (mc.note LIKE '%(USA)%' OR mc.note LIKE '%(worldwide)%') AND it2.info = 'top 250 rank' AND mi_idx.info < '8.5' AND t.id = mi.movie_id AND t.id = mk.movie_id AND mk.movie_id = mi.movie_id AND mc.movie_id = ci.movie_id AND mc.movie_id = mi.movie_id AND mi.movie_id = ci.movie_id AND ci.movie_id = mk.movie_id AND mc.movie_id = mk.movie_id AND t.id = mi_idx.movie_id AND t.id = mc.movie_id AND t.id = cc.movie_id AND mk.movie_id = mi_idx.movie_id AND mk.movie_id = cc.movie_id AND mi.movie_id = mi_idx.movie_id AND mi.movie_id = cc.movie_id AND mc.movie_id = mi_idx.movie_id AND mc.movie_id = cc.movie_id AND mi_idx.movie_id = cc.movie_id AND it2.id = mi_idx.info_type_id AND t.id = ci.movie_id AND ci.movie_id = cc.movie_id AND ci.movie_id = mi_idx.movie_id)