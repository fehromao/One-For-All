SELECT 
    nome AS cancao, COUNT(h.cancao_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS c
        INNER JOIN
    SpotifyClone.historico_reproducao AS h ON c.cancao_id = h.cancao_id
GROUP BY nome
ORDER BY reproducoes DESC , nome
LIMIT 2
;