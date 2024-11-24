--{"gen": "erase", "time": "/", "template": "e10a", "dataset": "full_job", "rows": null}
SELECT min(t.title)
FROM info_type AS it2,
movie_info_idx AS mii,
title AS t,
cast_info AS ci,
person_info AS pi
WHERE (it2.info ILIKE '%birth%' AND pi.info ILIKE '%india%' AND (mii.info ILIKE '8%' OR mii.info ILIKE '9%' OR mii.info ILIKE '10%') AND t.id = mii.movie_id AND t.id = ci.movie_id AND mii.movie_id = ci.movie_id AND ci.person_id = pi.person_id AND pi.info_type_id = it2.id)
