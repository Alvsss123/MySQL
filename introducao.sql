create table corretor (
	corretor_id int auto_increment primary key,
    email varchar(100) not null,
    cpf varchar(14) unique not null,
    nome varchar(100) not null,
    telefone varchar(15) not null,
    creci varchar(20),
    data_admissao date not null,
    data_demissao date not null,
    status enum('Ativo', 'Inativo', 'Férias') default 'Ativo',
    data_cadastro datetime default current_timestamp,
    especialidade enum('Imoveis', 'Automóveis', 'Saúde')
    );