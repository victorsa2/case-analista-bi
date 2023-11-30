# Parte I
  - Utilizando a ajuda de um editor de sql online (https://sqliteonline.com/) para a execução das querys;
  - Após a junção da tab_lojas e tab_representante em "tabela_final", importamos no Power BI as bases csv (**tab_vendas**, **tab_produtos**);
  - Análise da qualidade dos dados:
     - Lojas distintas possuem o mesmo id_loj:
       
       ![image](https://github.com/victorsa2/case-analista-bi/assets/141345545/0f426ad7-0292-403f-a59a-260602b06d7c)

     - Lojas com o mesmo nome, mesmo id, mas com tamanhos diferentes (o que em teoria indicam que não são a mesma loja):
       ![image](https://github.com/victorsa2/case-analista-bi/assets/141345545/707b49d6-913c-4e3a-bc72-baf5540e8466)

       Devido a esse erro, iremos excluir uma das linhas, já que isso pode ter sido um erro de banco de dados, que deve ser corrigido por lá (abordarei esse erro na Parte II).


       ### OBS.: Alguns problemas na qualidade dos dados serão analisados na Parte II, já que fará mais sentido abordá-los na construção do DW, como por exemplo:
                Mesmas espécies de produto com códidos de produtos distintos, onde serão com descrições dintintas e tratados como uma dimensão diferente.
       ![image](https://github.com/victorsa2/case-analista-bi/assets/141345545/5bde1517-e344-4827-9a01-cd04953f60ff)

  ##
  - Tratamento dos dados das tabelas
     - Padronização dos nomes das tabelas e colunas;
     - Remoção de linhas duplicadas (id_loja) da tab_lojas;
  - Antes de começar com o desenvolvimento do Dashboard, vamos começar com o protótipo da Home e a estrutura das próximas abas com o Figma;
