SELECT 
    (u.nome) AS usuario,
    CASE
        WHEN MAX(YEAR(h.data_reproducao)) >= 2021 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS condicao_usuario
FROM
    SpotifyClone.usuarios AS u
        INNER JOIN
    SpotifyClone.historico_reproducao AS h ON u.usuario_id = h.usuario_id
GROUP BY u.nome;


