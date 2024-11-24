--{"gen": "erase", "time": "/", "template": "9d", "dataset": "full_job", "rows": null}
SELECT min(an.name) AS alternative_name,
min(t.title) AS american_movie
FROM aka_name AS an,
cast_info AS ci,
company_name AS cn,
movie_companies AS mc,
role_type AS rt,
title AS t
WHERE (ci.note IN ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)') AND cn.country_code = '[us]' AND rt.role = 'writer' AND ci.movie_id = t.id AND t.id = mc.movie_id AND ci.movie_id = mc.movie_id AND mc.company_id = cn.id AND ci.role_id = rt.id AND an.person_id = ci.person_id)
