--{"gen": "erase", "time": "/", "template": "generated-8cc1cbe0-f559-454d-9d47-8ef74173c48e", "dataset": "full_job", "rows": null}
SELECT min(mi.info) AS movie_budget,
min(mi_idx.info) AS movie_votes,
min(n.name) AS writer
FROM cast_info AS ci,
info_type AS it2,
keyword AS k,
movie_companies AS mc,
movie_info AS mi,
movie_info_idx AS mi_idx,
movie_keyword AS mk,
name AS n
WHERE (ci.note IN ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)') AND it2.info = 'votes' AND k.keyword IN ('murder', 'violence', 'blood', 'gore', 'death', 'female-nudity', 'hospital') AND mc.note LIKE '%(Blu-ray)%' AND mi.info IN ('Horror', 'Thriller') AND n.gender = 'm' AND ci.movie_id = mi.movie_id AND ci.movie_id = mi_idx.movie_id AND ci.movie_id = mk.movie_id AND ci.movie_id = mc.movie_id AND mi.movie_id = mi_idx.movie_id AND mi.movie_id = mk.movie_id AND mi.movie_id = mc.movie_id AND mi_idx.movie_id = mk.movie_id AND mi_idx.movie_id = mc.movie_id AND mk.movie_id = mc.movie_id AND n.id = ci.person_id AND it2.id = mi_idx.info_type_id AND k.id = mk.keyword_id)