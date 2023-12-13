-- Adicionando as colunas de id identificadas
ALTER TABLE tab_lojas
ADD 
	id_rep VARCHAR(10),
	id_loja VARCHAR(3);
 
-- Tratando os dados
UPDATE tab_lojas
SET
	tab_lojas.id_rep = RIGHT(SUBSTRING(nome_loja, Charindex('-', nome_loja), 9), 7),
	id_loja = SUBSTRING(nome_loja, 1, 3),
    nome_loja = SUBSTRING(nome_loja, 4, Charindex('-', nome_loja + '-') - 4); 

-- Criando a tabela final, trazendo os dados da tab_representantes
SELECT
	CONVERT(VARCHAR(50), loj.nome_loja) AS nome_loja,
    CONVERT(VARCHAR(17), loj.cnpj_loja) as cnpj_loja,
    CONVERT(VARCHAR(1), loj.categoria) AS categoria,
    CONVERT(VARCHAR(4), loj.tamanho) as tamanho,
    CONVERT(VARCHAR(30), loj.cidade) as cidade,
    CONVERT(VARCHAR(55), loj.endereco) as endereco,
    CONVERT(VARCHAR(20), loj.estado) as estado, 
    CONVERT(VARCHAR(12), loj.regiao) as regiao,
    CONVERT(VARCHAR(2), loj.uf) AS uf,
    CONVERT(VARCHAR(10), loj.id_rep) as id_rep,
    CONVERT(VARCHAR(25), rep.nome_rep) as nome_rep,
    CONVERT(VARCHAR(25), rep.nome_ger) as nome_ger,
    CONVERT(VARCHAR(25), rep.nome_reg) as nome_reg

INTO 
	tabela_final

FROM
	tab_lojas as loj

LEFT JOIN
    tab_representantes rep ON loj.id_rep = rep.id_rep;