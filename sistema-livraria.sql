CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeCliente TEXT NOT NULL,
    emailCliente TEXT UNIQUE NOT NULL
);

CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClienteID INTEGER,
    NomeLivro TEXT NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID) ON DELETE CASCADE
);

-- Criar a tabela Clientes
CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT NOT NULL,
    Email TEXT NOT NULL UNIQUE,
    Telefone TEXT
);

-- Inserir dados na tabela Clientes
INSERT INTO Clientes (Nome, Email, Telefone) VALUES
('Maria Silva', 'maria@email.com', '(11) 98765-4321'),
('João Santos', 'joao@email.com', '(21) 91234-5678'),
('Ana Oliveira', 'ana@email.com', '(31) 99876-5432');

-- Consultar todos os dados inseridos
SELECT * FROM Clientes;

CREATE TABLE compras (
    id_compra INTEGER PRIMARY KEY,
    id_cliente INTEGER,
    id_livro INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
);
