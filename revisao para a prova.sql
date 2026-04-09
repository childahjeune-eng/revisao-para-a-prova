create database bibliotecal;
use bibliotecal;
create table Autores (
id_autor int primary key auto_increment,
nome varchar(100) not null,
nacionalidade varchar(50)
);

create table livros (
id_livros int primary key auto_increment,
titulo varchar(100) not null,
ano_publicacao int,
genero varchar(50),
id_autor int,
foreign key (id_autor) references autores (id_autor)
);

insert into autores (nome, nacionalidade) values
('machado de assis', 'brasileiro'),
('truman capote', 'americano'),
('elizabeth strout', 'americana'),
('Gabriel Garcia Marquez', 'colombiano'),
('Liliana Bodoc', 'argentina');

select * from autores;

alter table autores
add unique (nome);

insert into livros (titulo, ano_publicacao, genero, id_autor) value
('memorias póstumas de braz cubas', 1881, 'romance', 1),
('A Sangue Frio', 1965,'romance', 2),
('Meu nome é Lucy Barton', 2016, 'Ficção Doméstica', 3),
('Cem Anos de Solidão', 1967, 'romance', 4),
('Los Días de la Sombra', 2002, 'fantasía heroica', 5);

select * from livros;

select * from autores where nacionalidade = 'brasileiro'
