-- ============================================================
-- PROJETO: CASA DO PASTEL
-- SISTEMA DE COMANDAS
-- BANCO DE DADOS: PASTELARIA
-- ============================================================

CREATE DATABASE pastelaria;

USE pastelaria;


-- ============================================================
-- TABELA: CATEGORIA
-- ============================================================

CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);


-- ============================================================
-- TABELA: PRODUTO
-- ============================================================

CREATE TABLE produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco_unitario DECIMAL(10,2) NOT NULL,
    ativo BOOLEAN NOT NULL,
    id_categoria INT NOT NULL,

    CONSTRAINT fk_produto_categoria
        FOREIGN KEY (id_categoria)
        REFERENCES categoria(id_categoria)
);


-- ============================================================
-- TABELA: CLIENTE
-- ============================================================

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    cpf VARCHAR(14)
);


-- ============================================================
-- TABELA: FUNCIONARIO
-- ============================================================

CREATE TABLE funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    cpf VARCHAR(14)
);


-- ============================================================
-- TABELA: MESA
-- ============================================================

CREATE TABLE mesa (
    id_mesa INT PRIMARY KEY AUTO_INCREMENT,
    numero_mesa INT NOT NULL,
    capacidade INT NOT NULL,
    status ENUM(
        'Livre',
        'Ocupada',
        'Reservada'
    ) NOT NULL
);


-- ============================================================
-- TABELA: COMANDA
-- ============================================================

CREATE TABLE comanda (
    id_comanda INT PRIMARY KEY AUTO_INCREMENT,
    numero_comanda INT NOT NULL,
    data_hora_abertura DATETIME NOT NULL,
    data_hora_fechamento DATETIME,
    status_comanda ENUM(
        'Aberta',
        'Paga',
        'Cancelada'
    ) NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,

    id_mesa INT,
    id_cliente INT,
    id_funcionario_abertura INT NOT NULL,

    CONSTRAINT fk_comanda_mesa
        FOREIGN KEY (id_mesa)
        REFERENCES mesa(id_mesa),

    CONSTRAINT fk_comanda_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),

    CONSTRAINT fk_comanda_funcionario
        FOREIGN KEY (id_funcionario_abertura)
        REFERENCES funcionario(id_funcionario)
);


-- ============================================================
-- TABELA: ITEM_COMANDA
-- ============================================================

CREATE TABLE item_comanda (
    id_item_comanda INT PRIMARY KEY AUTO_INCREMENT,
    quantidade INT NOT NULL,
    preco_unitario_momento DECIMAL(10,2) NOT NULL,
    observacao VARCHAR(255),

    status_preparo ENUM(
        'Pendente',
        'Pronto',
        'Entregue'
    ) NOT NULL,

    id_comanda INT NOT NULL,
    id_produto INT NOT NULL,

    CONSTRAINT fk_item_comanda
        FOREIGN KEY (id_comanda)
        REFERENCES comanda(id_comanda),

    CONSTRAINT fk_item_produto
        FOREIGN KEY (id_produto)
        REFERENCES produto(id_produto)
);


-- ============================================================
-- TABELA: PAGAMENTO
-- ============================================================

CREATE TABLE pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,

    forma_pagamento ENUM(
        'Dinheiro',
        'Cartao_Credito',
        'Cartao_Debito',
        'Pix'
    ) NOT NULL,

    valor_pago DECIMAL(10,2) NOT NULL,
    data_hora_pagamento DATETIME NOT NULL,

    id_comanda INT NOT NULL,

    CONSTRAINT fk_pagamento_comanda
        FOREIGN KEY (id_comanda)
        REFERENCES comanda(id_comanda)
);


-- ============================================================
-- FIM DO SCRIPT
-- ============================================================