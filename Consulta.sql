SELECT 
    l.IdEntrada,
    l.Nivel,
    l.FkSistema,
    s.DescSistema,
    l.Mensagem,
    l.DatHora,
    CASE WHEN l.Nivel = 'ERROR' THEN 1 ELSE 0 END AS TemErro,
    'Desenv' AS Ambiente
FROM logslai.logs_app_lai_desenv l
LEFT JOIN logslai.sistemas_lai s ON l.FkSistema = s.IdSistema

UNION ALL

SELECT 
    l.IdEntrada,
    l.Nivel,
    l.FkSistema,
    s.DescSistema,
    l.Mensagem,
    l.DatHora,
    CASE WHEN l.Nivel = 'ERROR' THEN 1 ELSE 0 END AS TemErro,
    'Homologa' AS Ambiente
FROM logslai.logs_app_lai_homologa l
LEFT JOIN logslai.sistemas_lai s ON l.FkSistema = s.IdSistema

UNION ALL

SELECT 
    l.IdEntrada,
    l.Nivel,
    l.FkSistema,
    s.DescSistema,
    l.Mensagem,
    l.DatHora,
    CASE WHEN l.Nivel = 'ERROR' THEN 1 ELSE 0 END AS TemErro,
    'Producao' AS Ambiente
FROM logslai.logs_app_lai l
LEFT JOIN logslai.sistemas_lai s ON l.FkSistema = s.IdSistema

ORDER BY DatHora DESC