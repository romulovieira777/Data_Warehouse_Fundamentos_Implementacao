/* Criando um Banco de Dados */
CREATE DATABASE
	DWTESTE
GO


/* Escolhendo um Banco de Dados */
USE
	DWTESTE
GO


/* Criando uma Tabela */
CREATE TABLE D_PRODUTO(
	IDPRODUTO INT IDENTITY PRIMARY KEY,
	NOME_PRODUTO VARCHAR(255),
	CATEGORIA VARCHAR(255),
	MARCA VARCHAR(50)
)
GO


CREATE TABLE D_LOJA(
	IDLOJA INT IDENTITY PRIMARY KEY,
	NOME_LOJA VARCHAR(255)
)
GO


CREATE TABLE D_DATA(
	IDDATA INT IDENTITY PRIMARY KEY,
	DATA_VENDA VARCHAR(255),
	SEMESTRE INT,
	ANO INT
)
GO


CREATE TABLE F_VENDA(
	IDPRODUTO INT,
	IDLOJA INT,
	IDDATA INT,
	VALOR INT,
	QUANTIDADE INT,
	CONSTRAINT FK_IDPROD FOREIGN KEY (IDPRODUTO) REFERENCES D_PRODUTO(IDPRODUTO),
	CONSTRAINT FK_LOJA FOREIGN KEY (IDLOJA) REFERENCES D_LOJA(IDLOJA),
	CONSTRAINT FK_IDDATA FOREIGN KEY (IDDATA) REFERENCES D_DATA(IDDATA)
)
GO


/* Inserindo Dados nas Tabelas */
INSERT INTO D_LOJA (
	Nome_loja
) VALUES (
	'Central'
),
(
	'Baixada'
);


INSERT INTO D_PRODUTO (
	Nome_produto, 
	Categoria, 
	Marca
) VALUES(
	'Geladeira',
	'Eletrodoméstico',
	'Frozen'
),
(	
	'Celular',
	'Telefonia',
	'Radar'
),
(
	'Pneu',
	'Automotivo',
	'Frota'
);


INSERT INTO D_DATA (
	Data_venda,
	Semestre, 
	Ano
) VALUES (
	'01/02/2015',
	1,
	2015
),
(
	'10/07/2017',
	2,
	2017
),
(
	'06/11/2018',
	2,
	2018
),
(
	'25/12/2017',
	2,
	2017
),
(
	'01/02/2017',
	1,
	2017
),
(
	'06/11/2018',
	2,
	2018
),
(
	'09/03/2016',
	1,
	2016
)
GO


INSERT INTO F_VENDA (
	IdLoja,
	IdProduto, 
	IdData,
	Valor,
	Quantidade
) VALUES (
	1,
	1,
	1,
	1000,
	2
),
(
	2,
	1,
	2,
	1000,
	1
),
(
	1,
	1,
	3,
	1000,
	1
),
(
	2,
	2,
	4,
	700,
	3
),
(
	2,
	2,
	4,
	700,
	1
),
(
	1,
	3,
	5,
	150,
	4
),
(
	1,
	3,
	6,
	150,
	4
),
(
	2,
	3,
	5,
	150,
	2
),
(
	2,
	3,
	7,
	150,
	1
)
GO