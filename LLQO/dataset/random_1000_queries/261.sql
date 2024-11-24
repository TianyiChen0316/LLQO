--{"gen": "combine", "time": "/", "template": "1a", "dataset": "full_job", "rows": null}
SELECT min(mc.note) AS production_note,
min(t.title) AS movie_title,
min(t.production_year) AS movie_year
FROM movie_companies AS mc,
title AS t,
cast_info AS ci,
complete_cast AS cc,
comp_cast_type AS cct1,
comp_cast_type AS cct2,
company_name AS cn,
movie_info AS mi,
movie_link AS ml
WHERE (mc.note NOT LIKE '%(as Metro-Goldwyn-Mayer Pictures)%' AND (mc.note LIKE '%(co-production)%' OR mc.note LIKE '%(presents)%') AND cct1.kind IN ('cast', 'crew') AND cct2.kind = 'complete' AND cn.country_code <> '[us]' AND (cn.name LIKE '%Film%' OR cn.name LIKE '%Warner%') AND mi.info IN ('Sweden', 'Germany', 'Swedish', 'German') AND t.id = mc.movie_id AND t.id = ci.movie_id AND ml.movie_id = t.id AND mc.company_id = cn.id AND mi.movie_id = t.id AND t.id = cc.movie_id AND cct1.id = cc.subject_id AND cct2.id = cc.status_id AND ml.movie_id = mc.movie_id AND ml.movie_id = mi.movie_id AND mc.movie_id = mi.movie_id AND ml.movie_id = cc.movie_id AND mc.movie_id = cc.movie_id AND mi.movie_id = cc.movie_id AND ml.movie_id = ci.movie_id AND mc.movie_id = ci.movie_id AND ci.movie_id = cc.movie_id AND ci.movie_id = mi.movie_id)