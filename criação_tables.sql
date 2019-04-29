DROP SCHEMA IF EXISTS projeto_social ;

CREATE SCHEMA IF NOT EXISTS projeto_social DEFAULT CHARACTER SET utf8 ;

USE projeto_social ;

DROP TABLE IF EXISTS Beneficiario ;

CREATE TABLE IF NOT EXISTS Beneficiario (
  idBeneficiario INT NOT NULL,
  nome VARCHAR(30) NOT NULL,
  dt_Nascimento DATE NOT NULL,
  nacionalidade VARCHAR(45) NULL,
  endereco VARCHAR(30) NOT NULL,
  bairro VARCHAR(20) NOT NULL,
  cidade VARCHAR(15) NOT NULL,
  telefone VARCHAR(11) NULL,
  email VARCHAR(30) NULL,
  nomeMae VARCHAR(30) NULL,
  nomePai VARCHAR(30) NULL,
  profissaoMae VARCHAR(30) NULL,
  ProfissaoPai VARCHAR(30) NULL,
  PRIMARY KEY (idBeneficiario))
ENGINE = InnoDB;

DROP TABLE IF EXISTS Funcionario ;

CREATE TABLE IF NOT EXISTS Funcionario (
  idFuncionario INT NOT NULL,
  cpf VARCHAR(11) NOT NULL,
  nome VARCHAR(30) NOT NULL,
  dt_Nascimento DATE NOT NULL,
  nacionalidade VARCHAR(15) NOT NULL,
  funcao VARCHAR(15) NOT NULL,
  endereco VARCHAR(30) NOT NULL,
  bairro VARCHAR(20) NOT NULL,
  cidade VARCHAR(15) NOT NULL,
  telefone VARCHAR(11) NOT NULL,
  email VARCHAR(30) NULL,
  PRIMARY KEY (idFuncionario))
ENGINE = InnoDB;

CREATE UNIQUE INDEX cpf_UNIQUE ON Funcionario (cpf ASC);

DROP TABLE IF EXISTS Voluntario ;

CREATE TABLE IF NOT EXISTS Voluntario (
  idVoluntario INT NOT NULL,
  cpf VARCHAR(11) NOT NULL,
  nome VARCHAR(30) NOT NULL,
  dt_Nascimento DATE NOT NULL,
  nacionalidade VARCHAR(15) NOT NULL,
  endereco VARCHAR(30) NOT NULL,
  bairro VARCHAR(20) NOT NULL,
  cidade VARCHAR(15) NOT NULL,
  telefone VARCHAR(11) NOT NULL,
  email VARCHAR(30) NULL,
  habilidade VARCHAR(45) NULL,
  PRIMARY KEY (idVoluntario))
ENGINE = InnoDB;

CREATE UNIQUE INDEX cpf_UNIQUE ON Voluntario (cpf ASC);

DROP TABLE IF EXISTS Doador ;

CREATE TABLE IF NOT EXISTS Doador (
  idDoador INT NOT NULL,
  cpf VARCHAR(11) NULL,
  cnpj VARCHAR(45) NULL,
  nome VARCHAR(30) NOT NULL,
  dt_Nascimento DATE NOT NULL,
  nacionalidade VARCHAR(15) NOT NULL,
  endereco VARCHAR(30) NOT NULL,
  bairro VARCHAR(20) NOT NULL,
  cidade VARCHAR(15) NOT NULL,
  telefone VARCHAR(11) NOT NULL,
  email VARCHAR(30) NULL,
  empresa VARCHAR(45) NULL,
  PRIMARY KEY (idDoador))
ENGINE = InnoDB;

CREATE UNIQUE INDEX cpf_UNIQUE ON Doador (cpf ASC);

CREATE UNIQUE INDEX cnpj_UNIQUE ON Doador (cnpj ASC);

DROP TABLE IF EXISTS Saude ;

CREATE TABLE IF NOT EXISTS Saude (
  idSaude INT NOT NULL,
  medicamento VARCHAR(30) NULL,
  antecedente VARCHAR(45) NULL,
  observacao VARCHAR(45) NULL,
  doenca VARCHAR(45) NULL,
  Beneficiario_idBeneficiario INT NULL,
  Funcionario_idFuncionario INT NULL,
  PRIMARY KEY (idSaude))
ENGINE = InnoDB;

DROP TABLE IF EXISTS Manequim ;

CREATE TABLE IF NOT EXISTS Manequim (
  idManequim INT NOT NULL,
  descricao VARCHAR(30) NOT NULL,
  tamanho VARCHAR(2) NOT NULL,
  Beneficiario_idBeneficiario INT NOT NULL,
  PRIMARY KEY (idManequim, Beneficiario_idBeneficiario))
ENGINE = InnoDB;

DROP TABLE IF EXISTS Doacao ;

CREATE TABLE IF NOT EXISTS Doacao (
  idDoacao INT NOT NULL,
  descricao VARCHAR(50) NOT NULL,
  PRIMARY KEY (idDoacao))
ENGINE = InnoDB;

DROP TABLE IF EXISTS Doacao_Doador ;

CREATE TABLE IF NOT EXISTS Doacao_Doador (
  idDoacao INT NOT NULL,
  idDoador INT NOT NULL,
  PRIMARY KEY (idDoacao, idDoador))
ENGINE = InnoDB;

DROP TABLE IF EXISTS Modalidade ;

CREATE TABLE IF NOT EXISTS Modalidade (
  idModalidade INT NOT NULL,
  nome VARCHAR(15) NOT NULL,
  descricao VARCHAR(45) NOT NULL,
  PRIMARY KEY (idModalidade))
ENGINE = InnoDB;

DROP TABLE IF EXISTS Modalidade_Beneficiario ;

CREATE TABLE IF NOT EXISTS Modalidade_Beneficiario (
  Modalidade INT NOT NULL,
  Beneficiario INT NOT NULL,
  PRIMARY KEY (Modalidade, Beneficiario))
ENGINE = InnoDB;

DROP TABLE IF EXISTS Voluntario_Modalidade ;

CREATE TABLE IF NOT EXISTS Voluntario_Modalidade (
  Voluntario INT NOT NULL,
  Modalidade INT NOT NULL,
  PRIMARY KEY (Voluntario, Modalidade))
ENGINE = InnoDB;

DROP TABLE IF EXISTS Modalidade_Funcionario ;

CREATE TABLE IF NOT EXISTS Modalidade_Funcionario (
  Modalidade INT NOT NULL,
  Funcionario INT NOT NULL,
  PRIMARY KEY (Modalidade, Funcionario))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS horariosystem (
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
)