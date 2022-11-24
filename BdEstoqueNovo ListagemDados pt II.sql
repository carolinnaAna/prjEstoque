DELETE FROM tbVenda
	WHERE idVenda = 7

SELECT * FROM tbVenda

--para a cria��o do banco ficar igual a da atvd proposta, tive que usar o delete para tal campo...


--LISTA PT II
--1.A soma das quantidades dos produtos em estoque que s�o do fabricante P&G
--2.A m�dia de pre�os dos produtos que s�o da P&G
--3.A soma do pre�o dos produtos da Unilever
--4.O pre�o m�dio dos produtos da Bunge
--5.A soma das quantidades de todos os produtos que s�o da Bunge
--6.A quantidade m�dia dos produtos da P&G no estoque
--7.O pre�o m�dio dos produtos no estoque cuja quantidade seja inferior a 200
--8.A quantidade m�dia de todos os produtos no estoque que sejam fabricados pela Unilever
--9.O valor do produto mais barato
--10.Quantos itens no estoque s�o da unilever


SELECT SUM (quantProduto) as 'Soma da qtde prodts P&G' FROM tbProduto
	WHERE idFabricante = 2

SELECT AVG (valorProduto) as 'M�dia pre�o prodt P&G' FROM tbProduto 
	WHERE idFabricante = 2

SELECT SUM (valorProduto) as 'Soma pre�o prodt Unilever' FROM tbProduto 
	WHERE idFabricante = 1

SELECT AVG (valorProduto) as 'M�dia pre�o prodt Bunge' FROM tbProduto 
	WHERE idFabricante = 3

SELECT SUM (quantProduto) as 'Soma da qtde prodts Bunge' FROM tbProduto
	WHERE idFabricante = 3

SELECT AVG (quantProduto) as 'M�dia qtde prodts P&G' FROM tbProduto 
	WHERE idFabricante = 2

SELECT AVG (valorProduto) as 'M�dia pre�o prodt <200' FROM tbProduto 
	WHERE quantProduto <200

SELECT AVG (quantProduto) as 'M�dia qtde prodts Unilever' FROM tbProduto 
	WHERE idFabricante = 1

SELECT MIN (valorProduto) as 'Valor prodt mais barato' FROM tbProduto 

SELECT SUM (quantItensVendas) as 'Qtde itens Unilever' FROM tbItensVenda, tbFabricante
	WHERE idFabricante = 1