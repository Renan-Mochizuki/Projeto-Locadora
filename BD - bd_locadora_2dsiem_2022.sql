-- Criar o banco de dados locadora
create database bd_locadora_2dsiem_2022;

-- Usar o banco de dados locadora
use bd_locadora_2dsiem_2022;

-- Criar a tabela funcionario
create table tb_funcionario(
TB_FUNCIONARIO_ID integer primary key auto_increment not null,
TB_FUNCIONARIO_NOME varchar(64) not null,
TB_FUNCIONARIO_TEL varchar(16),
TB_FUNCIONARIO_DT_CONTRATO date not null,
TB_CARGO_ID integer not null
);

-- Criar a tabela cargo
create table tb_cargo(
TB_CARGO_ID integer primary key auto_increment not null,
TB_CARGO_NOME varchar(64) not null
);

-- Criar a tabela locação
create table tb_locacao(
TB_LOCACAO_ID integer auto_increment not null primary key,
TB_LOCACAO_TIPO varchar(32) not null,
TB_LOCACAO_VALOR decimal(10,2) not null,
TB_LOCACAO_DT_INICIO date,
TB_LOCACAO_DT_FIM date,
TB_CLIENTE_ID integer not null,
TB_FUNCIONARIO_ID integer not null,
TB_AUTOMOVEL_ID integer not null
);

-- Criar a tabela cliente
create table tb_cliente(
TB_CLIENTE_ID integer auto_increment not null primary key,
TB_CLIENTE_NOME varchar(128) not null,
TB_CLIENTE_TEL varchar(16) not null,
TB_CLIENTE_SEXO varchar(16),
TB_CLIENTE_EMAIL varchar(32),
TB_CLIENTE_SENHA varchar(32),
TB_CLIENTE_ENDERECO varchar(64) not null,
TB_CLIENTE_COMPLEMENTO varchar(32),
TB_CLIENTE_BAIRRO varchar(64) not null,
TB_CLIENTE_CIDADE varchar(64) not null,
TB_CLIENTE_UF char(2) not null,
TB_CLIENTE_DT_NASC date not null,
TB_CLIENTE_DT_CAD date not null
);

-- Criar a tabela marca
create table tb_marca(
TB_MARCA_ID integer primary key auto_increment not null,
TB_MARCA_NOME varchar(32) not null
);

-- Criar a tabela automóvel
create table tb_automovel(
TB_AUTOMOVEL_ID integer primary key auto_increment not null,
TB_AUTOMOVEL_NOME varchar(32) not null,
TB_AUTOMOVEL_ANO_FAB integer,
TB_AUTOMOVEL_COR varchar(32) not null,
TB_AUTOMOVEL_KM decimal (10,2),
TB_AUTOMOVEL_VALOR_D decimal (10,2),
TB_AUTOMOVEL_STATUS varchar (16),
TB_MARCA_ID integer not null,
TB_MODELO_ID integer not null
);

-- Criar a tabela modelo
create table tb_modelo(
TB_MODELO_ID integer primary key auto_increment not null,
TB_MODELO_DESC varchar(32) not null
);

-- Criar a relação pk_cargo_fk_funcionario 
alter table tb_funcionario 
add constraint pk_cargo_fk_funcionario 
foreign key (TB_CARGO_ID) 
references tb_cargo(TB_CARGO_ID);

-- Criar a relação pk_marca_fk_automovel
alter table tb_automovel
add constraint pk_marca_fk_automovel
foreign key (TB_MARCA_ID) 
references tb_marca(TB_MARCA_ID);

-- Criar a relação pk_modelo_fk_automovel
alter table tb_automovel
add constraint pk_modelo_fk_automovel
foreign key (TB_MODELO_ID) 
references tb_modelo(TB_MODELO_ID);

-- Criar a relação pk_cliente_fk_locacao
alter table tb_locacao
add constraint pk_cliente_fk_locacao
foreign key (TB_CLIENTE_ID) 
references tb_cliente(TB_CLIENTE_ID);

-- Criar a relação pk_funcionario_fk_locacao
alter table tb_locacao
add constraint pk_funcionario_fk_locacao
foreign key (TB_FUNCIONARIO_ID) 
references tb_funcionario(TB_FUNCIONARIO_ID);

-- Criar a relação pk_automovel_fk_locacao
alter table tb_locacao
add constraint pk_automovel_fk_locacao
foreign key (TB_AUTOMOVEL_ID) 
references tb_automovel(TB_AUTOMOVEL_ID);

insert into tb_cargo(
TB_CARGO_NOME
) value (
'LAVADOR'
);
insert into tb_cargo(
TB_CARGO_NOME
) value (
'LOCADOR'
);
insert into tb_cargo(
TB_CARGO_NOME
) value (
'MECANICO'
);
insert into tb_cargo(
TB_CARGO_NOME
) value (
'MANOBRISTA'
);
insert into tb_cargo(
TB_CARGO_NOME
) value (
'GERENTE'
);

-- Inserir dados na tabela marca
insert into tb_marca(
TB_MARCA_NOME
) value (
'LIFAN'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'HONDA'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'FIAT'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'FORD'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'CHEVROLET'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'JEEP'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'VOLKSWAGEM'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'KIA'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'MITSUBISHI'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'HYUNDAI'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'BMW'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'RENAULT'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'TOYOTA'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'AUDI'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'BUGATTI'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'FERRARI'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'SUBARU'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'ASTON MARTIN'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'PORCHE'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'TESTE'
);
insert into tb_marca(
TB_MARCA_NOME
) value (
'OUTRA'
);

-- Inserir dados na tabela modelo
insert into tb_modelo(
TB_MODELO_DESC
) value (
'RACING'
);
insert into tb_modelo(
TB_MODELO_DESC
) value (
'SEDAN'
);
insert into tb_modelo(
TB_MODELO_DESC
) value (
'PICKUP'
);
insert into tb_modelo(
TB_MODELO_DESC
) value (
'UTILITÁRIO'
);
insert into tb_modelo(
TB_MODELO_DESC
) value (
'WAGON'
);
insert into tb_modelo(
TB_MODELO_DESC
) value (
'HATCH'
);
insert into tb_modelo(
TB_MODELO_DESC
) value (
'COUPÊ'
);
insert into tb_modelo(
TB_MODELO_DESC
) value (
'SUV'
);
insert into tb_modelo(
TB_MODELO_DESC
) value (
'OFF ROAD'
);

-- Inserir dados na tabela funcionario
insert into tb_funcionario(
TB_FUNCIONARIO_NOME,
TB_FUNCIONARIO_TEL,
TB_FUNCIONARIO_DT_CONTRATO,
TB_CARGO_ID 
) value (
'JOSÉ BENEDITO',
'11 94553838',
'2010-12-20',
'5'
);
insert into tb_funcionario(
TB_FUNCIONARIO_NOME,
TB_FUNCIONARIO_TEL,
TB_FUNCIONARIO_DT_CONTRATO,
TB_CARGO_ID 
) value (
'ANTONIO BONILHA',
'11 3943939',
'2011-01-05',
'2'
);
insert into tb_funcionario(
TB_FUNCIONARIO_NOME,
TB_FUNCIONARIO_TEL,
TB_FUNCIONARIO_DT_CONTRATO,
TB_CARGO_ID 
) value (
'LUIZA PEREIRA DA SILVA',
'11 93423445',
'2011-01-05',
'2'
);
insert into tb_funcionario(
TB_FUNCIONARIO_NOME,
TB_FUNCIONARIO_TEL,
TB_FUNCIONARIO_DT_CONTRATO,
TB_CARGO_ID 
) value (
'JOAQUIM OZORIO DOS REIS',
'18 4553434',
'2011-06-12',
'3'
);
insert into tb_funcionario(
TB_FUNCIONARIO_NOME,
TB_FUNCIONARIO_TEL,
TB_FUNCIONARIO_DT_CONTRATO,
TB_CARGO_ID 
) value (
'ANTONIO DIAS BASTOS',
'18 3403922',
'2010-10-10',
'3'
);
insert into tb_funcionario(
TB_FUNCIONARIO_NOME,
TB_FUNCIONARIO_TEL,
TB_FUNCIONARIO_DT_CONTRATO,
TB_CARGO_ID 
) value (
'ARMANDO ARAUJO DE ANDRADE',
'14 34233344',
'2012-06-21',
'2'
);

-- Inserir dados na tabela automovel
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'CIVIC EXS',
'2010',
'PRETO',
'60000.00',
'550.00',
'DISPONIVEL',
'2',
'2'
);
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'GOL MI',
'2000',
'PRETO',
'75000.00',
'100.00',
'DISPONIVEL',
'7',
'6'
);
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'LANCER',
'2014',
'VERMELHO',
'23000.00',
'160.00',
'DISPONIVEL',
'9',
'2'
);
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'PALIO ELX',
'2001',
'CINZA',
'140000.00',
'90.00',
'DISPONIVEL',
'3',
'6'
);
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'FLUENCE ELITE',
'2015',
'BRANCO',
'95000.00',
'130.00',
'DISPONIVEL',
'12',
'2'
);
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'COROLLA XEI',
'2011',
'BRANCO',
'150000.00',
'140.00',
'DISPONÍVEL',
'13',
'2'
);
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'JETTA TSI',
'2016',
'PRATA',
'102000.00',
'150.00',
'DISPONÍVEL',
'7',
'2'
);
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'HB20',
'2011',
'AZUL',
'98000.00',
'120.00',
'DISPONÍVEL',
'10',
'6'
);
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'FIESTA',
'2012',
'VERMELHO',
'120000.00',
'130.00',
'DISPONÍVEL',
'4',
'6'
);
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'AMAROK',
'2014',
'VERDE',
'154000.00',
'20000.00',
'DISPONÍVEL',
'7',
'3'
);
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'HB20',
'2015',
'VERMELHO',
'78000.00',
'120.00',
'INDISPONÍVEL',
'10',
'6'
);
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'CITY',
'2011',
'PRETO',
'181000.00',
'130.00',
'DISPONÍVEL',
'2',
'2'
);
insert into tb_automovel(
TB_AUTOMOVEL_NOME,
TB_AUTOMOVEL_ANO_FAB,
TB_AUTOMOVEL_COR,
TB_AUTOMOVEL_KM,
TB_AUTOMOVEL_VALOR_D,
TB_AUTOMOVEL_STATUS,
TB_MARCA_ID,
TB_MODELO_ID
) value (
'FIT',
'2014',
'PRETO',
'147000.00',
'120.00',
'DISPONÍVEL',
'2',
'6'
);

-- Inserir dados na tabela cliente
insert into tb_cliente(
TB_CLIENTE_NOME,
TB_CLIENTE_TEL,
TB_CLIENTE_SEXO,
TB_CLIENTE_EMAIL,
TB_CLIENTE_SENHA,
TB_CLIENTE_ENDERECO,
TB_CLIENTE_COMPLEMENTO,
TB_CLIENTE_BAIRRO,
TB_CLIENTE_CIDADE,
TB_CLIENTE_UF,
TB_CLIENTE_DT_NASC,
TB_CLIENTE_DT_CAD
) value (
'ANDRE LINARES',
'11 971551446',
'MASCULINO',
'ANDRELINARESS@HOTMAIL.COM',
'123',
'AV.DOUTOR ALVARO RIBEIRO 777',
'CASA 39',
'JARDIM DEGHI',
'SANTANA DE PARNAIBA',
'SP',
'1979-12-19',
'2010-10-10'
);
insert into tb_cliente(
TB_CLIENTE_NOME,
TB_CLIENTE_TEL,
TB_CLIENTE_SEXO,
TB_CLIENTE_EMAIL,
TB_CLIENTE_SENHA,
TB_CLIENTE_ENDERECO,
TB_CLIENTE_COMPLEMENTO,
TB_CLIENTE_BAIRRO,
TB_CLIENTE_CIDADE,
TB_CLIENTE_UF,
TB_CLIENTE_DT_NASC,
TB_CLIENTE_DT_CAD
) value (
'SILDO MENEZES',
'11 95443921',
'MASCULINO',
'SILDMISILDO@GMAIL.COM',
'123',
'RUA DAS CASAS 324',
' ',
'PARQUE SANTANA',
'SANTANA DE PARNAIBA',
'SP',
'1985-10-10',
'2010-10-10'
);
insert into tb_cliente(
TB_CLIENTE_NOME,
TB_CLIENTE_TEL,
TB_CLIENTE_SEXO,
TB_CLIENTE_EMAIL,
TB_CLIENTE_SENHA,
TB_CLIENTE_ENDERECO,
TB_CLIENTE_COMPLEMENTO,
TB_CLIENTE_BAIRRO,
TB_CLIENTE_CIDADE,
TB_CLIENTE_UF,
TB_CLIENTE_DT_NASC,
TB_CLIENTE_DT_CAD
) value (
'MARIA DAS GRAÇAS',
'13 98453321',
'FEMININO',
'MARIA2000@HOTMAIL.COM',
'123',
'RUA FLORENCIA 4556',
'CASA B',
'CARAVAGIO',
'SÃO ROQUE',
'SP',
'2010-05-30',
'2010-10-10'
);
insert into tb_cliente(
TB_CLIENTE_NOME,
TB_CLIENTE_TEL,
TB_CLIENTE_SEXO,
TB_CLIENTE_EMAIL,
TB_CLIENTE_SENHA,
TB_CLIENTE_ENDERECO,
TB_CLIENTE_COMPLEMENTO,
TB_CLIENTE_BAIRRO,
TB_CLIENTE_CIDADE,
TB_CLIENTE_UF,
TB_CLIENTE_DT_NASC,
TB_CLIENTE_DT_CAD
) value (
'ROMEU ANTONIO BASTOS',
'18 45334545',
'MASCULINO',
'ROMEU_ANTONIO@HOTMAIL.COM',
'123',
'AV.BARONESA 34',
'FUNDOS',
'HORTENCIA',
'TIRADENTES',
'MG',
'1970-07-22',
'2010-10-10'
);
insert into tb_cliente(
TB_CLIENTE_NOME,
TB_CLIENTE_TEL,
TB_CLIENTE_SEXO,
TB_CLIENTE_EMAIL,
TB_CLIENTE_SENHA,
TB_CLIENTE_ENDERECO,
TB_CLIENTE_COMPLEMENTO,
TB_CLIENTE_BAIRRO,
TB_CLIENTE_CIDADE,
TB_CLIENTE_UF,
TB_CLIENTE_DT_NASC,
TB_CLIENTE_DT_CAD
) value (
'JOAQUIM DE OLIVEIRA ASSIS',
'18 94332929',
'MASCULINO',
'JOAQUIM_OLIVER@YAHOO.COM.BR',
'123',
'AV.DO ESTADO, 3422',
'4 ANDAR',
'VITORIA RÉGIA',
'TIRADENTES',
'MG',
'2009-09-09',
'2010-10-10'
);
insert into tb_cliente(
TB_CLIENTE_NOME,
TB_CLIENTE_TEL,
TB_CLIENTE_SEXO,
TB_CLIENTE_EMAIL,
TB_CLIENTE_SENHA,
TB_CLIENTE_ENDERECO,
TB_CLIENTE_COMPLEMENTO,
TB_CLIENTE_BAIRRO,
TB_CLIENTE_CIDADE,
TB_CLIENTE_UF,
TB_CLIENTE_DT_NASC,
TB_CLIENTE_DT_CAD
) value (
'ROGERIO FARIAS DE MELO',
'22 6550303',
'MASCULINO',
'FARIAS_MELO@HOTMAIL.COM',
'123',
'RUA PATRIARCA, 342',
' ',
'ROCHEDO',
'MONTE ALTO',
'BA',
'1980-10-23',
'2010-06-04'
);
insert into tb_cliente(
TB_CLIENTE_NOME,
TB_CLIENTE_TEL,
TB_CLIENTE_SEXO,
TB_CLIENTE_EMAIL,
TB_CLIENTE_SENHA,
TB_CLIENTE_ENDERECO,
TB_CLIENTE_COMPLEMENTO,
TB_CLIENTE_BAIRRO,
TB_CLIENTE_CIDADE,
TB_CLIENTE_UF,
TB_CLIENTE_DT_NASC,
TB_CLIENTE_DT_CAD
) value (
'PAULA DA SILVA VIEIRA',
'22 94330202',
'FEMININO',
'PAULINHA2000@YAHOO.COM.BR',
'123',
'RUA BARONESA, 4300',
' ',
'JEQUITIBÁ',
'CANOAS',
'PR',
'1994-03-12',
'2010-06-04'
);
insert into tb_cliente(
TB_CLIENTE_NOME,
TB_CLIENTE_TEL,
TB_CLIENTE_SEXO,
TB_CLIENTE_EMAIL,
TB_CLIENTE_SENHA,
TB_CLIENTE_ENDERECO,
TB_CLIENTE_COMPLEMENTO,
TB_CLIENTE_BAIRRO,
TB_CLIENTE_CIDADE,
TB_CLIENTE_UF,
TB_CLIENTE_DT_NASC,
TB_CLIENTE_DT_CAD
) value (
'PAULA DA SILVA VIEIRA',
'22 94330202',
'FEMININO',
'PAULINHA2000@YAHOO.COM.BR',
'123',
'RUA BARONESA, 4300',
' ',
'JEQUITIBÁ',
'CANOAS',
'PR',
'1994-03-12',
'2010-06-04'
);
insert into tb_cliente(
TB_CLIENTE_NOME,
TB_CLIENTE_TEL,
TB_CLIENTE_SEXO,
TB_CLIENTE_EMAIL,
TB_CLIENTE_SENHA,
TB_CLIENTE_ENDERECO,
TB_CLIENTE_COMPLEMENTO,
TB_CLIENTE_BAIRRO,
TB_CLIENTE_CIDADE,
TB_CLIENTE_UF,
TB_CLIENTE_DT_NASC,
TB_CLIENTE_DT_CAD
) value (
'EVANDRO DA SILVA POTIGUAR',
'11 43564654',
'MASCULINO',
'POTIGUAR2011@GMAIL.COM',
'123',
'AV.FLOR DO CAMPO, 344',
'CASA B',
'ESTRELA AZUL',
'CARAVELA',
'GO',
'1980-09-05',
'2015-07-18'
);
insert into tb_cliente(
TB_CLIENTE_NOME,
TB_CLIENTE_TEL,
TB_CLIENTE_SEXO,
TB_CLIENTE_EMAIL,
TB_CLIENTE_SENHA,
TB_CLIENTE_ENDERECO,
TB_CLIENTE_COMPLEMENTO,
TB_CLIENTE_BAIRRO,
TB_CLIENTE_CIDADE,
TB_CLIENTE_UF,
TB_CLIENTE_DT_NASC,
TB_CLIENTE_DT_CAD
) value (
'ALEXANDRE MARQUES GRANADO',
'34 43556767',
'MASCULINO',
'GRANADO_ALEXANDRE@HOTMAIL.COM',
'123',
'AV.DAS NAÇÕES UNIDAS, 3231',
'BLOCO C',
'CENTRO',
'SÃO PAULO',
'SP',
'1980-12-04',
'2011-08-01'
);
insert into tb_cliente(
TB_CLIENTE_NOME,
TB_CLIENTE_TEL,
TB_CLIENTE_SEXO,
TB_CLIENTE_EMAIL,
TB_CLIENTE_SENHA,
TB_CLIENTE_ENDERECO,
TB_CLIENTE_COMPLEMENTO,
TB_CLIENTE_BAIRRO,
TB_CLIENTE_CIDADE,
TB_CLIENTE_UF,
TB_CLIENTE_DT_NASC,
TB_CLIENTE_DT_CAD
) value (
'ANDRE VIEIRA',
'11 43445677',
'MASCULINO',
'ANDREANDRE@OUTLOOK.COM',
'123',
'RUA DO BARÃO, 2345',
'FUNDO',
'GARÇA',
'SANTANA DE PARNAIBA',
'SP',
'2000-09-04',
'2016-09-29'
);
-- Deletar o campo de id 8
delete from tb_cliente where TB_CLIENTE_ID = '8';

-- Inserir dados na tabela locacao
insert into tb_locacao(
TB_LOCACAO_TIPO,
TB_LOCACAO_VALOR,
TB_LOCACAO_DT_INICIO,
TB_LOCACAO_DT_FIM,
TB_CLIENTE_ID,
TB_FUNCIONARIO_ID,
TB_AUTOMOVEL_ID
) value (
'MENSAL',
'5400.00',
'2016-06-05',
'2016-07-05',
'1',
'6',
'1'
);
insert into tb_locacao(
TB_LOCACAO_TIPO,
TB_LOCACAO_VALOR,
TB_LOCACAO_DT_INICIO,
TB_LOCACAO_DT_FIM,
TB_CLIENTE_ID,
TB_FUNCIONARIO_ID,
TB_AUTOMOVEL_ID
) value (
'SEMANAL',
'910.00',
'2016-06-05',
'2016-06-12',
'5',
'3',
'4'
);
insert into tb_locacao(
TB_LOCACAO_TIPO,
TB_LOCACAO_VALOR,
TB_LOCACAO_DT_INICIO,
TB_LOCACAO_DT_FIM,
TB_CLIENTE_ID,
TB_FUNCIONARIO_ID,
TB_AUTOMOVEL_ID
) value (
'MENSAL',
'3900.00',
'2016-06-05',
'2016-07-05',
'1',
'3',
'5'
);
insert into tb_locacao(
TB_LOCACAO_TIPO,
TB_LOCACAO_VALOR,
TB_LOCACAO_DT_INICIO,
TB_LOCACAO_DT_FIM,
TB_CLIENTE_ID,
TB_FUNCIONARIO_ID,
TB_AUTOMOVEL_ID
) value (
'DIÁRIA',
'130.00',
'2016-06-07',
'2016-06-08',
'6',
'2',
'9'
);
insert into tb_locacao(
TB_LOCACAO_TIPO,
TB_LOCACAO_VALOR,
TB_LOCACAO_DT_INICIO,
TB_LOCACAO_DT_FIM,
TB_CLIENTE_ID,
TB_FUNCIONARIO_ID,
TB_AUTOMOVEL_ID
) value (
'MENSAL',
'4800.00',
'2016-06-12',
'2016-07-12',
'6',
'2',
'3'
);
insert into tb_locacao(
TB_LOCACAO_TIPO,
TB_LOCACAO_VALOR,
TB_LOCACAO_DT_INICIO,
TB_LOCACAO_DT_FIM,
TB_CLIENTE_ID,
TB_FUNCIONARIO_ID,
TB_AUTOMOVEL_ID
) value (
'MENSAL',
'4800.00',
'2016-06-12',
'2016-07-12',
'10',
'2',
'6'
);
insert into tb_locacao(
TB_LOCACAO_TIPO,
TB_LOCACAO_VALOR,
TB_LOCACAO_DT_INICIO,
TB_LOCACAO_DT_FIM,
TB_CLIENTE_ID,
TB_FUNCIONARIO_ID,
TB_AUTOMOVEL_ID
) value (
'SEMANAL',
'1120.00',
'2016-09-20',
'2016-09-27',
'1',
'3',
'3'
);
insert into tb_locacao(
TB_LOCACAO_TIPO,
TB_LOCACAO_VALOR,
TB_LOCACAO_DT_INICIO,
TB_LOCACAO_DT_FIM,
TB_CLIENTE_ID,
TB_FUNCIONARIO_ID,
TB_AUTOMOVEL_ID
) value (
'SEMANAL',
'980.00',
'2016-10-10',
'2016-10-17',
'4',
'3',
'6'
);

select distinct TB_AUTOMOVEL_NOME, TB_AUTOMOVEL_ANO_FAB from tb_automovel where tb_automovel.TB_AUTOMOVEL_NOME like "%20";

select sum(TB_AUTOMOVEL_VALOR_D) from tb_automovel;

select max(TB_AUTOMOVEL_VALOR_D) from tb_automovel;

select * from TB_CLIENTE;