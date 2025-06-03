# PainelLogsLai

Este repositório contém a consulta SQL para montar um painel de monitoramento de logs das aplicações LAI. O objetivo é facilitar a visualização de logs de diferentes ambientes (desenvolvimento, homologação e produção), destacando erros para análise rápida.

---

## Objetivo

Criar um painel (Power BI) que:

- Traga logs das tabelas `logs_app_lai_desenv`, `logs_app_lai_homologa` e `logs_app_lai`.
- Una os dados dessas três tabelas em uma única visão.
- Destaque os logs com nível `ERROR`.
- Permita filtrar os logs por sistema e ambiente.

---

## Estrutura do Repositório

- `consulta_logs.sql` — arquivo com a query SQL que une as três tabelas de logs e faz o join com a tabela `sistemas_lai` para trazer o nome do sistema.

---

## Como contribuir

1. **Entenda a consulta SQL**

   - A consulta utiliza `UNION ALL` para juntar as três tabelas.
   - Adiciona uma coluna `Ambiente` para identificar o ambiente de origem.
   - Faz join com `sistemas_lai` para trazer o nome descritivo do sistema.
   - Cria uma coluna `TemErro` que indica se o log é de erro (1) ou não (0).

2. **Importar no Power BI**

   - Utilize a consulta SQL no Power BI para carregar os dados.
   - Crie visualizações para facilitar a análise (tabelas, filtros, formatação condicional).
   - Utilize os campos `Nivel`, `TemErro`, `Ambiente` e `DescSistema` para filtros e destaques.
   - Faça como achar melhor, pode fazer mudanças também.

3. **Melhorias possíveis**

   - Criar gráficos que mostrem a quantidade de erros por sistema e por ambiente.
   - Adicionar filtros por período de tempo.
   - Implementar alertas ou notificações para erros críticos.
   - Otimizar a consulta SQL para trazer apenas os dados necessários.

---

## Como executar a consulta SQL

Copie o conteúdo do arquivo `consulta.sql` e execute no banco de dados onde as tabelas estão hospedadas para verificar os resultados.

---

## Contato

Para dúvidas ou sugestões, abra uma issue neste repositório ou entre em contato diretamente.

---

## Referências

- Tabelas de logs: `logs_app_lai_desenv`, `logs_app_lai_homologa`, `logs_app_lai`.
- Tabela de sistemas: `sistemas_lai`.
