/*

----------------------------------------
----------------------------------------
--
--Autor: ALexander Torres
--Sitio Web: https://zdprogramacion.blogspot.com/
--Correos: alexnader20012@hotmail.com, mcharael@gmail.com
--Telefonos: +584123082432
--
----------------------------------------
--  creamos la base de datos          --
----------------------------------------
*/
CREATE DATABASE IF NOT EXISTS `usuario`;

USE `usuario`;
/*
----------------------------------------
--   creamos la tabala user           --
----------------------------------------
*/
CREATE TABLE `user`(
	`id_user` int(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
	`name_user` varchar(10) NOT NULL,
	`pass_user` varchar(10) NOT NULL,
	`type_user` boolean NOT NULL
);
/*
----------------------------------------
--     valcamos los datos             --
----------------------------------------
*/
INSERT INTO `user` (`id_user`, `name_user`, `pass_user`, `type_user`) VALUES 
(NULL, 'admin', 'admin', '1'), 
(NULL, 'prueba', 'prueba', '0');