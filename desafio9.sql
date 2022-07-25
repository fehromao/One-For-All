SELECT 
    h.usuario_id AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico_reproducao AS h
        INNER JOIN
    SpotifyClone.usuarios AS u ON h.usuario_id = u.usuario_id
WHERE
    h.usuario_id = 3
GROUP BY h.usuario_id
;