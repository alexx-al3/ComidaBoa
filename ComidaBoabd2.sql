-- =========================
-- TABELA PRODUTO
-- =========================
CREATE TABLE Produto (
    idProduto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(8,2) NOT NULL CHECK (preco > 0),
    idRestaurante INT NOT NULL,
    FOREIGN KEY (idRestaurante) REFERENCES Restaurante(idRestaurante)
);

-- =========================
-- TABELA ENTREGADOR
-- =========================
CREATE TABLE Entregador (
    idEntregador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

-- =========================
-- TABELA PEDIDO
-- =========================
CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY AUTO_INCREMENT,
    data DATETIME NOT NULL,
    status VARCHAR(50),
    idCliente INT NOT NULL,
    idEntregador INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idEntregador) REFERENCES Entregador(idEntregador)
);

-- =========================
-- TABELA ITEM_PEDIDO
-- =========================
CREATE TABLE Item_Pedido (
    idPedido INT,
    idProduto INT,
    quantidade INT NOT NULL CHECK (quantidade > 0),
    PRIMARY KEY (idPedido, idProduto),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);