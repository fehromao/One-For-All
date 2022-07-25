SELECT 
    u.nome AS usuario,
    COUNT(q.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(h.duracao_segundos / 60), 2) AS total_minutos
FROM
    SpotifyClone.usuarios AS u
        INNER JOIN
    SpotifyClone.historico_reproducao AS q ON u.usuario_id = q.usuario_id
        INNER JOIN
    SpotifyClone.cancoes AS h ON q.cancao_id = h.cancao_id
GROUP BY u.nome
;