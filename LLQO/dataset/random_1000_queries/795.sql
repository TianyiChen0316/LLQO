--{"gen": "erase", "time": "/", "template": "9a", "dataset": "full_job", "rows": null}
SELECT min(an.name) AS alternative_name,
min(chn.name) AS character_name,
min(t.title) AS movie
FROM aka_name AS an,
char_name AS chn,
cast_info AS ci,
company_name AS cn,
movie_companies AS mc,
name AS n,
title AS t
WHERE (ci.note IN ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)') AND cn.country_code = '[us]' AND mc.note IS NOT NULL AND (mc.note LIKE '%(USA)%' OR mc.note LIKE '%(worldwide)%') AND n.gender = 'f' AND n.name LIKE 'B%' AND t.production_year BETWEEN 2005 AND 2015 AND ci.movie_id = t.id AND t.id = mc.movie_id AND ci.movie_id = mc.movie_id AND mc.company_id = cn.id AND n.id = ci.person_id AND chn.id = ci.person_role_id AND an.person_id = n.id AND an.person_id = ci.person_id)
