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
insert into usuario (nome, email, senha, telefone, id_tipo_usuario)
	values ('Fernanda Lima', 'fernanda.lima@email.com','123456','31999990006', 4);
    
-- 8- Cadastre na tabela livro um novo livro com os seguintes dados: ISBN: 9788550800653, Título: Engenharia de Software, Ano de publicação: 2019, Categoria: utilize um id_categoria existente, Editora: utilize um id_editora existente 
insert into livro (isbn, titulo, ano_publicacao, id_categoria, id_editora)
	values ('9788550800653', 'Engenharia de Softwre','2019',2,6);
    
-- 9- Faça uma consulta que apresente todos os dados de todos os usuários cadastrados
select * from usuario;

-- 10- Faça uma consulta que apresente somente as seguintes informações dos usuários: nome, e-mail, telefone
select nome, email, telefone from usuario;

-- 11- Faça uma consulta que apresente somente o usuário cujo id_usuario seja igual a 3.
select * from usuario where id_usuario = 3;

-- 12- Faça uma consulta que apresente o livro cujo ISBN seja: 9788535910663
select * from livro where isbn = 9788535910663;

-- 13- Faça uma consulta que apresente todos os livros cujo id_categoria seja igual a 2.
select * from livro where id_categoria = 2;

-- 14- Faça uma consulta que apresente somente os empréstimos cujo status seja: Emprestado 
select * from emprestimo where status = 'EMPRESTADO';

-- 15- Faça uma consulta que apresente somente as reservas de livros cujo status seja: Ativa 
select * from reserva_livro where status = 'ATIVA';

-- 16- Faça uma consulta que apresente somente os espaços cujo status seja: Disponível 
select * from reserva_espaco where status = 'DISPONIVEL';

-- 17- Altere o telefone do usuário cujo id_usuario seja igual a 1 para: 31988887777
update usuario set telefone = 31988887777 where id_usuario = 1;

-- 18- Altere os seguintes dados do usuário cujo id_usuario seja igual a 2: E-mail: maria.souza@biblioteca.com ,Telefone: 31988886666
update usuario set email = 'maria.souza@biblioteca.com', telefone = 31988886666 where id_usuario = 2;

-- 19- Altere o status do armário cujo id_armario seja igual a 4 para: Ocupado
update armario set status = 'Ocupado' where id_armario = 4;

-- 20- Altere o nome da categoria: Banco de Dados para: Banco de Dados e SQL
update categoria set nome = 'Banco de Dados e SQL' where id_categoria = 4;

-- 21- Altere o espaço cujo id_espaco seja igual a 3. Novos dados: Capacidade: 25, Status: Ocupado 
update espaco set capacidade = 25, status = 'Ocupado' where id_espaco = 3;

-- 22- O empréstimo cujo id_emprestimo seja igual a 4 foi devolvido. Atualize: Data de devolução: 2026-08-27, Status: Devolvido
update emprestimo set data_devolucao = '2026-08-17', status = 'Devolvido' where id_emprestimo = 4;

-- 23- Altere o status da reserva de livro cujo id_reserva_livro seja igual a 1 para: Cancelada
update reserva_livro set status = 'Cancelada' where id_reserva_livro = 1;

-- 24- Altere o status da reserva de espaço cujo id_reserva_espaco seja igual a 5 de: Pendente para: Confirmada
update reserva_espaco set status = 'Confirmada' where id_reserva_espaco = 5;

-- 25- 	Primeiro, cadastre na tabela categoria uma categoria chamada: Categoria Teste

-- 26- Primeiro, cadastre na tabela autor:  Autor Teste, em seguida, exclua ela pelo id gerado. 

-- 27- Primeiro, cadastre um espaço com os seguintes dados: Nome: Sala Temporária, Capacidade: 5, Localização: Térreo, Status: Disponível, em seguida, exclua ela pelo id gerado. 

-- 28 - Exclua o tipo_usuario de id_tipo_usuario igual a 1. O que aconteceu? Qual a mensagem recebida? O que significa? Como resolver?
