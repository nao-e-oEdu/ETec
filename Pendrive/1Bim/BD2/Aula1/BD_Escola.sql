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
('João Pereira', 'Rua dos Lírios, 789'),
('Maria Souza', 'Rua do Sol, 101'),
('Lucas Costa', 'Av. São João, 202'),
('Beatriz Martins', 'Rua das Pedras, 303');

INSERT INTO tblalunos (nome, endereco, telefone, nascimento, pai, mae, responsavel) VALUES 
('Ana Costa', 'Rua das Acácias, 10', '(11) 98765-4321', '2007-04-15', 'Carlos Costa', 'Juliana Costa', 'Carlos Costa'),
('Pedro Santos', 'Rua do Paraiso, 15', '(11) 99876-5432', '2008-03-22', 'Roberto Santos', 'Marcia Santos', 'Roberto Santos'),
('Lucas Pereira', 'Av. João XXIII, 25', '(11) 96789-1234', '2007-11-10', 'Fernando Pereira', 'Patrícia Pereira', 'Fernando Pereira'),
('Juliana Alves', 'Rua da Paz, 100', '(11) 95789-4321', '2006-05-14', 'Rogério Alves', 'Helena Alves', 'Rogério Alves'),
('Marcos Silva', 'Rua das Palmeiras, 55', '(11) 93987-6543', '2007-07-30', 'Ricardo Silva', 'Cláudia Silva', 'Ricardo Silva'),
('Gabriela Rodrigues', 'Av. do Trabalhador, 12', '(11) 99888-1234', '2008-06-12', 'José Rodrigues', 'Patrícia Rodrigues', 'José Rodrigues'),
('Luana Oliveira', 'Rua dos Coqueiros, 32', '(11) 91765-4321', '2007-09-28', 'Maurício Oliveira', 'Fernanda Oliveira', 'Maurício Oliveira'),
('Ricardo Lima', 'Rua da Liberdade, 80', '(11) 96654-7890', '2006-12-20', 'Eduardo Lima', 'Mariana Lima', 'Eduardo Lima'),
('Fernanda Costa', 'Rua das Acácias, 25', '(11) 99675-1234', '2008-02-18', 'Paulo Costa', 'Marta Costa', 'Paulo Costa'),
('Thiago Gomes', 'Av. São Paulo, 50', '(11) 95564-9876', '2007-04-02', 'Ailton Gomes', 'Lúcia Gomes', 'Ailton Gomes'),
('Amanda Martins', 'Rua da Vitória, 60', '(11) 97788-6543', '2008-01-15', 'Carlos Martins', 'Patrícia Martins', 'Carlos Martins'),
('Paulo Santos', 'Rua José Bonifácio, 88', '(11) 96877-5432', '2007-08-05', 'Ricardo Santos', 'Maria Santos', 'Ricardo Santos'),
('Vanessa Silva', 'Rua das Orquídeas, 42', '(11) 93456-7890', '2008-04-12', 'Bruno Silva', 'Ana Silva', 'Bruno Silva'),
('Eduardo Pereira', 'Rua das Margaridas, 70', '(11) 93345-6789', '2007-10-19', 'Gilson Pereira', 'Patrícia Pereira', 'Gilson Pereira'),
('Isabela Souza', 'Rua do Cedro, 90', '(11) 94567-1234', '2008-09-09', 'Alexandre Souza', 'Raquel Souza', 'Alexandre Souza');

INSERT INTO tblcursos (nomecurso, codprofessor) VALUES 
('Matemática', 1),
('Português', 2),
('História', 3),
('Ciências', 4);

INSERT INTO tblnotas (codaluno, codcurso, nota, ano, bimestre, observacao) VALUES
(1, 1, 8.5, 2025, 1, 'Boa evolução no conteúdo, mas precisa melhorar em resolução de problemas.'),
(2, 2, 7.0, 2025, 1, 'Desempenho satisfatório, mas pode se dedicar mais nas redações.'),
(3, 3, 9.0, 2025, 1, 'Excelente desempenho nas provas e nas atividades de sala.'),
(4, 4, 6.5, 2025, 1, 'Nota boa, mas o aluno precisa revisar mais os conceitos de biologia.'),
(5, 1, 7.5, 2025, 1, 'Compreensão adequada, porém precisa praticar mais exercícios de álgebra.'),
(6, 2, 8.0, 2025, 1, 'Mostrou bom desempenho, mas ainda precisa melhorar em gramática.'),
(7, 3, 8.8, 2025, 1, 'Desempenho excelente em história, com boa participação nas aulas.'),
(8, 4, 5.5, 2025, 1, 'Nota abaixo da média, é necessário dedicar mais tempo aos estudos de ciências.'),
(9, 1, 9.2, 2025, 1, 'Ótimo desempenho, com facilidade na resolução de exercícios de geometria.'),
(10, 2, 6.0, 2025, 1, 'Faltou mais empenho nas atividades de redação.'),
(11, 3, 7.8, 2025, 1, 'Nota razoável, mas o aluno precisa melhorar a interpretação de textos históricos.'),
(12, 4, 8.0, 2025, 1, 'Desempenho bom, mas é importante revisar a parte de botânica.'),
(13, 1, 9.5, 2025, 1, 'Excelente desempenho, sempre participa e tem notas altas.'),
(14, 2, 7.2, 2025, 1, 'Satisfatório, mas precisa melhorar nas provas de literatura.'),
(15, 3, 8.4, 2025, 1, 'Desempenho muito bom, mas pode estudar um pouco mais sobre a história do Brasil.');
