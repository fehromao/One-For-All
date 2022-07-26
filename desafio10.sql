SELECT 
    c.nome AS nome,
    COUNT(DISTINCT (h.usuario_id)) AS reproducoes
FROM
    SpotifyClone.cancoes AS c
        INNER JOIN
    SpotifyClone.historico_reproducao AS h ON c.cancao_id = h.cancao_id
GROUP BY c.nome
ORDER BY c.nome;