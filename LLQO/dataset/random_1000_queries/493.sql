--{"gen": "erase", "time": "/", "template": "25c", "dataset": "full_job", "rows": null}
SELECT min(mi.info) AS movie_budget,
min(mi_idx.info) AS movie_votes
FROM cast_info AS ci,
info_type AS it1,
info_type AS it2,
movie_info AS mi,
movie_info_idx AS mi_idx,
movie_keyword AS mk
WHERE (ci.note IN ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)') AND it1.info = 'genres' AND it2.info = 'votes' AND mi.info IN ('Horror', 'Action', 'Sci-Fi', 'Thriller', 'Crime', 'War') AND ci.movie_id = mi.movie_id AND ci.movie_id = mi_idx.movie_id AND ci.movie_id = mk.movie_id AND mi.movie_id = mi_idx.movie_id AND mi.movie_id = mk.movie_id AND mi_idx.movie_id = mk.movie_id AND it1.id = mi.info_type_id AND it2.id = mi_idx.info_type_id)
