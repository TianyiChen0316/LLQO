--{"gen": "combine", "time": "/", "template": "generated-c9e82369-7fbd-4eed-bf68-0f4c50c6a6fe", "dataset": "full_job", "rows": null}
SELECT min(t.title),
min(t.production_year),
min(cn.name)
FROM cast_info AS ci,
title AS t,
char_name AS cn,
info_type AS it2,
movie_info_idx AS mii,
name AS n,
person_info AS pi,
char_name AS chn,
movie_companies AS mc
WHERE (t.kind_id = 1 AND ci.role_id = 2 AND it2.info ILIKE '%birth%' AND pi.info ILIKE '%usa%' AND (mii.info ILIKE '8%' OR mii.info ILIKE '9%' OR mii.info ILIKE '10%') AND ci.movie_id = t.id AND cn.id = ci.person_role_id AND mii.movie_id = ci.movie_id AND ci.person_id = n.id AND n.id = pi.person_id AND ci.person_id = pi.person_id AND pi.info_type_id = it2.id AND t.id = mii.movie_id AND t.id = mc.movie_id AND ci.movie_id = mc.movie_id AND chn.id = ci.person_role_id AND mii.movie_id = mc.movie_id AND cn.id = chn.id)