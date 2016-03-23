-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: 127.0.0.1    Database: vanesa
-- ------------------------------------------------------
-- Server version	5.5.5-10.0.23-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apagar`
--

DROP TABLE IF EXISTS `apagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apagar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_documento` varchar(15) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '1 - Aberto | 2 - Baixado',
  `pessoa_id` int(11) DEFAULT NULL,
  `data_vencimento` date DEFAULT NULL,
  `valor_documento` float(10,2) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL COMMENT '1 - A Vista | 2 - A Prazo',
  `historico` varchar(45) DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `valor_pagamento` float(10,2) DEFAULT NULL,
  `valor_acrescimo` float(10,2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apagar`
--
-- ORDER BY:  `id`

LOCK TABLES `apagar` WRITE;
/*!40000 ALTER TABLE `apagar` DISABLE KEYS */;
INSERT  IGNORE INTO `apagar` (`id`, `numero_documento`, `status`, `pessoa_id`, `data_vencimento`, `valor_documento`, `tipo`, `historico`, `data_pagamento`, `valor_pagamento`, `valor_acrescimo`, `created`, `modified`) VALUES (1,'123123',1,3,'2016-04-09',5.00,1,'asdasdasd',NULL,NULL,NULL,'2016-03-12 16:36:25','2016-03-12 16:36:25');
/*!40000 ALTER TABLE `apagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caixas_diarios`
--

DROP TABLE IF EXISTS `caixas_diarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caixas_diarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `terminal` int(11) DEFAULT NULL,
  `pessoa_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixas_diarios`
--
-- ORDER BY:  `id`

LOCK TABLES `caixas_diarios` WRITE;
/*!40000 ALTER TABLE `caixas_diarios` DISABLE KEYS */;
INSERT  IGNORE INTO `caixas_diarios` (`id`, `data`, `terminal`, `pessoa_id`, `created`, `modified`) VALUES (1,'2016-03-16',1,2,'2016-03-16 20:42:22','2016-03-16 20:42:22');
/*!40000 ALTER TABLE `caixas_diarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caixas_movimentos`
--

DROP TABLE IF EXISTS `caixas_movimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caixas_movimentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caixas_diario_id` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '1 - Abertura | 2 - Entrada | 3 - Saida | 4 - Sangria',
  `valor` float(10,2) DEFAULT NULL,
  `descricao` varchar(185) DEFAULT NULL,
  `grupo_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixas_movimentos`
--
-- ORDER BY:  `id`

LOCK TABLES `caixas_movimentos` WRITE;
/*!40000 ALTER TABLE `caixas_movimentos` DISABLE KEYS */;
INSERT  IGNORE INTO `caixas_movimentos` (`id`, `caixas_diario_id`, `status`, `valor`, `descricao`, `grupo_id`, `created`, `modified`) VALUES (1,1,1,1.00,'Pagamentos efetuados',1,'2016-03-16 20:52:59','2016-03-16 20:52:59');
/*!40000 ALTER TABLE `caixas_movimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `endereco` varchar(65) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `cnpj` varchar(18) DEFAULT NULL,
  `inscricao` varchar(18) DEFAULT NULL,
  `fone1` varchar(15) DEFAULT NULL,
  `fone2` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--
-- ORDER BY:  `id`

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT  IGNORE INTO `empresas` (`id`, `nome`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `cnpj`, `inscricao`, `fone1`, `fone2`) VALUES (1,'Empresa Teste 1','Rua Joaquim Francisco Galiano','109','Vila Guiomar','Ribeirão Preto','SP','14031-010','16.529.383/0001-20','476.385.398.000','(16) 39191-956','(16) 99266-0128');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(65) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '1 - Ativo | 2 - Inativo | 9 - Excluido',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--
-- ORDER BY:  `id`

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT  IGNORE INTO `grupos` (`id`, `nome`, `status`, `created`, `modified`) VALUES (1,'Dinheiro',1,'2016-03-12 16:17:29','2016-03-12 16:17:29'),(2,'Cheque',1,'2016-03-12 16:17:44','2016-03-12 16:17:44'),(3,'Cartão',1,'2016-03-12 16:17:58','2016-03-12 16:17:58');
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos_estoques`
--

DROP TABLE IF EXISTS `grupos_estoques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos_estoques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `estoque_global` int(11) DEFAULT NULL COMMENT 'produto que ira entrar/baixar estoque',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos_estoques`
--
-- ORDER BY:  `id`

LOCK TABLES `grupos_estoques` WRITE;
/*!40000 ALTER TABLE `grupos_estoques` DISABLE KEYS */;
INSERT  IGNORE INTO `grupos_estoques` (`id`, `nome`, `estoque_global`, `created`, `modified`) VALUES (1,'Sorvetes',1,'2016-03-11 00:42:08','2016-03-11 01:51:09'),(2,'Açai',NULL,'2016-03-11 00:43:07','2016-03-11 00:43:07');
/*!40000 ALTER TABLE `grupos_estoques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametros`
--

DROP TABLE IF EXISTS `parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `chave` varchar(100) DEFAULT NULL,
  `valor` text,
  `tipo` int(1) DEFAULT NULL COMMENT '1 - Inteiro | 2 - String | 3 - Texto | 4 - Lista | 5 - Float',
  `opcoes` text,
  `grupo` varchar(100) DEFAULT NULL,
  `root` int(1) DEFAULT '0',
  `required` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametros`
--
-- ORDER BY:  `id`

LOCK TABLES `parametros` WRITE;
/*!40000 ALTER TABLE `parametros` DISABLE KEYS */;
INSERT  IGNORE INTO `parametros` (`id`, `nome`, `chave`, `valor`, `tipo`, `opcoes`, `grupo`, `root`, `required`) VALUES (1,'Liberar Desconto em','D_Pedido_Local','I',4,'{\"A\":\"Ambos\", \"I\":\"Item\", \"P\":\"Pedido\"}','Pedido',0,1),(2,'Desconto no Item','D_Pedido_Item','50,0000',6,NULL,'Pedido',0,0),(3,'Desconto no Total do Pedido','D_Pedido','5,0000',6,NULL,'Pedido',0,0),(4,'Casas Decimais','N_Casas_Decimais','3',4,'[0,1,2,3,4]','Produtos',1,1),(5,'Codigo de Acesso','C_Acesso','',2,NULL,'Sistema',1,0),(6,'Data do Ultimo Acesso','C_Acesso_Data','',2,NULL,'Sistema',1,0),(7,'Codigo de Acesso da Empresa','C_Acesso_Empresa','',1,NULL,'Sistema',1,0),(8,'Carregar tela pagamento ao finalizar o pedido.','P_Tela_Pagamento','1',4,'[\"Não\",\"Sim\"]','Pedido',0,1),(9,'Quantidade maxima de parcelas','C_Max_Parcelas','5',1,'','Pedido',0,1),(10,'Novo pedido ao finalizar pagamento','P_Tela_Pedido','1',4,'[\"Não\",\"Sim\"]','Pedido',0,1);
/*!40000 ALTER TABLE `parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ficha` int(11) DEFAULT NULL,
  `data_pedido` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '0 - Aberto | 1 - Recebido | 2 - Cancelado | 9 - Excluido',
  `nome_cliente` varchar(45) DEFAULT NULL,
  `valor_total` float(10,2) DEFAULT NULL,
  `valor_desconto` float(10,2) DEFAULT NULL,
  `valor_liquido` float(10,2) DEFAULT NULL,
  `valor_dinheiro` float(10,2) DEFAULT NULL,
  `valor_cheque` float(10,2) DEFAULT NULL,
  `valor_cartao` float(10,2) DEFAULT NULL,
  `valor_recebe` float(10,2) DEFAULT NULL,
  `valor_troco` float(10,2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--
-- ORDER BY:  `id`

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_itens`
--

DROP TABLE IF EXISTS `pedidos_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos_itens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) DEFAULT NULL,
  `produto_id` int(11) DEFAULT NULL,
  `valor_venda` float(10,2) DEFAULT NULL,
  `quantidade` float(6,4) DEFAULT NULL,
  `valor_total` float(10,2) DEFAULT NULL,
  `perc_desconto` float(4,2) DEFAULT NULL,
  `valor_desconto` float(10,2) DEFAULT NULL,
  `valor_liquido` float(10,2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_itens`
--
-- ORDER BY:  `id`

LOCK TABLES `pedidos_itens` WRITE;
/*!40000 ALTER TABLE `pedidos_itens` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_itens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(2555) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '1 - Ativo | 2 - Inativo | 9 - Excluido',
  `endereco` varchar(65) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `fone1` varchar(15) DEFAULT NULL,
  `fone2` varchar(15) DEFAULT NULL,
  `cnpj` varchar(18) DEFAULT NULL,
  `incricao` varchar(18) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `root` int(1) DEFAULT '0' COMMENT '0 - Não | 1 - Sim',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--
-- ORDER BY:  `id`

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT  IGNORE INTO `pessoas` (`id`, `nome`, `status`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `fone1`, `fone2`, `cnpj`, `incricao`, `username`, `senha`, `created`, `modified`, `root`) VALUES (1,'Administrador Geral do Sistema',1,'Rua Joaquim Francisco Galeano','109','Vila Guiomar','Ribeirão Preto','SP','14031-010','(16) 39191-956','(16) 99266-0128','','','super','$2y$10$o/yJEQxcHBQntbM1SMPtUO9ZVkQmqFUDlwdRJKO6KVGb94863xeyO','2016-03-06 17:21:38','2016-03-12 14:36:30',1),(2,'Consumidor',1,'Rua Joaquim Francisco Galiano','109','Vila Guiomar','Ribeirão Preto','SP','14031-010','(16) 39191-956','(16) 99266-0128','45.045.634/0001-07','',NULL,NULL,'2016-03-08 03:05:19','2016-03-12 15:20:20',0),(3,'Usuário teste 1',1,'Rua Joaquim Francisco Galiano','','Vila Guiomar','Ribeirão Preto','SP','14031-010','(16) 39191-956','(16) 99266-0128','97.475.228/0001-70','814.334.482.902','lucas','$2y$10$/bM/JBEwk2qhSaPn.v3ftuwXiXGqZxgfMR3K2gxaWVzlF/ww0iZUS','2016-03-12 14:35:02','2016-03-12 14:35:02',0);
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas_tipos`
--

DROP TABLE IF EXISTS `pessoas_tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoas_tipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pessoa_id` int(11) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL COMMENT '1 - Usuario | 2 - Cliente | 3 - Fornecedor | 4 - Vendedor | 5 - Operador Caixa | 6 - Funcionario',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas_tipos`
--
-- ORDER BY:  `id`

LOCK TABLES `pessoas_tipos` WRITE;
/*!40000 ALTER TABLE `pessoas_tipos` DISABLE KEYS */;
INSERT  IGNORE INTO `pessoas_tipos` (`id`, `pessoa_id`, `tipo`, `created`, `modified`) VALUES (1,1,1,'2016-03-08 03:20:37','2016-03-08 03:20:37'),(2,2,2,'2016-03-08 03:20:37','2016-03-08 03:20:37'),(3,3,1,'2016-03-12 14:35:02','2016-03-12 14:35:02'),(4,2,3,'2016-03-12 15:20:20','2016-03-12 15:20:20');
/*!40000 ALTER TABLE `pessoas_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barra` varchar(13) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `unidade` varchar(2) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '1 - Ativo | 2 - Inativo | 9 - Excluido',
  `grupos_estoque_id` int(11) DEFAULT NULL,
  `peso_baixa_estoque` float(12,4) DEFAULT NULL,
  `desconto_pedido` int(1) DEFAULT NULL COMMENT '0 - Nao | 1 - Sim',
  `quantidade_pedido` int(1) DEFAULT NULL COMMENT '0 - Nao | 1 - Sim',
  `compra` float(10,2) DEFAULT NULL,
  `margem` float(12,4) DEFAULT NULL,
  `venda` float(10,2) DEFAULT NULL,
  `promocao` float(10,2) DEFAULT NULL,
  `estoque_minimo` float(12,4) DEFAULT NULL,
  `estoque_atual` float(12,4) DEFAULT NULL,
  `atalho` int(1) DEFAULT NULL COMMENT '0 - Nao | 1 - Sim',
  `nome_atalho` varchar(15) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--
-- ORDER BY:  `id`

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT  IGNORE INTO `produtos` (`id`, `barra`, `nome`, `unidade`, `status`, `grupos_estoque_id`, `peso_baixa_estoque`, `desconto_pedido`, `quantidade_pedido`, `compra`, `margem`, `venda`, `promocao`, `estoque_minimo`, `estoque_atual`, `atalho`, `nome_atalho`, `created`, `modified`) VALUES (1,'1','Sorvete 1 bola','KG',1,1,0.5000,0,0,1.50,50.0000,3.00,NULL,10.0000,1000.0000,1,'1 bola','2016-03-11 01:13:14','2016-03-11 02:15:21'),(2,'2','Sorvete 2 bola','KG',1,1,0.7500,1,1,0.50,66.6667,1.50,0.00,20.0000,50.0000,0,'','2016-03-21 21:30:30','2016-03-21 21:41:16');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisicoes`
--

DROP TABLE IF EXISTS `requisicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisicoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_documento` varchar(15) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `produto_id` int(11) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL COMMENT '1 - Entradas | 2 - Saidas',
  `quantidade` float(12,4) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisicoes`
--
-- ORDER BY:  `id`

LOCK TABLES `requisicoes` WRITE;
/*!40000 ALTER TABLE `requisicoes` DISABLE KEYS */;
INSERT  IGNORE INTO `requisicoes` (`id`, `numero_documento`, `data`, `produto_id`, `tipo`, `quantidade`, `motivo`, `created`, `modified`) VALUES (1,'1','2016-03-10',1,1,1000.0000,'','2016-03-11 02:13:32','2016-03-11 02:13:32'),(2,'2','2016-03-10',1,2,50.0000,'','2016-03-11 02:15:21','2016-03-11 02:15:21');
/*!40000 ALTER TABLE `requisicoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terminais`
--

DROP TABLE IF EXISTS `terminais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terminais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(500) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terminais`
--
-- ORDER BY:  `id`

LOCK TABLES `terminais` WRITE;
/*!40000 ALTER TABLE `terminais` DISABLE KEYS */;
INSERT  IGNORE INTO `terminais` (`id`, `nome`, `ip`, `created`, `modified`) VALUES (1,'Default','','2016-03-16 20:23:56','2016-03-16 20:23:56');
/*!40000 ALTER TABLE `terminais` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-21 22:14:38
