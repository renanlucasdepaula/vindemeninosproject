/*Querie para a adição de dados na tabela Beneficiário*/
insert into Beneficiario (idBeneficiario,nome,dt_Nascimento,nacionalidade,endereco,bairro,cidade,telefone,email,nomeMae,nomePai,profissaoMae,ProfissaoPai)
values ('01','Roberto dos Santos','2004-10-05','Brasileiro','Al.Manacás 150','Recanto Tranquilo','Atibaia','1144152004','teste@mail.com.br','Alberto','Bruna','Cabelereira','Jardineiro'),
	   ('02','Carlos Osvaldo','2006-09-10','Brasileiro','Al.Sucupira 149','Recanto Tranquilo','Atibaia','1144152013','teste1@mail.com.br','Rodolfo','Alexia','Faxineira','Pedreiro'),
       ('03','Pedro Henrique','2016-05-15','Americano','Rua Oswaldo Pires','Jd. Imperial','Atibaia','1144124000','teste2@mail.com.br','Ricardo','Rosana','Manicure','Desempregado'),
       ('04','Livia ','2002-01-05','Brasileiro','Al.Orquídeas 90','Jd.Maracanã','Atibaia','1144152024','teste3@mail.com.br','Luis','Donizete','Cabelereira','Jardineiro'),
       ('05','Henry','2000-05-10','Brasileiro','Al.Orquídeas 90','Jd.Maracanã','Atibaia','1144152024','teste3@mail.com.br','Luis','Donizete','Cabelereira','Jardineiro');
/*Querie para a adição de dados na tabela Funcionário*/
insert into Funcionario (idFuncionario,cpf,nome,dt_Nascimento,nacionalidade,funcao,endereco,bairro,cidade,telefone,email)
values ('01','45252412847','Joana','1994-10-05','Brasileira','Aux.reforço','Al.Manacás 130','Recanto Tranquilo','Atibaia','1144152020','dados1@mail.com'),
	   ('02','45252412848','Roberto','1990-12-05','Americano','Aux.Limpeza','Al.Esmeralda 100','Recanto Tranquilo','Atibaia','1144152111','dados2@mail.com'),
       ('03','45252412849','Jorge','1989-11-08','Brasileira','Discipulado','Rua Ipanema 90','Alvinópolis','Atibaia','1144152333','dados3@mail.com'),
       ('04','45252412810','Juliana','1988-02-03','Brasileira','Aux.reforço','Rua São João 102','Jd. Imperial','Atibaia','1144153333','dados4@mail.com'),
       ('05','45252412811','Maria','1988-10-03','Brasileira','Aux.reforço','Al.Manacás 100','Recanto Tranquilo','Atibaia','1144154586','dados5@mail.com');
/*Querie para a adição de dados na tabela Voluntário*/
insert into Voluntario (idVoluntario,cpf,nome,dt_Nascimento,nacionalidade,endereco,bairro,cidade,telefone,email,habilidade)
values ('01','12345678912','Janae','1996-10-03','Americana','Al.Manacás 150','Recanto Tranquilo','Atibaia','1144152004','mail1@mail.com','Curso Office'),
	   ('02','12345678913','Rebecca','1998-01-01','Americana','Al.Manacás 150','Recanto Tranquilo','Atibaia','1144152004','mail2@mail.com','Curso Artes'),
       ('03','12345678914','Rebeka','2000-04-03','Americana','Al.Manacás 150','Recanto Tranquilo','Atibaia','1144152004','mail3@mail.com','Relações Publicas'),
       ('04','12345678915','Abby','1995-03-05','Americana','Al.Manacás 150','Recanto Tranquilo','Atibaia','1144152004','mail4@mail.com','Seminario Teológico'),
       ('05','12345678916','Giulia','1997-11-13','Italiana','Al.Manacás 150','Recanto Tranquilo','Atibaia','1144152004','mail5@mail.com','Conhecimentos de culinária');
/*Querie para a adição de dados na tabela Doador*/
insert into Doador (idDoador,cpf,cnpj,nome,dt_Nascimento,nacionalidade,endereco,bairro,cidade,telefone,email,empresa)
values ('01','00000000000','2103978738137','Perdigão','1970-03-03','Brasileira','São Paulo','Guarulhos','São Paulo','12345671246','sadia@mail.com.br','Sadia'),
       ('02','12345679999','','Matheus','2000-05-01','Brasileiro','Rua Pereira 100','Usina','Atibaia','12345671233','math2@mail.com.br',''),
       ('03','00000000001','2103978738144','Informatica SP','1990-02-02','Brasileira','São Paulo','Guarulhos','São Paulo','12345671242','info@mail.com.br','Informatica');
/*Querie para a adição de dados na tabela Doacao*/
insert into Doacao(idDoacao,descricao)
values('01','Doação de 100 roupas e 20 pares de sapatos'),
	  ('02','Doação de 400 roupas e 22 pares de sapatos'),
      ('03','Doação de brinquedos');
/*Querie para a adição de dados na tabela Manequim*/
insert into Manequim(idManequim,descricao,tamanho,Beneficiario_idBeneficiario)
values('01','Camiseta nike','M','01');
/*Querie para a adição de dados na tabela Saude*/
insert into Saude (idSaude,medicamento,antecedente,observacao,doenca,Beneficiario_idBeneficiario)
values ('01','novalgina','internação','remedio para dores','virose','01');
/*Querie para a adição de dados na tabela Modalidade*/
insert into Modalidade (idModalidade,nome,descricao) 
values ('01','VINDE TEENS','Trabalho com os adolescentes'),
       ('02','VINDE KIDS','Trabalho com as crianças');

/*Querie para a adição de dados na tabela Modalidade/Beneficiarios*/
insert into Modalidade_Beneficiario (Modalidade,Beneficiario)
values ('01','01'),
       ('02','02');
       
/*Querie para a adição de dados na tabela de relação da modalidade com o voluntario*/
insert into Voluntario_Modalidade(Voluntario,Modalidade)
values ('01','03'),
	   ('02','03');

