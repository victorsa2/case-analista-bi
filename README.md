# case-analista-bi (em desenvolvimento)
## Resolução de um case de analista de BI.

## A resolução será dividida em 2 partes:
 - Parte I: Resolução na visão de um Analista de BI;
 - Parte II: Resolução na visão de um engenheiro de dados, com o objetivo de me desafiar e botar em prática meus conhecimentos.

# Parte I
  - Utilizando a ajuda de um editor de sql online (https://sqliteonline.com/) para a execução das querys;
  - Após a junção da tab_lojas e tab_representante em "tabela_final", importamos no Power BI as bases csv (**tab_vendas**, **tab_produtos**);
  - Análise da qualidade dos dados:
     - Lojas distintas possuem o mesmo id_loj:
       ![image](https://github.com/victorsa2/case-analista-bi/assets/141345545/0f426ad7-0292-403f-a59a-260602b06d7c)

  ## OBS.: Alguns problemas na qualidade dos dados serão analisados na Parte II, já que fará mais sentido abordá-los na construção do DW, como por exemplo:
  Mesmas espécies de produto com códidos de produtos distintos, onde serão tratados como uma dimensão diferente. 

  - Tratamento dos dados das tabelas
     - Padronização dos nomes das tabelas e colunas
  - Antes de começar com o desenvolvimento do Dashboard, vamos começar com o protótipo da Home e a estrutura das próximas abas com o Figma;
