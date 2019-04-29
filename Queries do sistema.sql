/*Querie que pesquisa o nome do beneficiario pela primeira letra do seu nome */
select nome from Beneficiario where nome like 'a%';
select nome from Beneficiario where nome like 'e%';
select nome from Beneficiario where nome like 'c%';
/*Querie que agrupa as pessoas através de data de nascimento*/
select dt_Nascimento, count(*) as count FROM Beneficiario GROUP BY dt_Nascimento;
select dt_Nascimento, count(*) as count FROM Voluntario GROUP BY dt_Nascimento;
select dt_Nascimento, count(*) as count FROM Funcionario GROUP BY dt_Nascimento;
/*Querie que seleciona as tabelas*/
select * from Beneficiario;
select * from Funcionario;
select * from Voluntario;
select * from Doador;
select * from Doacao;
select * from Manequim;
select * from Saude;
select * from Modalidade;
/*Querie para Beneficiarios nascidos apenas em datas de nascimentos específicas*/
select * from Beneficiario where dt_Nascimento >= '2004-10-05';
/*Querie para juntar Beneficiario com suas vestimentas específicas*/
select * from Manequim 
inner join Beneficiario
on manequim.Beneficiario_idBeneficiario = Beneficiario.idBeneficiario;
/*Querie para contar quantos registros possuem em determinado bairro*/
select COUNT (bairro)
from Beneficiario
where bairro like 'Recanto%'
having count(distinct bairro) = 'Recanto';
/*Querie que conta quantos beneficiario tem em uma determinada coluna*/
select count (Modalidade)from Modalidade_Beneficiario;
/*Querie para horario do sistema*/
select now();
/*Querie para listar todos os e-mails do beneficiario*/
select email from Beneficiario;
/*Querie que liga o doador as doações que ele fez*/
select * from Doador
inner join Doacoes_Doador as d
on idDoador = idDoacao.Doacoes_Doador;
/*Querie que altera a tabela beneficiario(apenas para fins didáticos)*/
alter table Beneficiario add column Questionario VARCHAR(1) NULL;
/*Querie para saber quais beneficiarios tomam remedios e que tipo de remedios*/
select * from Beneficiario
left join Saude
on Beneficiario.idBeneficiario = Saude.Beneficiario_idBeneficiario;

