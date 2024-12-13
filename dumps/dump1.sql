-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/12/2024 às 14:27
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--
CREATE DATABASE IF NOT EXISTS `cadastro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cadastro`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL DEFAULT 0,
  `nomecurso` varchar(35) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(10) UNSIGNED DEFAULT NULL,
  `totaulas` int(10) UNSIGNED DEFAULT NULL,
  `ano` year(4) DEFAULT 2016
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nomecurso`, `descricao`, `carga`, `totaulas`, `ano`) VALUES
(1, 'HTML5', 'Curso de HTML5', 40, 37, '2014'),
(2, 'Algoritmos', 'Logíca de Programação', 20, 15, '2014'),
(3, 'Photoshop5', 'Dicas de Photoshop CC', 10, 8, '2014'),
(4, 'PHP', 'Curso de PHP para iniciantes', 40, 20, '2015'),
(5, 'Java', 'Introdução a Linguagem Java', 40, 29, '2015'),
(6, 'MySQL', 'Bancos de Dados MySQL', 30, 15, '2016'),
(7, 'Word', 'Curso completo de Word', 40, 30, '2016'),
(8, 'Python', 'Curso de Python', 40, 18, '2017'),
(9, 'POO', 'Curso de Programação Orientada a Objetos', 60, 35, '2016'),
(10, 'Excel', 'Curso completo de Excel', 40, 30, '2017'),
(11, 'Responsividade', 'Curso de Responsividade', 30, 15, '2018'),
(12, 'C++', 'Curso de C++ Como Orientar a Objetos', 40, 25, '2017'),
(13, 'C#', 'Curso de C#', 30, 12, '2017'),
(14, 'Android', 'Curso de Desenvolvimento de Aplicativos para Android', 60, 30, '2018'),
(15, 'JavaScript', 'Curso de JavaScript', 35, 18, '2017'),
(16, 'PowerPoint', 'Curso completo de PowerPoint', 30, 12, '2018'),
(17, 'Swift', 'Curso de Desenvolvimento de Aplicativos para iOS', 60, 30, '2019'),
(18, 'Hardware', 'Curso de Montagem e Manutenção de Computadores', 30, 12, '2017'),
(19, 'Redes', 'Curso de Redes para Iniciantes', 40, 15, '2016'),
(20, 'Segurança da Informação', 'Curso de Segurança', 15, 8, '2018'),
(21, 'SEO', 'Curso de Otimização de Sites', 30, 12, '2017'),
(22, 'Premiere', 'Curso de Editar Video com Premiere', 20, 10, '2017'),
(23, 'After Effects', 'Curso de Efeitos de Video com After effects', 20, 10, '2018'),
(24, 'WordPress', 'Curso de Criar Sites com Wordpress', 60, 30, '2019'),
(25, 'Joomla', 'Curso de Criar Sites com Joomla', 60, 30, '2019'),
(26, 'Magento', 'Curso de Criar Lojas na Internet com Magento', 50, 25, '2019'),
(27, 'Modelagem de Dados', 'Curso de Modelagem de Dados', 30, 12, '2020'),
(29, 'PHP7', 'Curso de Php Versão 7', 40, 20, '2020'),
(30, 'PHP4', 'Curso de Php Versão 4', 30, 11, '2010');

-- --------------------------------------------------------

--
-- Estrutura para tabela `gafanhotos`
--

CREATE TABLE `gafanhotos` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  `cursoprefetido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `gafanhotos`
--

INSERT INTO `gafanhotos` (`id`, `nome`, `profissao`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`, `cursoprefetido`) VALUES
(1, 'Daniel Morais', 'Auxiliar Administrat', '1984-01-02', 'M', 78.50, 1.83, 'Brasil', 6),
(2, 'Talita Nascimento', 'Farmacéutico', '1999-12-30', 'F', 55.20, 1.65, 'Portugal', 22),
(3, 'Emerson Gabriel', 'Programador', '1920-12-30', 'M', 50.20, 1.65, 'Moçambique', 12),
(4, 'Lucas Damasceno', 'Auxiliar Administrat', '1930-11-02', 'M', 63.20, 1.75, 'Irlanda', 7),
(5, 'Leila Martins', 'Farmacéutico', '1975-04-22', 'F', 99.00, 2.15, 'Brasil', 1),
(6, 'Leticia Neves', 'Programador', '1999-12-03', 'F', 87.00, 2.00, 'Brasil', 8),
(7, 'Janaina Couto', 'Auxiliar Administrat', '1987-11-12', 'F', 75.40, 1.66, 'EUA', 4),
(8, 'Carlisson Rosa', 'Professor', '2010-08-01', 'M', 78.22, 1.98, 'Brasil', 5),
(9, 'Jackson Telles', 'Programador', '1999-01-23', 'M', 55.75, 1.33, 'Portugal', 3),
(10, 'Danilo Araujo', 'Dentista', '1975-12-10', 'M', 99.21, 1.87, 'EUA', 30),
(11, 'Andreia Delfino', 'Auxiliar Administrat', '1975-07-01', 'F', 48.64, 1.54, 'Irlanda', 22),
(12, 'Valter Vilmerson', 'Ator', '1985-10-12', 'M', 88.55, 2.03, 'Brasil', 8),
(13, 'Allan Silva', 'Programador', '1993-11-11', 'M', 76.99, 1.55, 'Brasil', 3),
(14, 'Rosana Kunz', 'Professor', '1935-01-16', 'F', 55.24, 1.87, 'Brasil', 5),
(15, 'Josiane Dutra', 'Empreendedor', '1950-01-20', 'F', 98.70, 1.04, 'Portugal', 4),
(16, 'Elvis Schwarz', 'Dentista', '2011-05-07', 'M', 66.69, 1.76, 'EUA', 9),
(17, 'Paulo Narley', 'Auxiliar Administrat', '1997-03-17', 'M', 120.10, 2.22, 'Brasil', 29),
(18, 'Joade Assis', 'Médico', '1930-12-01', 'M', 65.88, 1.78, 'França', 30),
(19, 'Nara Matos', 'Programador', '1978-03-17', 'F', 65.90, 1.33, 'Brasil', 21),
(20, 'Marcos Dissotti', 'Empreendedor', '2010-01-01', 'M', 53.79, 1.54, 'Portugal', 19),
(21, 'Ana Carolina Mendes', 'Ator', '2000-12-15', 'F', 88.30, 1.54, 'Brasil', 20),
(22, 'Guilherme de Sousa', 'Dentista', '2001-05-18', 'M', 132.70, 1.97, 'Moçambique', 17),
(23, 'Bruno Torres', 'Auxiliar Administrat', '2000-01-30', 'M', 44.65, 1.65, 'Brasil', 18),
(24, 'Yuji Homa', 'Empreendedor', '1996-12-25', 'M', 33.90, 1.22, 'Japão', 20),
(25, 'Raian Porto', 'Programador', '1989-05-05', 'M', 54.89, 1.54, 'Brasil', 19),
(26, 'Paulo Batista', 'Ator', '1999-03-15', 'M', 110.12, 1.87, 'Portugal', 1),
(27, 'Monique Precivalli', 'Auxiliar Administrat', '2013-12-30', 'F', 48.20, 1.22, 'Brasil', 5),
(28, 'Herisson Silva', 'Auxiliar Administrat', '1965-10-10', 'M', 74.65, 1.56, 'EUA', 4),
(29, 'Tiago Ulisses', 'Dentista', '1993-04-22', 'M', 150.30, 2.35, 'Brasil', 9),
(30, 'Anderson Rafael', 'Programador', '1989-12-01', 'M', 64.22, 1.44, 'Irlanda', 8),
(31, 'Karine Ribeiro', 'Empreendedor', '1988-10-01', 'F', 42.10, 1.65, 'Brasil', 5),
(32, 'Roberto Luiz Debarba', 'Ator', '2007-01-09', 'M', 77.44, 1.56, 'Brasil', 6),
(33, 'Jarismar Andrade', 'Dentista', '2000-06-23', 'F', 63.70, 1.33, 'Brasil', 9),
(34, 'Janaina Oliveira', 'Professor', '1955-03-12', 'F', 52.90, 1.76, 'Canadá', 11),
(35, 'Marcio Mello', 'Programador', '2011-11-20', 'M', 54.11, 1.55, 'EUA', 13),
(36, 'Robson Rodolpho', 'Auxiliar Administrat', '2000-08-08', 'M', 110.10, 1.76, 'Brasil', 15),
(37, 'Daniele Moledo', 'Empreendedor', '2006-08-11', 'F', 101.30, 1.99, 'Brasil', 12),
(38, 'Neto Sophiate', 'Ator', '1996-05-17', 'M', 59.28, 1.65, 'Portugal', 14),
(39, 'Neriton Dias', 'Auxiliar Administrat', '2009-10-30', 'M', 48.99, 1.29, 'Brasil', 17),
(40, 'Andre Schmidt', 'Programador', '1993-07-26', 'M', 55.37, 1.22, 'Angola', 19),
(41, 'Isaias Buscarino', 'Dentista', '2001-01-07', 'M', 99.90, 1.55, 'Moçambique', 9),
(42, 'Rafael Guimma', 'Empreendedor', '1968-04-11', 'M', 88.88, 1.54, 'Brasil', 5),
(43, 'Ana Carolina Hernandes', 'Ator', '1970-10-11', 'F', 65.40, 2.08, 'EUA', 8),
(44, 'Luiz Paulo', 'Professor', '1984-11-01', 'M', 75.12, 1.38, 'Portugal', 7),
(45, 'Bruna Teles', 'Programador', '1980-11-07', 'F', 55.10, 1.86, 'Brasil', 5),
(46, 'Diogo Padilha', 'Auxiliar Administrat', '2000-03-03', 'M', 54.34, 1.88, 'Angola', 6),
(47, 'Bruno Miltersteiner', 'Dentista', '1986-02-19', 'M', 77.45, 1.65, 'Alemanha', 9),
(48, 'Elaine Nunes', 'Programador', '1998-08-15', 'F', 35.90, 2.00, 'Canadá', 4),
(49, 'Silvio Ricardo', 'Programador', '2012-03-12', 'M', 65.99, 1.23, 'EUA', 7),
(50, 'Denilson Barbosa da Silva', 'Empreendedor', '2000-01-08', 'M', 97.30, 2.00, 'Brasil', 8),
(51, 'Jucinei Teixeira', 'Professor', '1977-11-22', 'F', 44.80, 1.76, 'Portugal', 8),
(52, 'Bruna Santos', 'Auxiliar Administrat', '1991-12-01', 'F', 76.30, 1.45, 'Canadá', 5),
(53, 'Andre Vitebo', 'Médico', '1970-07-01', 'M', 44.11, 1.55, 'Brasil', 10),
(54, 'Andre Santini', 'Programador', '1991-08-15', 'M', 66.00, 1.76, 'Itália', 15),
(55, 'Ruan Valente', 'Programador', '1998-03-19', 'M', 101.90, 1.76, 'Canadá', 18),
(56, 'Nailton Mauricio', 'Médico', '1992-04-25', 'M', 86.01, 1.43, 'EUA', 21),
(57, 'Rita Pontes', 'Professor', '1999-09-02', 'F', 54.10, 1.35, 'Angola', 24),
(58, 'Carlos Camargo', 'Programador', '2005-02-22', 'M', 124.65, 1.33, 'Brasil', 30),
(59, 'Philppe Oliveira', 'Auxiliar Administrat', '2000-05-23', 'M', 105.10, 2.19, 'Brasil', 4),
(60, 'Dayana Dias', 'Professor', '1993-05-30', 'F', 88.30, 1.66, 'Angola', 3),
(61, 'Silvana Albuquerque', 'Programador', '1999-05-22', 'F', 56.00, 1.50, 'Brasil', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcurso`),
  ADD UNIQUE KEY `nome` (`nomecurso`);

--
-- Índices de tabela `gafanhotos`
--
ALTER TABLE `gafanhotos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `gafanhotos`
--
ALTER TABLE `gafanhotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `gafanhotos`
--
ALTER TABLE `gafanhotos`
  ADD CONSTRAINT `gafanhotos_ibfk_1` FOREIGN KEY (`cursoprefetido`) REFERENCES `cursos` (`idcurso`);
--
-- Banco de dados: `estudonauta`
--
CREATE DATABASE IF NOT EXISTS `estudonauta` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estudonauta`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `generos`
--

CREATE TABLE `generos` (
  `cod` int(11) NOT NULL,
  `genero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `generos`
--

INSERT INTO `generos` (`cod`, `genero`) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'Terror'),
(4, 'Plataforma'),
(5, 'Estratégia'),
(6, 'RPG'),
(7, 'Esporte'),
(8, 'Corrida'),
(9, 'Tabuleiro'),
(10, 'Puzzle'),
(11, 'Luta'),
(12, 'Musical');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogos`
--

CREATE TABLE `jogos` (
  `cod` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text NOT NULL,
  `nota` decimal(4,2) NOT NULL,
  `capa` varchar(40) DEFAULT NULL,
  `genero` int(11) NOT NULL,
  `produtora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogos`
--

INSERT INTO `jogos` (`cod`, `nome`, `descricao`, `nota`, `capa`, `genero`, `produtora`) VALUES
(1, 'assassin creed', 'Franquia da Ubisoft que mistura ação, aventura e furtividade, ambientada em períodos históricos como o Egito Antigo e o Renascimento. O jogador assume o papel de um assassino, explorando mundos abertos ricos em detalhes enquanto enfrenta a ordem dos Templários.', 8.50, 'assassin.png', 1, 10),
(2, 'call of duty', 'Call of Duty é uma série de jogos de tiro em primeira pessoa, focada em batalhas militares e campanhas históricas. Com modos multiplayer e cooperativos, a franquia é conhecida por sua ação intensa e gráficos realistas.', 9.00, 'cod.png', 1, 5),
(3, 'csgo', 'Counter-Strike: Global Offensive (CS:GO) é um jogo de tiro em primeira pessoa focado em equipes de contraterroristas e terroristas, com objetivos como desarmar bombas ou resgatar reféns. É popular por seu modo competitivo, jogabilidade estratégica e torneios de eSports', 8.75, 'cs.png', 1, 11),
(4, 'donkey kong', 'Donkey Kong é um clássico jogo de arcade desenvolvido pela Nintendo, onde o jogador controla Mario (anteriormente conhecido como Jumpman) para resgatar a princesa Pauline de Donkey Kong, um grande gorila. O jogo é conhecido por suas plataformas desafiadoras e mecânicas de salto.', 7.50, 'donkey.png', 4, 3),
(5, 'god of war', 'God of War é uma série de jogos de ação e aventura desenvolvida pela Santa Monica Studio, centrada no personagem Kratos, um guerreiro espartano que enfrenta deuses e mitologias diversas. A série é conhecida por sua jogabilidade intensa, gráficos impressionantes e narrativa envolvente.', 9.50, 'gow.png', 1, 4),
(6, 'gta', 'Grand Theft Auto (GTA) é uma série de jogos de ação e aventura desenvolvida pela Rockstar Games, conhecida por seu mundo aberto, onde os jogadores podem explorar cidades fictícias, realizar missões e interagir com diversos elementos. A franquia é famosa pela liberdade de ação, violência e sátira social.', 10.00, 'gta.png', 1, 15),
(7, 'lol', 'League of Legends (LoL) é um jogo de multiplayer online competitivo (MOBA) desenvolvido pela Riot Games, onde equipes de campeões lutam para destruir a base adversária. Com uma jogabilidade estratégica e constante atualização, LoL é um dos maiores jogos de eSports do mundo.', 8.00, 'lol.png', 5, 2),
(8, 'mario', 'Mario é um icônico personagem de videogame criado pela Nintendo, conhecido por suas aventuras em mundos coloridos, enfrentando inimigos e resgatando a Princesa Peach. A franquia inclui diversos jogos de plataforma, kart, esportes e RPGs, sendo uma das mais populares e influentes da história dos games', 8.50, 'mario.png', 4, 3),
(9, 'metal', 'Metal Gear é uma série de jogos de ação e furtividade criada por Hideo Kojima, focada nas missões de Solid Snake, um soldado especializado em infiltração. A série é famosa por suas complexas histórias, mecânicas de stealth e crítica a temas como guerra e política global.', 9.25, 'metal.png', 1, 9),
(10, 'resident', 'Resident Evil é uma série de jogos de survival horror desenvolvida pela Capcom, onde os jogadores enfrentam zumbis e criaturas mutantes em cenários apocalípticos. A franquia é conhecida por sua atmosfera tensa, jogabilidade de sobrevivência e enredos focados em vírus e conspirações.', 9.00, 'resident.png', 3, 9),
(11, 'sonic', 'Sonic the Hedgehog é uma série de jogos de plataforma criada pela SEGA, centrada em Sonic, um ouriço azul super-rápido, que luta contra o vilão Dr. Robotnik. A franquia é famosa por suas fases velozes, personagens carismáticos e pelo impacto cultural no mundo dos videogames.', 10.00, 'sonic.png', 4, 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtoras`
--

CREATE TABLE `produtoras` (
  `cod` int(11) NOT NULL,
  `produtora` varchar(20) NOT NULL,
  `pais` varchar(20) NOT NULL DEFAULT 'eua'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtoras`
--

INSERT INTO `produtoras` (`cod`, `produtora`, `pais`) VALUES
(1, 'Microsoft', 'Eua'),
(2, 'Tencent', 'China'),
(3, 'Nintendo', 'Japão'),
(4, 'Sony', 'Japão'),
(5, 'Activison', 'Eua'),
(6, 'EA', 'Eua'),
(7, 'Sega', 'Japão'),
(8, 'Namco Bandai', 'Japão'),
(9, 'Konami', 'Japão'),
(10, 'Ubisoft', 'Eua'),
(11, 'Valve', 'Eua'),
(12, 'Square Enix', 'Japão'),
(13, 'Take Two', 'Eua'),
(14, 'Capcom', 'Japão'),
(15, 'Rockstar Games', 'Eua');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usauarios`
--

CREATE TABLE `usauarios` (
  `usuario` varchar(10) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `senha` varchar(60) NOT NULL,
  `tipo` varchar(10) NOT NULL DEFAULT 'editor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usauarios`
--

INSERT INTO `usauarios` (`usuario`, `nome`, `senha`, `tipo`) VALUES
('admin', 'Gustavo Guanabara', '$2y$10$Wt11EowL0F50bffqDw4cUexKyMaCqg/yKt23xJEUkNcQw3Skt/hcW', 'admin'),
('teste', 'João da Silva', '$2y$10$PT2fZrSvkeEdPftcmtDaVuKBQNpYAgF.2HbR0uqUz3egjIz2yVUtm', 'editor');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`cod`);

--
-- Índices de tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `genero` (`genero`),
  ADD KEY `produtora` (`produtora`);

--
-- Índices de tabela `produtoras`
--
ALTER TABLE `produtoras`
  ADD PRIMARY KEY (`cod`);

--
-- Índices de tabela `usauarios`
--
ALTER TABLE `usauarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtoras`
--
ALTER TABLE `produtoras`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `jogos`
--
ALTER TABLE `jogos`
  ADD CONSTRAINT `jogos_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `generos` (`cod`),
  ADD CONSTRAINT `jogos_ibfk_2` FOREIGN KEY (`produtora`) REFERENCES `produtoras` (`cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
