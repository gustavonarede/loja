-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 19-Out-2019 às 20:30
-- Versão do servidor: 5.7.26
-- versão do PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rarissicimajoias`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ra_categorias`
--

DROP TABLE IF EXISTS `ra_categorias`;
CREATE TABLE IF NOT EXISTS `ra_categorias` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ra_categorias`
--

INSERT INTO `ra_categorias` (`cate_id`, `cate_nome`, `cate_slug`) VALUES
(1, 'Geral', 'geral'),
(2, 'Anéis De Formatura', 'aneis-de-formatura'),
(3, 'Alianças', 'aliancas'),
(4, 'Joias em Geral', 'joias-em-geral'),
(5, 'Sapatos', 'categoria-sapatos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ra_clientes`
--

DROP TABLE IF EXISTS `ra_clientes`;
CREATE TABLE IF NOT EXISTS `ra_clientes` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_sobrenome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cli_numero` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cli_bairro` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cidade` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `cli_uf` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cep` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cpf` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `cli_rg` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cli_ddd` int(2) NOT NULL,
  `cli_fone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_celular` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `cli_pass` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `cli_data_nasc` date NOT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_hora_cad` time NOT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ra_clientes`
--

INSERT INTO `ra_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_cpf`, `cli_rg`, `cli_ddd`, `cli_fone`, `cli_celular`, `cli_email`, `cli_pass`, `cli_data_nasc`, `cli_data_cad`, `cli_hora_cad`) VALUES
(1, 'Hugo', 'Vasconcelos', 'Rua A', '55', 'Cabana', 'BH', 'MG', '31535522', '00233566900', '3333333333333333', 31, '975275084', '975275084', 'hugovasconcelosf@hotmail.com', '202cb962ac59075b964b07152d234b70', '2017-08-16', '2017-08-30', '15:30:00'),
(2, 'Pedro', 'Freitas', 'Rua X', '55', '5555', '5555', 'MG', '5555555', '5555555', '55555555', 55, '5555555', '555555555', 'pedro@hotmail.com', '123', '2017-08-30', '2017-08-30', '15:30:00'),
(4, 'Hugo', 'Vasconcelos', 'Rua A', '150', 'Teste', 'Belo Horizonte', 'MG', '31525698', '09055535600', 'MG1111111111', 31, '333333333', '333333333', 'teste@teste.com', 'e429552304bbdc8e8f36140784276d98cc981767', '0000-00-00', '2017-09-04', '20:01:19'),
(7, 'Marcos', 'Paulo', 'Rua X', '150', 'Teste', 'Belo Horizonte', 'MG', '31525698', '12345678900', '3333333', 31, '3333333333', '3333333', 'marcos@hotmail.com', 'c494c6a151be664c21c44ade2d32347002379e3c', '0000-00-00', '2017-09-04', '22:58:09'),
(9, 'Fábio', 'Vasconcelos', 'Rua S', '220', 'Teste', 'Belo Horizonte', 'MG', '31525698', '12345698700', '3333333333', 31, '333333333', '33333333', 'fabio@hotmail.com', '3fc812212284dc37b216abe1270fcdcf81bbae69', '0000-00-00', '2017-09-04', '23:32:03'),
(13, 'Paula', 'Souza', 'Rua A', '190', 'Teste', 'Belo Horizonte', 'MG', '31525698', '09055654600', 'MG1111111111', 31, '666666', '33333333', 'qcursos@hotmail.com', '202cb962ac59075b964b07152d234b70', '0000-00-00', '2017-09-05', '00:25:40'),
(14, 'Marcio', 'Santos', 'Rua S', '150', 'Teste', 'Belo Horizonte', 'MG', '31525698', '12312312300', '555555', 31, '555555555', '5555555555', 'marcio@hotmail.com', 'd5baf80c6599692c4fdeaf8a2a521444', '0000-00-00', '2017-09-05', '19:35:21'),
(15, 'Hugo', 'de Freitas', 'Rua Corretor ', '50', 'Cabana', 'Belo Horizonte', 'MG', '31535522', '55555512365', '5555', 31, '975275084', '975275084', 'hugo@hotmail.com', 'a6afc8b085f77a4bfb264236ec33f903', '2017-09-13', '2017-09-05', '19:38:37'),
(19, 'Gabriel', 'Silva', 'Rua Augusta Alvarenga ', '55', '555', 'BELO HORIZONTE', 'MG', '31535670', '55555555365', '11111111', 55, '971816424', '971816424', 'gab@hotmail.com', '70cd6c95032f7d5a365ec883139e4b34', '2017-09-13', '2017-09-05', '14:50:17'),
(31, 'gustavo', 'gomes', 'manaus qd 97 lt 10', '0', 'vila brasilia', 'ap de goiania', 'go', '74000000', '92663672149', '4202567', 62, '35484485', '992887340', 'gustavonarede1@gmail.com', '4abbad4de756bada307e11914d25e449', '1988-03-10', '2019-09-27', '11:06:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ra_imagens`
--

DROP TABLE IF EXISTS `ra_imagens`;
CREATE TABLE IF NOT EXISTS `ra_imagens` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img_pro_id` int(11) NOT NULL,
  `img_pasta` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ra_imagens`
--

INSERT INTO `ra_imagens` (`img_id`, `img_nome`, `img_pro_id`, `img_pasta`) VALUES
(1, 'tenis-couro-01.jpg', 7, ''),
(2, 'tenis-couro-02.jpg', 7, ''),
(3, 'tenis-couro-03.jpg', 7, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ra_pedidos`
--

DROP TABLE IF EXISTS `ra_pedidos`;
CREATE TABLE IF NOT EXISTS `ra_pedidos` (
  `ped_id` int(11) NOT NULL AUTO_INCREMENT,
  `ped_data` date NOT NULL,
  `ped_hora` time NOT NULL,
  `ped_cliente` int(11) NOT NULL,
  `ped_cod` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ped_ref` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_forma` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_tipo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_codigo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `ped_frete_valor` double(9,2) DEFAULT '0.00',
  `ped_frete_tipo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ped_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ra_pedidos`
--

INSERT INTO `ra_pedidos` (`ped_id`, `ped_data`, `ped_hora`, `ped_cliente`, `ped_cod`, `ped_ref`, `ped_pag_status`, `ped_pag_forma`, `ped_pag_tipo`, `ped_pag_codigo`, `ped_frete_valor`, `ped_frete_tipo`) VALUES
(1, '2017-08-30', '18:28:30', 1, '123456789', '054451ref', 'NAO', '', '', '', NULL, NULL),
(2, '2017-08-30', '18:38:21', 2, '55555555', '054451ref', '', '', '', '', NULL, NULL),
(3, '2017-08-30', '19:02:59', 1, '20170830180856', '054451ref', 'Pago', '', '', '', NULL, NULL),
(4, '2017-08-30', '19:03:36', 1, '554cea57af027ad67d3c07128471ada1', '054451ref', '', '', '', '', NULL, NULL),
(5, '2017-08-31', '17:11:59', 1, 'abfaf450e3111472a706305db9647c12', '054451ref', '', '', '', '', NULL, NULL),
(6, '2017-08-31', '20:51:33', 1, 'b1ba05b46708b03d8bb3224ef76edbb6', '1708312008331', '', '', '', '', NULL, NULL),
(7, '2017-08-31', '20:53:41', 1, '1708312008411', '1708312008411', '', '', '', '', NULL, NULL),
(8, '2017-09-01', '17:27:08', 1, '1709011709071', '1709011709071', '', '', '', '', NULL, NULL),
(9, '2017-09-01', '17:44:06', 1, '1709011709061', '1709011709061', '', '', '', '', NULL, NULL),
(10, '2017-09-01', '18:19:48', 1, '1709011809481', '1709011809481', '', '', '', '', 18.30, NULL),
(11, '2017-09-01', '18:21:43', 1, '1709011809431', '1709011809431', '', '', '', '', 16.10, NULL),
(12, '2017-09-01', '18:42:08', 1, '1709011809081', '1709011809081', '', '', '', '', 16.10, NULL),
(13, '2017-09-01', '19:07:30', 1, '1709011909261', '1709011909261', '', '', '', '', 16.10, NULL),
(14, '2017-09-01', '19:15:07', 1, '1709011909001', '1709011909001', '', '', '', '', 16.10, NULL),
(15, '2017-09-01', '19:19:14', 1, '1709011909111', '1709011909111', '', '', '', '', 16.10, NULL),
(16, '2017-09-01', '19:21:02', 1, '1709011909571', '1709011909571', '', '', '', '', 16.10, NULL),
(17, '2017-09-01', '19:42:14', 1, '1709011909091', '1709011909091', '', '', '', '', 18.30, NULL),
(18, '2017-09-01', '19:45:15', 1, '1709011909101', '1709011909101', '', '', '', '', 16.10, NULL),
(19, '2017-09-01', '22:52:45', 1, '1709012209331', '1709012209331', '', '', '', '', 16.10, NULL),
(20, '2017-09-01', '22:53:49', 1, '1709012209421', '1709012209421', '', '', '', '', 16.10, NULL),
(21, '2017-09-01', '23:07:00', 1, '1709012309201', '1709012309201', '', '', '', '', 16.10, NULL),
(22, '2017-09-01', '23:11:25', 1, '1709012309201', '1709012309201', '', '', '', '', 29.00, NULL),
(23, '2017-09-01', '23:19:31', 1, '1709012309241', '1709012309241', '', '', '', '', 16.10, NULL),
(24, '2017-09-01', '23:21:34', 1, '1709012309301', '1709012309301', '', '', '', '', 16.10, NULL),
(25, '2017-09-01', '23:25:59', 1, '1709012309521', '1709012309521', '', '', '', '', 17.20, NULL),
(26, '2017-09-01', '23:36:21', 1, '1709012309161', '1709012309161', '', '', '', '', 16.10, NULL),
(27, '2017-09-01', '23:47:09', 1, '1709012309041', '1709012309041', '', '', '', '', 26.80, NULL),
(28, '2017-09-01', '23:55:23', 1, '1709012309131', '1709012309131', '', '', '', '', 17.20, NULL),
(29, '2017-09-02', '00:01:32', 1, '1709020009231', '1709020009231', '', '', '', '', 17.20, NULL),
(30, '2017-09-02', '00:05:52', 1, '1709020009431', '1709020009431', '', '', '', '', 17.20, NULL),
(31, '2017-09-02', '00:08:07', 1, '1709020009591', '1709020009591', '', '', '', '', 29.00, NULL),
(32, '2017-09-02', '00:10:30', 1, '1709020009241', '1709020009241', '', '', '', '', 26.80, NULL),
(33, '2017-09-02', '00:12:38', 1, '1709020009331', '1709020009331', '', '', '', '', 16.10, NULL),
(34, '2017-09-02', '00:15:17', 1, '1709020009111', '1709020009111', '', '', '', '', 16.10, NULL),
(35, '2017-09-02', '00:16:15', 1, '1709020009101', '1709020009101', '', '', '', '', 16.10, NULL),
(36, '2017-09-02', '00:19:43', 1, '1709020009331', '1709020009331', '', '', '', '', 16.10, NULL),
(37, '2017-09-02', '00:22:14', 1, '1709020009041', '1709020009041', '', '', '', '', 29.00, NULL),
(38, '2017-09-02', '00:39:13', 1, '1709020009071', '1709020009071', '', '', '', '', 29.00, NULL),
(39, '2017-09-05', '15:09:09', 13, '17090515090113', '17090515090113', '', '', '', '', 26.80, NULL),
(40, '2017-09-05', '15:16:57', 0, '17090515095113', '17090515095113', '', '', '', '', 16.10, NULL),
(41, '2017-09-05', '15:20:11', 13, '17090515090413', '17090515090413', '', '', '', '', 16.10, NULL),
(42, '2017-09-05', '21:27:45', 13, '17090521093613', '17090521093613', '', '', '', '', 29.00, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ra_pedidos_itens`
--

DROP TABLE IF EXISTS `ra_pedidos_itens`;
CREATE TABLE IF NOT EXISTS `ra_pedidos_itens` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_produto` int(11) NOT NULL,
  `item_valor` double(9,2) NOT NULL,
  `item_qtd` int(6) NOT NULL,
  `item_ped_cod` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ra_pedidos_itens`
--

INSERT INTO `ra_pedidos_itens` (`item_id`, `item_produto`, `item_valor`, `item_qtd`, `item_ped_cod`) VALUES
(1, 9, 250.00, 2, '123456789'),
(2, 7, 750.00, 2, '123456789'),
(3, 8, 600.00, 1, '123456789'),
(4, 9, 250.00, 2, '123456789'),
(5, 7, 750.00, 2, '123456789'),
(6, 8, 600.00, 1, '123456789'),
(7, 9, 250.00, 1, '55555555'),
(8, 8, 600.00, 1, '55555555'),
(9, 9, 250.00, 1, '20170830180856'),
(10, 8, 600.00, 1, '20170830180856'),
(11, 8, 600.00, 1, '554cea57af027ad67d3c07128471ada1'),
(12, 1, 80.00, 1, '554cea57af027ad67d3c07128471ada1'),
(13, 9, 250.00, 1, 'abfaf450e3111472a706305db9647c12'),
(14, 9, 250.00, 1, 'b1ba05b46708b03d8bb3224ef76edbb6'),
(15, 10, 300.00, 1, '1708312008411'),
(16, 3, 250.00, 1, '1708312008411'),
(17, 7, 750.00, 1, '1708312008411'),
(18, 1, 80.00, 2, '1709011709071'),
(19, 2, 60.00, 1, '1709011709071'),
(20, 1, 80.00, 1, '1709011709061'),
(21, 1, 80.00, 1, '1709011809481'),
(22, 1, 80.00, 1, '1709011809431'),
(23, 2, 60.00, 1, '1709011809081'),
(24, 1, 80.00, 1, '1709011909261'),
(25, 2, 60.00, 1, '1709011909001'),
(26, 2, 60.00, 1, '1709011909111'),
(27, 1, 80.00, 1, '1709011909571'),
(28, 2, 60.00, 1, '1709011909571'),
(29, 1, 80.00, 1, '1709011909091'),
(30, 2, 60.00, 1, '1709011909091'),
(31, 1, 80.00, 1, '1709011909101'),
(32, 2, 60.00, 2, '1709011909101'),
(33, 1, 80.00, 1, '1709012209331'),
(34, 1, 80.00, 1, '1709012209421'),
(35, 2, 60.00, 1, '1709012209421'),
(36, 1, 80.00, 1, '1709012309201'),
(37, 2, 60.00, 1, '1709012309201'),
(38, 1, 80.00, 1, '1709012309201'),
(39, 2, 60.00, 1, '1709012309201'),
(40, 7, 750.00, 1, '1709012309201'),
(41, 6, 300.00, 1, '1709012309201'),
(42, 1, 80.00, 1, '1709012309241'),
(43, 7, 750.00, 1, '1709012309241'),
(44, 3, 250.00, 1, '1709012309241'),
(45, 1, 80.00, 1, '1709012309301'),
(46, 2, 60.00, 1, '1709012309301'),
(47, 5, 1250.00, 1, '1709012309301'),
(48, 1, 80.00, 1, '1709012309521'),
(49, 6, 300.00, 1, '1709012309521'),
(50, 7, 750.00, 1, '1709012309521'),
(51, 10, 300.00, 1, '1709012309521'),
(52, 4, 300.00, 1, '1709012309521'),
(53, 9, 250.00, 1, '1709012309161'),
(54, 2, 60.00, 1, '1709012309161'),
(55, 1, 80.00, 1, '1709012309041'),
(56, 2, 60.00, 1, '1709012309041'),
(57, 6, 300.00, 1, '1709012309041'),
(58, 1, 80.00, 1, '1709012309131'),
(59, 4, 300.00, 1, '1709012309131'),
(60, 6, 300.00, 1, '1709012309131'),
(61, 7, 750.00, 1, '1709012309131'),
(62, 3, 250.00, 1, '1709020009231'),
(63, 2, 60.00, 1, '1709020009231'),
(64, 1, 80.00, 1, '1709020009231'),
(65, 6, 300.00, 1, '1709020009231'),
(66, 7, 750.00, 1, '1709020009231'),
(67, 1, 80.00, 1, '1709020009431'),
(68, 2, 60.00, 1, '1709020009431'),
(69, 3, 250.00, 1, '1709020009431'),
(70, 6, 300.00, 1, '1709020009431'),
(71, 7, 750.00, 1, '1709020009431'),
(72, 1, 80.00, 1, '1709020009591'),
(73, 3, 250.00, 1, '1709020009591'),
(74, 5, 1250.00, 1, '1709020009591'),
(75, 7, 750.00, 1, '1709020009591'),
(76, 1, 80.00, 1, '1709020009241'),
(77, 3, 250.00, 1, '1709020009241'),
(78, 7, 750.00, 1, '1709020009241'),
(79, 1, 80.00, 1, '1709020009331'),
(80, 7, 750.00, 1, '1709020009331'),
(81, 4, 300.00, 1, '1709020009331'),
(82, 1, 80.00, 1, '1709020009111'),
(83, 1, 80.00, 1, '1709020009101'),
(84, 1, 80.00, 1, '1709020009331'),
(85, 1, 80.00, 1, '1709020009041'),
(86, 7, 750.00, 1, '1709020009041'),
(87, 2, 60.00, 1, '1709020009041'),
(88, 6, 300.00, 2, '1709020009041'),
(89, 1, 80.00, 1, '1709020009071'),
(90, 3, 250.00, 1, '1709020009071'),
(91, 7, 750.00, 1, '1709020009071'),
(92, 6, 300.00, 1, '1709020009071'),
(93, 10, 300.00, 1, '1709020009071'),
(94, 8, 600.00, 1, '17090515090113'),
(95, 6, 300.00, 1, '17090515090113'),
(96, 2, 60.00, 1, '17090515095113'),
(97, 6, 300.00, 1, '17090515095113'),
(98, 8, 600.00, 1, '17090515090413'),
(99, 2, 60.00, 1, '17090515090413'),
(100, 3, 250.00, 1, '17090521093613'),
(101, 1, 80.00, 1, '17090521093613'),
(102, 7, 750.00, 2, '17090521093613'),
(103, 9, 250.00, 1, '17090521093613');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ra_produtos`
--

DROP TABLE IF EXISTS `ra_produtos`;
CREATE TABLE IF NOT EXISTS `ra_produtos` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_categoria` int(11) NOT NULL,
  `pro_nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_peso` double(9,3) NOT NULL,
  `pro_valor` double(9,2) NOT NULL,
  `pro_largura` int(11) NOT NULL,
  `pro_altura` int(11) NOT NULL,
  `pro_comprimento` int(11) NOT NULL,
  `pro_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_estoque` int(11) NOT NULL,
  `pro_modelo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_ref` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_fabricante` int(11) NOT NULL,
  `pro_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `pro_frete_free` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Não',
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ra_produtos`
--

INSERT INTO `ra_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_largura`, `pro_altura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_estoque`, `pro_modelo`, `pro_ref`, `pro_fabricante`, `pro_ativo`, `pro_frete_free`) VALUES
(1, 2, 'Camisa Social', 'Descrição da Camisa Polo Fila Open Preta e Cinza A Fila é uma marca italiana que está presente nos principais esportes e eventos esportivos do mundo, especializada na produção de artigos esportivos e patrocinadora de diversos atletas. A Camisa Polo Fila Open Preta e Cinza conta com tecnologia Flow, que faz com que a transpiração seja absorvida e rapidamente transportada para o tecido que facilitará a evaporação mantendo o corpo na temperatura ideal proporcionando maior conforto e melhor desempenho. Especificações da Camisa Polo Fila Open Preta e Cinza Conheça as suas características: - Perfil: Tênis; - Tecnologia: Flow elimina com rapidez o suor, facilitando sua evaporação. Ela mantém o corpo na temperatura ideal para a prática esportiva e proporciona maior conforto e rápida secagem; - Material: 100% poliester; - Detalhamento: Camisa gola polo, peitilho com fechamento em botão, logotipo F-Box no canto esquerdo do peito, pequena escrita Flow no cantoinferior direito na parte traseira; - Garantia do Fabricante: Contra defeito de fabricação; - Origem: Nacional. Dimensões do Produto DIMENSÕES: Camisetas E Polos: Tamanho Pp (Xs) Tamanho P (S) Largura: N/D Altura: N/D Largura: 50 cm Altura: 64 cm Tamanho M (M) Tamanho G (L) Largura: 53 cm Altura: 70 cm Largura: 56 cm Altura: 72 cm Tamanhos Gg (Xl) Largura: 59 cm Altura: 75 cm *Observações: As medidas são aproximadas e podem variar para mais ou para menos de uma peça para outra.\r\nTodas as informações divulgadas são de responsabilidade do fabricante/fornecedor.\r\nImagens Meramente Ilustrativas.', 0.050, 80.00, 80, 80, 80, '03.jpg', 'camisa-social', 1, 'modelo01', '02651551', 1, '1', 'gratuito'),
(2, 2, 'Camisa Polo', 'Descrição da Camisa Polo Fila Open Preta e Cinza A Fila é uma marca italiana que está presente nos principais esportes e eventos esportivos do mundo, especializada na produção de artigos esportivos e patrocinadora de diversos atletas. A Camisa Polo Fila Open Preta e Cinza conta com tecnologia Flow, que faz com que a transpiração seja absorvida e rapidamente transportada para o tecido que facilitará a evaporação mantendo o corpo na temperatura ideal proporcionando maior conforto e melhor desempenho. Especificações da Camisa Polo Fila Open Preta e Cinza Conheça as suas características: - Perfil: Tênis; - Tecnologia: Flow elimina com rapidez o suor, facilitando sua evaporação. Ela mantém o corpo na temperatura ideal para a prática esportiva e proporciona maior conforto e rápida secagem; - Material: 100% poliester; - Detalhamento: Camisa gola polo, peitilho com fechamento em botão, logotipo F-Box no canto esquerdo do peito, pequena escrita Flow no cantoinferior direito na parte traseira; - Garantia do Fabricante: Contra defeito de fabricação; - Origem: Nacional. Dimensões do Produto DIMENSÕES: Camisetas E Polos: Tamanho Pp (Xs) Tamanho P (S) Largura: N/D Altura: N/D Largura: 50 cm Altura: 64 cm Tamanho M (M) Tamanho G (L) Largura: 53 cm Altura: 70 cm Largura: 56 cm Altura: 72 cm Tamanhos Gg (Xl) Largura: 59 cm Altura: 75 cm *Observações: As medidas são aproximadas e podem variar para mais ou para menos de uma peça para outra.\r\nTodas as informações divulgadas são de responsabilidade do fabricante/fornecedor.\r\nImagens Meramente Ilustrativas.', 0.060, 60.00, 50, 50, 50, 'camisa.jpg', 'camisa-polo', 10, 'modelo 054515', '15154', 1, '1', 'Não'),
(3, 3, 'Calça Jeans', 'Calça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.\r\nCalça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.', 0.100, 250.00, 50, 50, 50, 'calca.jpg', 'calca-jeans', 15, '0654655', '2998415', 1, '1', 'Não'),
(4, 3, 'Calça de Moleton', 'Calça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.\r\nCalça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.', 0.100, 300.00, 50, 50, 50, 'calca02.jpg', 'calca-de-moleton', 50, '15445', '554888', 1, '1', 'Não'),
(5, 4, 'Tênis Corvette Slim Freeway', 'Com leve amortecimento, o Tênis Corvette Slim Freeway conta com conforto e design esportivo para você acelerar em direção à autenticidade. Ideal para acompanhar os apaixonados por carros.', 0.100, 1250.00, 50, 50, 50, 'tenis-corvete.jpg', 'tenis-corvete', 10, '265566', '5565699', 1, '1', 'Não'),
(6, 4, 'Tênis Asics GEL Excite', 'O Tênis Asics GEL Excite 4 é desenvolvido com tecnologias que melhoram o desempenho nas corridas e caminhadas. Sistema de gel com absorção de impacto e EVA que retorna ao estado original com rapidez. ', 0.100, 300.00, 50, 50, 50, 'tenis-asics.jpg', 'tenis-asics-gel', 1, '111555', '1589555', 1, '1', 'Não'),
(8, 4, 'Tênis Nike Shox Avenue', 'Aproveite a casualidade do dia a dia com muito estilo e pronto para aceitar qualquer convite. Com o Tênis Nike Shox Avenue você completa o visual com originalidade e desfruta de máximo conforto. ', 0.100, 600.00, 50, 50, 50, 'tenis-nike-shox.jpg', 'tenis-nike-shox', 50, '05899644', '05485515', 1, '1', 'Não'),
(9, 5, 'Sapatênis Burn York', 'Aposte em combinações masculinas para o “casual day” com o Sapatênis Burn York. Conferindo versatilidade ao visual, o modelo inspirado no esporte tem perfuros laterais e detalhe em ilhós colorido.', 0.100, 250.00, 50, 50, 50, 'sapatenis-burn.jpg', 'sapatenis-burn', 20, '84484884', '84845226', 1, '1', 'Não'),
(10, 5, 'Sapatênis Calvin Klein Boat Lth', 'O Sapatênis Calvin Klein Boat Lth é confeccionado em couro, que oferece ótima durabilidade. Leva um estilo casual e sofisticado às combinações, tem interior macio e fechamento por cadarço. ', 0.100, 300.00, 50, 50, 50, 'sapatenis-calvin-klein.jpg', 'sapatenis-calvin-klein', 10, '19855648', '4648848', 1, '1', 'Não'),
(15, 2, 'Camisa Polo Aleatory', '<p>&nbsp;<strong>Especifica&ccedil;&atilde;o:</strong> malha piquet branca;gola e punho em poli&eacute;ster branco; com serigrafia do bras&atilde;o da repblica em policromia do lado<br />esquerdo do peito medindo 10x12 cm e impresso nas costas com o nome &ldquo;JUSTI&Ccedil;A ELEITORAL&rdquo;medindo 25 cm</p>', 0.400, 500.00, 10, 10, 10, '170906182225camiseta.jpg.jpg', 'camisa-polo-aleatory', 10, '45458858', '555545', 0, 'S', 'Não'),
(16, 4, 'Tênis Mizuno Wave', '<p>O T&ecirc;nis Mizuno Wave Elevation 2 proporciona muito mais conforto durante as suas corridas.&nbsp;</p>', 0.200, 600.00, 10, 10, 10, 'becc656f4f046fc4f18e3f8324059cad.jpg', 'tenis-mizuno-wave', 10, '45484448', '488964', 0, 'S', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ra_user`
--

DROP TABLE IF EXISTS `ra_user`;
CREATE TABLE IF NOT EXISTS `ra_user` (
  `user_id` int(11) NOT NULL,
  `user_nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_pw` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ra_user`
--

INSERT INTO `ra_user` (`user_id`, `user_nome`, `user_email`, `user_pw`) VALUES
(1, 'Hugo Vasconcelos', 'qcursos@hotmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Administrador Loja Freitas', 'lojavirtualfreitas@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rc_user`
--

DROP TABLE IF EXISTS `rc_user`;
CREATE TABLE IF NOT EXISTS `rc_user` (
  `user_id` int(11) NOT NULL,
  `user_nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_pw` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `rc_user`
--

INSERT INTO `rc_user` (`user_id`, `user_nome`, `user_email`, `user_pw`) VALUES
(1, 'Hugo Vasconcelos', 'qcursos@hotmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Administrador Loja Freitas', 'lojavirtualfreitas@gmail.com', '202cb962ac59075b964b07152d234b70');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
