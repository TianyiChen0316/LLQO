--{"gen": "combine", "time": "/", "template": "generated-85cb2a40-b07e-4503-b1cc-dcf047635597", "dataset": "full_job", "rows": null}
SELECT min(n.name) AS voicing_actress_name
FROM aka_name AS an,
cast_info AS ci,
movie_companies AS mc,
movie_info AS mi,
name AS n,
role_type AS rt,
company_name AS cn,
keyword AS k,
movie_keyword AS mk,
title AS t,
company_type AS ct,
info_type AS it
WHERE (ci.note IN ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)') AND mi.info IS NOT NULL AND (mi.info LIKE 'Japan:%201%' OR mi.info LIKE 'USA:%201%') AND n.gender = 'f' AND n.name LIKE 'B%' AND rt.role = 'actress' AND cn.country_code = '[us]' AND k.keyword = 'character-name-in-title' AND ct.kind = 'production companies' AND mc.movie_id = ci.movie_id AND mc.movie_id = mi.movie_id AND mi.movie_id = ci.movie_id AND n.id = ci.person_id AND rt.id = ci.role_id AND n.id = an.person_id AND ci.person_id = an.person_id AND cn.id = mc.company_id AND mc.movie_id = t.id AND t.id = mk.movie_id AND mk.keyword_id = k.id AND mc.movie_id = mk.movie_id AND t.id = ci.movie_id AND t.id = mi.movie_id AND ci.movie_id = mk.movie_id AND mk.movie_id = mi.movie_id AND ct.id = mc.company_type_id AND it.id = mi.info_type_id)
