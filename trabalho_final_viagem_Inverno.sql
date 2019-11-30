create database produtos_inverno;
use produtos_inverno;
create table produtos (
	idproduto int not null auto_increment,
    nome varchar(50) not null,
    espaco float not null,
    peso float not null,
    importancia int not null,
    quantidade int not null,
    constraint pk_produtos_idproduto primary key (idproduto)
);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Meia', 70, 30, 100, 5);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Calça', 700, 150, 100, 5);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Pijama', 600, 120, 70, 2);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Camiseta de Manga', 500, 100, 95, 5);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Camiseta Cavada', 400, 85, 0, 0);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Camisa Social', 600, 90, 10, 5);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Bermuda', 400, 100, 1, 4);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Cueca', 100, 40, 100, 10);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Chinelos', 750 , 120, 93,1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Sapato social', 5000, 900, 75, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Botas de inverno', 6000, 980, 100, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Tênis', 4000, 700, 30, 2);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Necessaire', 5000, 900, 100, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Cinto de couro', 200, 95, 50, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Cinto de tecido', 150, 85, 70, 1);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Notebook + Carregador', 7000, 2500, 1, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('tablet', 1000, 500, 15, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('joias', 1500, 780, 5, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('toalha', 2000, 200, 0, 2);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('travesseiro', 20000, 400, 0, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('lençol', 1000, 200, 0, 2);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Cobertor', 15000, 800, 0, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Remédios', 200, 50, 100, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Alimentos', 1000, 500, 0, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Óculos', 100, 30, 69, 2);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Carregador de Celular', 150, 70, 100, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Perfume', 200, 250, 80, 1);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Livro', 1000, 1000, 30, 3);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Cavaquinho', 20000, 1000, 0, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Video game', 15000, 2000, 0, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Blusa de Frio', 2000, 800, 100, 7);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Sunga', 110, 50, 0, 0);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Paletó', 850, 200, 100, 3);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Gravata', 100, 40, 0, 3);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Calça social', 600, 110, 30, 3);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Jaqueta de couro', 950, 350, 100, 2);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Blusa de lã', 1100, 320, 100, 3);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Toca', 125, 60, 100 , 3);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Luvas', 70, 40, 100 , 4);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Cachecol', 105, 50, 100 , 3);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Suéter', 450, 220, 100 , 3);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Casaco corta vento', 1200, 750, 100 , 2);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Guarda chuvas', 110, 100, 100, 1);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Protetor de orelhas', 100, 45, 100, 2);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Capa de chuva', 900, 500, 100, 1);
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Pasta com Documentos', 700, 400, 0, 0);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Adaptadores de Tomada', 120, 120, 30, 1);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Blaser', 950, 250, 100, 1);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Terno Slin', 700, 250, 0, 2);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Aparador de Pelos',120, 150, 100, 1);	
insert into produtos (nome, espaco, peso, importancia, quantidade) values ('Garrafa de Bebida alcoolica', 1000, 1300, 0, 1);
	

