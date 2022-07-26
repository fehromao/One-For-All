SELECT 
    MIN(valor) AS faturamento_minimo,
    MAX(valor) AS faturamento_maximo,
    ROUND(AVG(valor), 2) AS faturamento_medio,
    SUM(valor) AS faturamento_total
FROM
    SpotifyClone.planos AS p
        INNER JOIN
    SpotifyClone.usuarios AS u ON p.plano_id = u.plano_id;