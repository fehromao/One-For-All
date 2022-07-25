SELECT 
    COUNT(c.nome) AS cancoes,
    COUNT(DISTINCT (ar.artista_id)) AS artistas,
    COUNT(DISTINCT(c.album_id)) AS albuns
FROM
    SpotifyClone.cancoes AS c
        JOIN
    SpotifyClone.artistas AS ar ON c.artista_id = ar.artista_id;
