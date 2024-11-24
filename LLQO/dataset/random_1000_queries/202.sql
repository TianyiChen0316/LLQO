--{"gen": "combine", "time": "/", "template": "21a", "dataset": "full_job", "rows": null}
SELECT min(cn.name) AS company_name,
min(lt.link) AS link_type,
min(t.title) AS western_follow_up
FROM company_name AS cn,
company_type AS ct,
keyword AS k,
link_type AS lt,
movie_companies AS mc,
movie_info AS mi,
movie_keyword AS mk,
movie_link AS ml,
title AS t,
char_name AS chn,
cast_info AS ci,
name AS n
WHERE (cn.country_code <> '[pl]' AND (cn.name LIKE '%Film%' OR cn.name LIKE '%Warner%') AND ct.kind = 'production companies' AND k.keyword = 'sequel' AND lt.link LIKE '%follow%' AND mc.note IS NULL AND mi.info IN ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German') AND t.production_year BETWEEN 1950 AND 2000 AND ci.note LIKE '%(uncredited)%' AND ci.note LIKE '%(uncredited)%' AND lt.id = ml.link_type_id AND ml.movie_id = t.id AND t.id = mk.movie_id AND mk.keyword_id = k.id AND t.id = mc.movie_id AND mc.company_type_id = ct.id AND mc.company_id = cn.id AND mi.movie_id = t.id AND ml.movie_id = mk.movie_id AND ml.movie_id = mc.movie_id AND mk.movie_id = mc.movie_id AND ml.movie_id = mi.movie_id AND mk.movie_id = mi.movie_id AND mc.movie_id = mi.movie_id AND t.id = ci.movie_id AND ci.movie_id = mc.movie_id AND chn.id = ci.person_role_id AND n.id = ci.person_id AND ci.movie_id = mk.movie_id AND ml.movie_id = ci.movie_id AND ci.movie_id = mi.movie_id)
