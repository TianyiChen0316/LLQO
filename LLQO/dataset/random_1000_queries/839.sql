--{"gen": "erase", "time": "/", "template": "8b", "dataset": "full_job", "rows": null}
SELECT min(an.name) AS acress_pseudonym,
min(t.title) AS japanese_anime_movie
FROM aka_name AS an,
cast_info AS ci,
movie_companies AS mc,
name AS n,
role_type AS rt,
title AS t
WHERE (ci.note = '(voice: English version)' AND mc.note LIKE '%(Blu-ray)%' AND mc.note NOT LIKE '%(USA)%' AND (mc.note LIKE '%(2006)%' OR mc.note LIKE '%(2007)%') AND n.name LIKE '%Yo%' AND n.name LIKE '%Tim%' AND rt.role = 'actress' AND t.production_year BETWEEN 2006 AND 2007 AND (t.title LIKE 'One Piece%' OR t.title LIKE 'Dragon Ball Z%') AND an.person_id = n.id AND n.id = ci.person_id AND ci.movie_id = t.id AND t.id = mc.movie_id AND ci.role_id = rt.id AND an.person_id = ci.person_id AND ci.movie_id = mc.movie_id)