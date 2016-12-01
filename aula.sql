-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Dez-2016 às 00:26
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aula`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Airton', 'airton@email.com', '112358'),
(2, 'Sergio', 'sergio@email.com', '112358'),
(22, ' Aline ', ' al@email.com ', ' e44f8cf63970db5c2df0a18153bcdf49 '),
(21, ' Anderson ', ' ander@email.com ', ' e44f8cf63970db5c2df0a18153bcdf49 '),
(19, ' Teste ', ' teste@email.com ', ' e44f8cf63970db5c2df0a18153bcdf49 '),
(20, ' Algusto ', ' al@emaiol.com ', ' e44f8cf63970db5c2df0a18153bcdf49 '),
(23, ' Junior ', ' ju@email.com ', ' e44f8cf63970db5c2df0a18153bcdf49 '),
(28, ' teste ', ' teste@email.com ', ' e44f8cf63970db5c2df0a18153bcdf49 '),
(30, ' Sergio ', ' s@email.com ', ' e10adc3949ba59abbe56e057f20f883e '),
(32, ' Sergio ', ' ser@email.com ', ' e10adc3949ba59abbe56e057f20f883e ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
