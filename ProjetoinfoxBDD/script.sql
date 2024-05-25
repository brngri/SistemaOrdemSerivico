-- comentários
-- a linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de dados a ser usado
use dbinfox;
-- o bloco de instrução abaixo cria uma tabela
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique, -- unique = unico, sem repetição
senha varchar(15) not null
);
-- o comando abaixo descreve a tabela
describe tbusuarios;
-- a linha abaixo inseri dados na tabela (CRUD)
-- C -> creat = insert
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1,'Bruno','9999-9999', 'brulogin', '123');
-- a linha abaixo exibe os dados da tabela (CRUD)
-- R -> read = select
select * from tbusuarios;
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'Administrador','9999-9999', 'admin', 'admin');

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'Bill Gates','9999-9999', 'bill', '123');

-- a linha abaixo modifica os dados da tabela (CRUD)
-- U -> update = update
update tbusuarios set fone='8888-8888' where iduser=2; 

-- a linha abaixo apaga um registro da tabel (CRUD)
-- D -> delete = delete

delete from tbusuarios where iduser=3;

create table tbclientes(
	idcli int primary key auto_increment,
    nomecli varchar(50) not null,
    fonecli varchar(50) not null,
    endcli varchar(100),
    emalcli varchar(50)
);


describe tbclientes;

insert into tbclientes(nomecli, fonecli, endcli, emalcli)
values('Bruno', '9898-98989', 'Rua Amandita 1500', 'bruno@gmail.com');

insert into tbclientes(nomecli, fonecli, endcli, emalcli)
values('Lucas', '9898-98989', 'Rua Sucrilhos 99', 'lucas@gmail.com');

select * from tbclientes;

create table tbos(
	os int primary key auto_increment,
    data_os timestamp default current_timestamp,
    equipamento varchar(150) not null,
    defeito varchar(150) not null,
    servico varchar(150),
    tecnico varchar(30),
    valor decimal(10,2),
    idcli int not null,
    foreign key(idcli) references tbclientes(idcli)
);

describe tbos;
select * from tbos;

insert into tbos(equipamento, defeito, servico, tecnico, valor, idcli)
values('Computador', 'Tela Azul', 'Formatação', 'Brutos', 100, 1);

-- o codigo abaixo traz informações de 2 tabelas
select
O.os,data_os, equipamento, defeito, servico, tecnico, valor,
C.nomeclie, fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);
 
describe tbclientes;

select * from tbclientes;
select * from tbclientes where nomecli like 'bru%';

describe tbos;
select * from tbos;

-- 	A linha abaixo altera a tabela em uma determinada posição
alter table tbos add tipo varchar(25) not null after data_os;
alter table tbos add situacao varchar(30) not null after tipo;

ALTER TABLE tbusuarios MODIFY senha VARCHAR(50);
ALTER TABLE tbusuarios MODIFY login VARCHAR(50);

select os, date_format(data_os,'%d/%m/%y - %H:%i'),tipo,situacao,equipamento, defeito, servico,tecnico, valor, idcli from tbos where os = 2;