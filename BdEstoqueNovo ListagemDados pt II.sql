DELETE FROM tbVenda
	WHERE idVenda = 7

SELECT * FROM tbVenda

--para a criação do banco ficar igual a da atvd proposta, tive que usar o delete para tal campo...


--LISTA PT II
--1.A soma das quantidades dos produtos em estoque que são do fabricante P&G
--2.A média de preços dos produtos que são da P&G
--3.A soma do preço dos produtos da Unilever
--4.O preço médio dos produtos da Bunge
--5.A soma das quantidades de todos os produtos que são da Bunge
--6.A quantidade média dos produtos da P&G no estoque
--7.O preço médio dos produtos no estoque cuja quantidade seja inferior a 200
--8.A quantidade média de todos os produtos no estoque que sejam fabricados pela Unilever
--9.O valor do produto mais barato
--10.Quantos itens no estoque são da unilever


SELECT SUM (quantProduto) as 'Soma da qtde prodts P&G' FROM tbProduto
	WHERE idFabricante = 2

SELECT AVG (valorProduto) as 'Média preço prodt P&G' FROM tbProduto 
	WHERE idFabricante = 2

SELECT SUM (valorProduto) as 'Soma preço prodt Unilever' FROM tbProduto 
	WHERE idFabricante = 1

SELECT AVG (valorProduto) as 'Média preço prodt Bunge' FROM tbProduto 
	WHERE idFabricante = 3

SELECT SUM (quantProduto) as 'Soma da qtde prodts Bunge' FROM tbProduto
	WHERE idFabricante = 3

SELECT AVG (quantProduto) as 'Média qtde prodts P&G' FROM tbProduto 
	WHERE idFabricante = 2

SELECT AVG (valorProduto) as 'Média preço prodt <200' FROM tbProduto 
	WHERE quantProduto <200

SELECT AVG (quantProduto) as 'Média qtde prodts Unilever' FROM tbProduto 
	WHERE idFabricante = 1

SELECT MIN (valorProduto) as 'Valor prodt mais barato' FROM tbProduto 

SELECT SUM (quantItensVendas) as 'Qtde itens Unilever' FROM tbItensVenda, tbFabricante
	WHERE idFabricante = 1