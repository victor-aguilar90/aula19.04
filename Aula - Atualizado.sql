create database Aula2;
use Aula2;

create table Cargo(
cod_cargo int auto_increment primary key,
nome_cargo varchar(70) not null,
constraint Cargo primary key (cod_cargo)

);

create table Funcionario(
	cod_func int auto_increment primary key,
    cod_cargo int,
    nome_func varchar(70),
    salario_func decimal(10,2),
    rg_func int (11),
    foreign key (cod_cargo) references Cargo(cod_cargo)
);

insert into Cargo (nome_cargo) values 
("Presidente"),
("Gerente"),
("Supervisor"),
("Revisor"),
("Redator")
; 

insert into Funcionario(cod_cargo, nome_func, salario_func, rg_func) values
(5, "Luiz Pereira", 3000.00, 27291905),
(5, "Antonio Almeida", 3000.00, 15970247),
(3, "Donizete Ribeiro", 2800.00, 27151908),
(3, "Gabriela Moura", 4700.00, 255279145),
(2, "Emilio Duarte", 5000.00, 17278246),
(1,"Carolina Ferreira", 9000.00, 18154578);

select * from Cargo;
select * from Funcionario;

