--{"gen": "erase", "time": "/", "template": "19a", "dataset": "full_job", "rows": null}
SELECT min(t.title) AS voiced_movie
FROM aka_name AS an,
char_name AS chn,
cast_info AS ci,
company_name AS cn,
movie_companies AS mc,
movie_info AS mi,
title AS t
WHERE (ci.note IN ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)') AND cn.country_code = '[us]' AND mc.note IS NOT NULL AND (mc.note LIKE '%(USA)%' OR mc.note LIKE '%(worldwide)%') AND mi.info IS NOT NULL AND (mi.info LIKE 'Japan:%200%' OR mi.info LIKE 'USA:%200%') AND t.production_year BETWEEN 2000 AND 2010 AND t.id = mi.movie_id AND t.id = mc.movie_id AND t.id = ci.movie_id AND mc.movie_id = ci.movie_id AND mc.movie_id = mi.movie_id AND mi.movie_id = ci.movie_id AND cn.id = mc.company_id AND ci.person_id = an.person_id AND chn.id = ci.person_role_id)
