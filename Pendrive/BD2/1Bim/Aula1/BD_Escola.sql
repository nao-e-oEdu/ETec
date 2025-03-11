CREATE DATABASE BD_Escola;

USE BD_Escola;

CREATE TABLE tblalunos(
	codaluno INT IDENTITY PRIMARY KEY,
	nome VARCHAR(50),
	endereco VARCHAR(50),
	telefone VARCHAR(15),
	nascimento DATE,
	pai VARCHAR(50),
	mae VARCHAR(50),
	responsavel VARCHAR(50)
);

CREATE TABLE tblprofessor (
	codprofessor INT IDENTITY PRIMARY KEY,
	nome VARCHAR(50),
	endereco VARCHAR(50)
);

CREATE TABLE tblcursos (
	codcurso INT IDENTITY PRIMARY KEY,
	nomecurso VARCHAR(20),
	codprofessor INT FOREIGN KEY REFERENCES tblprofessor(codprofessor)
);

CREATE TABLE tblnotas (
	codaluno INT FOREIGN KEY REFERENCES tblalunos(codaluno),
	codcurso INT FOREIGN KEY REFERENCES tblcursos(codcurso),
	nota DECIMAL(3, 1),
	ano INT,
	bimestre INT,
	observacao TEXT
);

INSERT INTO tblprofessor (nome, endereco) VALUES 
('Carlos Silva', 'Rua das Flores, 123'),
('Fernanda Oliveira', 'Av. Brasil, 456'),
('Jo�o Pereira', 'Rua dos L�rios, 789'),
('Maria Souza', 'Rua do Sol, 101'),
('Lucas Costa', 'Av. S�o Jo�o, 202'),
('Beatriz Martins', 'Rua das Pedras, 303');

INSERT INTO tblalunos (nome, endereco, telefone, nascimento, pai, mae, responsavel) VALUES 
('Ana Costa', 'Rua das Ac�cias, 10', '(11) 98765-4321', '2007-04-15', 'Carlos Costa', 'Juliana Costa', 'Carlos Costa'),
('Pedro Santos', 'Rua do Paraiso, 15', '(11) 99876-5432', '2008-03-22', 'Roberto Santos', 'Marcia Santos', 'Roberto Santos'),
('Lucas Pereira', 'Av. Jo�o XXIII, 25', '(11) 96789-1234', '2007-11-10', 'Fernando Pereira', 'Patr�cia Pereira', 'Fernando Pereira'),
('Juliana Alves', 'Rua da Paz, 100', '(11) 95789-4321', '2006-05-14', 'Rog�rio Alves', 'Helena Alves', 'Rog�rio Alves'),
('Marcos Silva', 'Rua das Palmeiras, 55', '(11) 93987-6543', '2007-07-30', 'Ricardo Silva', 'Cl�udia Silva', 'Ricardo Silva'),
('Gabriela Rodrigues', 'Av. do Trabalhador, 12', '(11) 99888-1234', '2008-06-12', 'Jos� Rodrigues', 'Patr�cia Rodrigues', 'Jos� Rodrigues'),
('Luana Oliveira', 'Rua dos Coqueiros, 32', '(11) 91765-4321', '2007-09-28', 'Maur�cio Oliveira', 'Fernanda Oliveira', 'Maur�cio Oliveira'),
('Ricardo Lima', 'Rua da Liberdade, 80', '(11) 96654-7890', '2006-12-20', 'Eduardo Lima', 'Mariana Lima', 'Eduardo Lima'),
('Fernanda Costa', 'Rua das Ac�cias, 25', '(11) 99675-1234', '2008-02-18', 'Paulo Costa', 'Marta Costa', 'Paulo Costa'),
('Thiago Gomes', 'Av. S�o Paulo, 50', '(11) 95564-9876', '2007-04-02', 'Ailton Gomes', 'L�cia Gomes', 'Ailton Gomes'),
('Amanda Martins', 'Rua da Vit�ria, 60', '(11) 97788-6543', '2008-01-15', 'Carlos Martins', 'Patr�cia Martins', 'Carlos Martins'),
('Paulo Santos', 'Rua Jos� Bonif�cio, 88', '(11) 96877-5432', '2007-08-05', 'Ricardo Santos', 'Maria Santos', 'Ricardo Santos'),
('Vanessa Silva', 'Rua das Orqu�deas, 42', '(11) 93456-7890', '2008-04-12', 'Bruno Silva', 'Ana Silva', 'Bruno Silva'),
('Eduardo Pereira', 'Rua das Margaridas, 70', '(11) 93345-6789', '2007-10-19', 'Gilson Pereira', 'Patr�cia Pereira', 'Gilson Pereira'),
('Isabela Souza', 'Rua do Cedro, 90', '(11) 94567-1234', '2008-09-09', 'Alexandre Souza', 'Raquel Souza', 'Alexandre Souza');

INSERT INTO tblcursos (nomecurso, codprofessor) VALUES 
('Matem�tica', 1),
('Portugu�s', 2),
('Hist�ria', 3),
('Ci�ncias', 4);

INSERT INTO tblnotas (codaluno, codcurso, nota, ano, bimestre, observacao) VALUES
(1, 1, 8.5, 2025, 1, 'Boa evolu��o no conte�do, mas precisa melhorar em resolu��o de problemas.'),
(2, 2, 7.0, 2025, 1, 'Desempenho satisfat�rio, mas pode se dedicar mais nas reda��es.'),
(3, 3, 9.0, 2025, 1, 'Excelente desempenho nas provas e nas atividades de sala.'),
(4, 4, 6.5, 2025, 1, 'Nota boa, mas o aluno precisa revisar mais os conceitos de biologia.'),
(5, 1, 7.5, 2025, 1, 'Compreens�o adequada, por�m precisa praticar mais exerc�cios de �lgebra.'),
(6, 2, 8.0, 2025, 1, 'Mostrou bom desempenho, mas ainda precisa melhorar em gram�tica.'),
(7, 3, 8.8, 2025, 1, 'Desempenho excelente em hist�ria, com boa participa��o nas aulas.'),
(8, 4, 5.5, 2025, 1, 'Nota abaixo da m�dia, � necess�rio dedicar mais tempo aos estudos de ci�ncias.'),
(9, 1, 9.2, 2025, 1, '�timo desempenho, com facilidade na resolu��o de exerc�cios de geometria.'),
(10, 2, 6.0, 2025, 1, 'Faltou mais empenho nas atividades de reda��o.'),
(11, 3, 7.8, 2025, 1, 'Nota razo�vel, mas o aluno precisa melhorar a interpreta��o de textos hist�ricos.'),
(12, 4, 8.0, 2025, 1, 'Desempenho bom, mas � importante revisar a parte de bot�nica.'),
(13, 1, 9.5, 2025, 1, 'Excelente desempenho, sempre participa e tem notas altas.'),
(14, 2, 7.2, 2025, 1, 'Satisfat�rio, mas precisa melhorar nas provas de literatura.'),
(15, 3, 8.4, 2025, 1, 'Desempenho muito bom, mas pode estudar um pouco mais sobre a hist�ria do Brasil.');
