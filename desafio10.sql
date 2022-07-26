SELECT 
    c.nome AS nome, COUNT(h.cancao_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS c
        INNER JOIN
    SpotifyClone.historico_reproducao AS h ON c.cancao_id = h.cancao_id
        INNER JOIN
    SpotifyClone.usuarios AS u ON h.usuario_id = u.usuario_id
WHERE
    (u.plano_id = 1 OR u.plano_id = 4)
GROUP BY c.nome
ORDER BY c.nome;

