CREATE DATABASE  bdEstoqueNovo

USE bdEstoqueNovo

CREATE TABLE tbCliente(
		idCliente INT PRIMARY KEY IDENTITY (1,1)
		,nomeCliente VARCHAR(60) NOT NULL
		,cpfCliente CHAR(20) NOT NULL
		,emailCliente VARCHAR(70) NOT NULL
		,sexoCliente VARCHAR (10) NOT NULL
		,dataNascCliente SMALLDATETIME 
)

CREATE TABLE tbVenda(
		idVenda INT PRIMARY KEY IDENTITY (1,1)
		,dataVenda DATE 
		,valorTotalVenda MONEY NOT NULL
		,idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
)

CREATE TABLE tbFabricante(
		idFabricante INT PRIMARY KEY IDENTITY (1,1)
		,nomeFabricante VARCHAR(60) NOT NULL
)

CREATE TABLE tbFornecedor(
		idFornecedor INT PRIMARY KEY IDENTITY (1,1)
		,nomeFornecedor VARCHAR(60) NOT NULL
		,contato VARCHAR(60) NOT NULL
)

CREATE TABLE tbProduto(
		idProduto INT PRIMARY KEY IDENTITY (1,1)
		,descProduto VARCHAR(70) NOT NULL
		,valorProduto MONEY NOT NULL
		,quantProduto INT NOT NULL
		,idFabricante INT FOREIGN KEY REFERENCES tbFabricante (idFabricante)
		,idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (idFornecedor)
)

CREATE TABLE tbItensVenda(
		idItensVenda INT PRIMARY KEY IDENTITY (1,1)
		,idVenda INT FOREIGN KEY REFERENCES tbVenda (idVenda)
		,idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
		,quantItensVendas INT NOT NULL
		,subTotalItensVendas MONEY NOT NULL
)