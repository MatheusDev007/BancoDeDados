CREATE TABLE Pessoa(
id int not null identity primary key,
nome varchar(200) not null,
email varchar(100) not null,
senha varchar(25) not null,
dtnascimento date,
cpf varchar(14),
endereco text,
curriculo text);
 
CREATE TABLE mensagens( 
id int not null identity primary key,
idReceptor int not null references Pessoa(id), 
idEmissor int not null references Pessoa(id),
texto text not null,
DataHora datetime not null default getDate() );

INSERT INTO Pessoa(nome, email, senha, dtnascimento, cpf, endereco, curriculo) VALUES ('Matheus', 'matheus888434@gmail.com', 'Dale', '20/01/2003', '444.888.55-09', 'Rua das Rosas, 232' , 'Nunca trabalhei');

SELECT * FROM Pessoa;

create table Alunos(
idPessoa int not null references Pessoa(id) primary key,
interesses text,
anoEscolar varchar(20));

create table professores (
idPessoa int not null references Pessoa(id) primary key,
interesses text,
curriculo text,
valorAula decimal(6,2)
);

create table Responsavel(
idPessoa int not null references Pessoa(id),
idAluno int not null references Alunos(idPessoa),
tipoResponsavel varchar(50),
primary key (idPessoa,idAluno));
