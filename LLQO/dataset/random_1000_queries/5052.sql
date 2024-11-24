--{"gen": "erase", "time": "/", "template": "15d", "dataset": "full_job", "rows": null}
SELECT min(at.title) AS aka_title,
min(t.title) AS internet_movie_title
FROM aka_title AS at,
company_name AS cn,
company_type AS ct,
movie_companies AS mc,
movie_info AS mi,
movie_keyword AS mk,
title AS t
WHERE (cn.country_code = '[de]' AND mi.note LIKE '%internet%' AND t.production_year BETWEEN 2008 AND 2014 AND t.id = at.movie_id AND t.id = mi.movie_id AND t.id = mk.movie_id AND t.id = mc.movie_id AND mk.movie_id = mi.movie_id AND mk.movie_id = mc.movie_id AND mk.movie_id = at.movie_id AND mi.movie_id = mc.movie_id AND mi.movie_id = at.movie_id AND mc.movie_id = at.movie_id AND cn.id = mc.company_id AND ct.id = mc.company_type_id)