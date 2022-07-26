SELECT 
    ar.nome AS artista,
    al.nome AS album,
    COUNT(s.usuario_id) AS seguidores
FROM
    SpotifyClone.artistas AS ar
        INNER JOIN
    SpotifyClone.albuns AS al ON ar.artista_id = al.artista_id
        INNER JOIN
    SpotifyClone.seguindo_artistas AS s ON al.artista_id = s.artista_id
GROUP BY ar.nome , al.nome
ORDER BY seguidores DESC, artista, album
;
