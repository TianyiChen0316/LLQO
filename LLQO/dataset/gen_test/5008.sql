--{"gen": "combine", "time": "/", "template": "generated-7bf81a07-bd4d-46c1-b39a-2ab11fe67bbe", "dataset": "full_job", "rows": null}
SELECT min(t.title) AS typical_european_movie
FROM movie_companies AS mc,
movie_info AS mi,
title AS t,
complete_cast AS cc,
keyword AS k,
kind_type AS kt,
movie_info_idx AS mi_idx,
movie_keyword AS mk
WHERE (mc.note LIKE '%(theatrical)%' AND mc.note LIKE '%(France)%' AND mi.info IN ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German') AND t.production_year > 2005 AND k.keyword IN ('murder', 'murder-in-title', 'blood', 'violence') AND kt.kind IN ('movie', 'episode') AND mi_idx.info < '8.5' AND t.id = mi.movie_id AND t.id = mc.movie_id AND mc.movie_id = mi.movie_id AND kt.id = t.kind_id AND t.id = mk.movie_id AND t.id = mi_idx.movie_id AND t.id = cc.movie_id AND mk.movie_id = mi.movie_id AND mk.movie_id = mi_idx.movie_id AND mk.movie_id = mc.movie_id AND mk.movie_id = cc.movie_id AND mi.movie_id = mi_idx.movie_id AND mi.movie_id = cc.movie_id AND mc.movie_id = mi_idx.movie_id AND mc.movie_id = cc.movie_id AND mi_idx.movie_id = cc.movie_id AND k.id = mk.keyword_id)
