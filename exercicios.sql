-- Exercicios
-- 1- Cadastre na tabela tipo_usuario um novo tipo com a descrição: Visitante 
select * FROM tipo_usuario;
insert into tipo_usuario (descricao) values ('visitante');

-- 2- Cadastre na tabela armario um novo armário com os seguintes dados: Número: A06, Status: Disponível
insert into armario (numero, status)
	values ('A06', 'Disponível');

-- 3- Cadastre na tabela categoria a seguinte categoria: Desenvolvimento Web
insert into categoria (nome)
	values ('Desenvolvimento Web');
    
-- 4- Cadastre na tabela editora a seguinte editora: Casa do Código
insert into editora (nome)
	values ('Casa do Código');
    
-- 5- Cadastre na tabela autor o seguinte autor: Martin Fowler
insert into autor (nome)
	values ('Martin Fowler');
    
-- 6- Cadastre na tabela espaco um novo espaço com os seguintes dados: Nome: Sala de Estudos 3, Capacidade: 12, Localização: 2º andar, Status: Disponível
insert into espaco (nome, capacidade, localizacao, status)
	values ('Sala de Estudos 3', 12, '2º andar','Disponível');

-- 7- Cadastre na tabela usuario um novo usuário com os seguintes dados:  Nome: Fernanda Lima, E-mail: fernanda.lima@email.com, Senha: 123456, Telefone: 31999990006, Tipo de usuário: utilize um id_tipo_usuario existente, Armário: nenhum
insert into usuario (nome, email, senha, telefone, id_tipo_usuario, id_armario)
	values ('Fernanda Lima', 'fernanda.lima@email.com','123456','31999990006', 4, 4);