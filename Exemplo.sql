drop database exemplo_wiews;
Create database exemplo_wiews;
use exemplo_wiews;

CREATE table clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100),
    estado CHAR(2)
);


Create table pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    produto VARCHAR(100),
    valor DECIMAL(10, 2),
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);


insert into clientes (nome, cidade, estado) values
('João Silva', 'São Paulo', 'SP'),
('Maria Oliveira', 'Rio de Janeiro', 'RJ'),
('Carlos Souza', 'Campinas', 'SP');


insert into pedidos (cliente_id, produto, valor, data_pedido) values
(1, 'Notebook', 3500.00, '2025-05-01'),
(2, 'Mouse', 80.00, '2023-05-03'),
(1, 'Tablet', 120.00, '2023-05-02'),
(3, 'Monitor', 800.00, '2023-05-04');


CREATE VIEW relatorio_pedidos AS
SELECT

    c.nome AS cliente,
    c.cidade,
    p.produto,
    p.valor,
    p.data_pedido
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;


INSERT into clientes (nome, cidade, estado) values
('Ana', 'Marília', 'SP');

INSERT into pedidos (cliente_id, produto, valor, data_pedido) values
(4, 'SSD', 270.00, '2025-06-01');

SELECT * FROM relatorio_pedidos;


/*Insert into relatorios_pedidos values ('Ana','Marília','SSD',270.00,'2025-06-01');

/*CREATE VIEW pedido_simples AS
SELECT id, cliente_id, produto, valor data_pedido
FROM pedidos;

INSERT INTO pedido_simples VALUES (cliente_id, produto, valor, data_pedido )
values (3, 'SSD', 270.00, '2025-06-01');

SELECT * FROM pedido_simples;

