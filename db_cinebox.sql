-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/02/2025 às 14:29
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_cinebox`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_artistas`
--

CREATE TABLE `tb_artistas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_artistas`
--

INSERT INTO `tb_artistas` (`id`, `nome`) VALUES
(1, 'Zoe Saldaña'),
(2, 'Will Smith'),
(3, 'Joaquin Phoenix'),
(4, 'Robert Pattinson'),
(5, 'Daniel Craig'),
(6, 'Samuel L. Jackson'),
(7, 'Leonardo DiCaprio'),
(8, 'Chris Evans'),
(9, 'Margot Robbie'),
(10, 'Tom Hardy');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_filmes`
--

CREATE TABLE `tb_filmes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `classificacao_indicativa` int(11) DEFAULT NULL,
  `valor_ingresso` decimal(10,2) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_filmes`
--

INSERT INTO `tb_filmes` (`id`, `nome`, `classificacao_indicativa`, `valor_ingresso`, `descricao`, `poster`) VALUES
(1, 'Avatar: O Caminho da Água', 12, 30.00, 'Jake Sully e Neytiri enfrentam novos desafios, explorando a conexão dos Na\'vi com os oceanos.', 'avatar-o-caminho-da-agua.png'),
(2, 'Bad Boys: Até o Fim', 14, 25.00, 'Mike e Marcus enfrentam um crime organizado que ameaça suas vidas e famílias, testando sua amizade.', 'bad-boys-ate-o-fim.png'),
(3, 'Coringa 2', 16, 28.00, 'Arthur Fleck luta com sua identidade e novas figuras que moldam seu destino em uma jornada sombria.', 'coringa-2.png'),
(4, 'Coringa', 16, 16.00, 'Arthur, um comediante fracassado, se transforma no vilão Coringa em uma Gotham decadente.', 'coringa.png'),
(5, 'Desafio Tokyo', 12, 20.00, 'Jovens pilotos competem em Tóquio, enfrentando adversários e suas inseguranças em uma corrida clandestina.', 'desafio-tokyo.png'),
(6, 'Gente Grande 2', 10, 18.00, 'Amigos de infância se reúnem para um fim de semana divertido, lidando com responsabilidades de adultos.', 'gente-grande-2.png'),
(7, 'Pulp Fiction', 18, 22.00, 'Obra-prima que entrelaça histórias de crime em LA, explorando temas de redenção e moralidade.', 'pulp-fiction.png'),
(8, 'Sem Tempo Para Morrer', 12, 35.00, 'James Bond enfrenta um novo desafio com tecnologia perigosa nas mãos erradas, lutando por proteção.', 'sem-tempo-para-morrer.png'),
(9, 'Star Wars: The Last Jedi', 10, 30.00, 'Rey busca entender seu poder enquanto Kylo Ren lida com suas decisões, explorando esperança e sacrifício.', 'star-wars-the-last-jedi.png'),
(10, 'The Batman', 14, 28.00, 'Bruce Wayne investiga crimes em Gotham, enfrentando vilões e questionando o que significa ser um herói.', 'the-batman.png'),
(11, 'Duna', 12, 32.00, 'Uma épica adaptação do clássico da ficção científica, \"Duna\" explora a luta pelo controle do planeta desértico Arrakis. Paul Atreides deve enfrentar inimigos e descobrir seu destino em uma batalha interplanetária por recursos vitais.', 'duna.png'),
(12, 'Spider-Man: Sem Volta Para Casa', 12, 30.00, 'Peter Parker lida com as consequências de sua identidade secreta revelada. Em uma tentativa de recuperar sua vida normal, ele busca a ajuda do Doutor Estranho, o que resulta em consequências inesperadas.', 'spider-man-sem-volta-para-casa.png'),
(13, 'Os Incríveis 2', 10, 20.00, 'A família de super-heróis está de volta! Helen sai para salvar o mundo enquanto Bob fica em casa cuidando das crianças. Uma aventura cheia de ação e humor que explora temas de família e heroísmo.', 'os-incriveis-2.png'),
(14, 'Tenet', 14, 28.00, 'Um agente secreto é armado com apenas uma palavra - Tenet - e está lutando por sua sobrevivência em um mundo de espionagem. Através do tempo e de uma realidade invertida, ele tenta impedir a Terceira Guerra Mundial.', 'tenet.png'),
(15, 'Matrix Resurrections', 14, 35.00, 'Neo e Trinity estão de volta em uma nova realidade onde devem redescobrir seus passados e lutar contra novas ameaças. A sequência traz novas camadas à filosofia da Matrix e à luta pela liberdade.', 'matrix-resurrections.png'),
(16, 'Vingadores: Ultimato', 12, 12.00, 'Os Vingadores se reúnem para reverter os danos causados por Thanos e restaurar a ordem no universo. Uma épica conclusão de uma saga que definiu gerações.', 'vingadores-ultimato.png'),
(17, 'A Forma da Água', 14, 25.00, 'Uma história de amor entre uma mulher muda e uma criatura aquática em um laboratório secreto. Uma fábula visualmente impressionante que explora temas de amor, solidão e aceitação.', 'a-forma-da-agua.png'),
(18, 'Jojo Rabbit', 10, 20.00, 'Um jovem garoto na Alemanha nazista descobre que sua mãe está escondendo uma jovem judia em sua casa. Com a ajuda de seu amigo imaginário, Adolf Hitler, ele deve confrontar suas crenças e preconceitos.', 'jojo-rabbit.png'),
(19, 'A Guerra do Amanhã', 12, 25.00, 'Um grupo de soldados é enviado ao futuro para lutar contra alienígenas. Enquanto a batalha se intensifica, eles devem descobrir o que realmente significa lutar pela sobrevivência.', 'a-guerra-do-amanha.png'),
(20, 'Cruella', 12, 30.00, 'A origem da famosa vilã de \"101 Dálmatas\". A história segue Estella, uma jovem criativa que se torna a famosa Cruella de Vil, enquanto luta por sua identidade em um mundo dominado pela moda.', 'cruella.png'),
(21, 'Shang-Chi e a Lenda dos Dez Anéis', 12, 28.00, 'Um jovem mestre das artes marciais deve confrontar seu passado e os dez anéis misteriosos de sua família. Uma aventura de ação que combina cultura e fantasia.', 'shang-chi.png'),
(22, 'Free Guy', 10, 22.00, 'Um funcionário de banco descobre que é, na verdade, um personagem em um videogame. Ele decide se tornar o herói de sua própria história em uma comédia divertida e cheia de ação.', 'free-guy.png'),
(23, 'Candlelight', 10, 18.00, 'Um drama introspectivo sobre um artista lutando para encontrar seu lugar no mundo enquanto lida com as consequências de suas escolhas e a busca pela autenticidade.', 'candlelight.png'),
(24, 'A Mulher na Janela', 16, 28.00, 'Uma psicóloga agorafóbica acredita ter testemunhado um crime do outro lado da rua. Combinando suspense psicológico e mistério, o filme mergulha em temas de percepção e realidade.', 'a-mulher-na-janela.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_filme_artista`
--

CREATE TABLE `tb_filme_artista` (
  `id` int(11) NOT NULL,
  `filme_id` int(11) DEFAULT NULL,
  `artista_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_filme_artista`
--

INSERT INTO `tb_filme_artista` (`id`, `filme_id`, `artista_id`) VALUES
(1, 1, 1),
(2, 1, 9),
(3, 1, 10),
(4, 1, 6),
(5, 2, 2),
(6, 2, 6),
(7, 2, 4),
(8, 2, 3),
(9, 3, 3),
(10, 3, 9),
(11, 3, 7),
(12, 3, 5),
(13, 4, 3),
(14, 4, 9),
(15, 4, 10),
(16, 4, 4),
(17, 5, 2),
(18, 5, 1),
(19, 5, 8),
(20, 5, 6),
(21, 6, 6),
(22, 6, 1),
(23, 6, 2),
(24, 6, 4),
(25, 7, 7),
(26, 7, 3),
(27, 7, 2),
(28, 7, 10),
(29, 11, 7),
(30, 11, 9),
(31, 12, 8),
(32, 12, 3),
(33, 13, 1),
(34, 14, 3),
(35, 15, 7),
(36, 16, 2),
(37, 17, 9),
(38, 18, 8),
(39, 19, 10),
(40, 20, 3),
(41, 21, 6),
(42, 22, 4),
(43, 23, 5),
(44, 24, 10),
(45, 11, 7),
(46, 11, 9),
(47, 12, 8),
(48, 12, 3),
(49, 13, 1),
(50, 14, 3),
(51, 15, 7),
(52, 16, 2),
(53, 17, 9),
(54, 18, 8),
(55, 19, 10),
(56, 20, 3),
(57, 21, 6),
(58, 22, 4),
(59, 23, 5),
(60, 24, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_filme_genero`
--

CREATE TABLE `tb_filme_genero` (
  `id` int(11) NOT NULL,
  `filme_id` int(11) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_filme_genero`
--

INSERT INTO `tb_filme_genero` (`id`, `filme_id`, `genero_id`) VALUES
(1, 1, 6),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 4),
(6, 2, 5),
(7, 3, 3),
(8, 3, 5),
(9, 3, 1),
(10, 4, 3),
(11, 4, 5),
(12, 4, 1),
(13, 5, 1),
(14, 5, 2),
(15, 5, 6),
(16, 6, 4),
(17, 6, 1),
(18, 6, 3),
(19, 7, 3),
(20, 7, 1),
(21, 7, 5),
(22, 8, 1),
(23, 8, 3),
(24, 8, 5),
(25, 9, 2),
(26, 9, 6),
(27, 9, 3),
(28, 10, 1),
(29, 10, 3),
(30, 10, 5),
(31, 11, 6),
(32, 11, 2),
(33, 12, 6),
(34, 12, 1),
(35, 13, 4),
(36, 13, 1),
(37, 14, 6),
(38, 14, 1),
(39, 15, 6),
(40, 15, 1),
(41, 16, 1),
(42, 16, 3),
(43, 17, 3),
(44, 17, 6),
(45, 18, 3),
(46, 18, 4),
(47, 19, 1),
(48, 19, 6),
(49, 20, 3),
(50, 20, 4),
(51, 21, 1),
(52, 21, 6),
(53, 22, 4),
(54, 22, 1),
(55, 23, 3),
(56, 24, 5),
(57, 24, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_generos`
--

CREATE TABLE `tb_generos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cor` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_generos`
--

INSERT INTO `tb_generos` (`id`, `nome`, `cor`) VALUES
(1, 'Ação', '904141'),
(2, 'Aventura', '7C038C'),
(3, 'Drama', '070373'),
(4, 'Comédia', '210D26'),
(5, 'Terror', 'D966BA'),
(6, 'Ficção', '580259');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pessoa`
--

CREATE TABLE `tb_pessoa` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `ano_nascimento` year(4) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `telefone_1` varchar(11) DEFAULT NULL,
  `telefone_2` varchar(11) DEFAULT NULL,
  `logradouro` varchar(150) DEFAULT NULL,
  `n_casa` int(5) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_pessoa`
--

INSERT INTO `tb_pessoa` (`id`, `nome`, `ano_nascimento`, `cpf`, `telefone_1`, `telefone_2`, `logradouro`, `n_casa`, `bairro`, `cidade`) VALUES
(1, 'Harry Potter', '1980', '12345678901', '11987654321', '11998765432', 'Rua dos Feiticeiros', 34, 'Bairro Mágico', 'Londres'),
(2, 'Luke Skywalker', '1977', '23456789012', '11223344556', '11224455667', 'Avenida Tatooine', 22, 'Deserto', 'Mos Eisley'),
(3, 'Frodo Baggins', '1983', '34567890123', '11911223344', '11922334455', 'Morro do Condado', 2, 'Condado', 'Shire'),
(4, 'Indiana Jones', '1945', '45678901234', '11334455667', '11335566778', 'Rua da Aventura', 58, 'Centro Histórico', 'Jonesville'),
(5, 'Trinity', '1976', '56789012345', '11445566778', '11456677889', 'Av. Matrix', 99, 'Bairro Virtual', 'Cidade Matrix');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `id_pessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id`, `usuario`, `senha`, `id_pessoa`) VALUES
(1, 'harry_potter', 'senha123', 1),
(2, 'luke_skywalker', 'forca123', 2),
(3, 'frodo_baggins', 'anello123', 3),
(4, 'indy_jones', 'arqueologia123', 4),
(5, 'trinity_matrix', 'neo123', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_artistas`
--
ALTER TABLE `tb_artistas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_filmes`
--
ALTER TABLE `tb_filmes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_filme_artista`
--
ALTER TABLE `tb_filme_artista`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filme_id` (`filme_id`),
  ADD KEY `artista_id` (`artista_id`);

--
-- Índices de tabela `tb_filme_genero`
--
ALTER TABLE `tb_filme_genero`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filme_id` (`filme_id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Índices de tabela `tb_generos`
--
ALTER TABLE `tb_generos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_pessoa`
--
ALTER TABLE `tb_pessoa`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pessoa` (`id_pessoa`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_artistas`
--
ALTER TABLE `tb_artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tb_filmes`
--
ALTER TABLE `tb_filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `tb_filme_artista`
--
ALTER TABLE `tb_filme_artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `tb_filme_genero`
--
ALTER TABLE `tb_filme_genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `tb_generos`
--
ALTER TABLE `tb_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_pessoa`
--
ALTER TABLE `tb_pessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_filme_artista`
--
ALTER TABLE `tb_filme_artista`
  ADD CONSTRAINT `tb_filme_artista_ibfk_1` FOREIGN KEY (`filme_id`) REFERENCES `tb_filmes` (`id`),
  ADD CONSTRAINT `tb_filme_artista_ibfk_2` FOREIGN KEY (`artista_id`) REFERENCES `tb_artistas` (`id`);

--
-- Restrições para tabelas `tb_filme_genero`
--
ALTER TABLE `tb_filme_genero`
  ADD CONSTRAINT `tb_filme_genero_ibfk_1` FOREIGN KEY (`filme_id`) REFERENCES `tb_filmes` (`id`),
  ADD CONSTRAINT `tb_filme_genero_ibfk_2` FOREIGN KEY (`genero_id`) REFERENCES `tb_generos` (`id`);

--
-- Restrições para tabelas `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD CONSTRAINT `tb_usuario_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
