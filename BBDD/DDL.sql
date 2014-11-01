CREATE SCHEMA `TP_Seguridad` ;

CREATE TABLE `TP_Seguridad`.`usuario` (
  `id` INT NOT NULL ,
  `nombre` VARCHAR(45) NOT NULL ,
  `apellido` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) );

CREATE TABLE `TP_Seguridad`.`producto` (
  `id` INT NOT NULL ,
  `descripcion` VARCHAR(120) NOT NULL ,
  `rubro` VARCHAR(45) NOT NULL ,
  `marca` VARCHAR(45) NULL ,
  
  PRIMARY KEY (`id`));

CREATE TABLE `TP_Seguridad`.`precio` (
  `producto` INT NOT NULL,
  `semana` DATE NOT NULL,
  `precio` DECIMAL(7,2) NOT NULL,
  `comentario` TEXT NULL,
  `cargado_por` INT NOT NULL,

  FOREIGN KEY (producto) REFERENCES producto (id),
  FOREIGN KEY (cargado_por) REFERENCES usuario (id));

CREATE TABLE `TP_Seguridad`.`comentario` (
  `id` INT NOT NULL ,
  `texto` TEXT NULL ,
  `cargado_por` INT NULL,
  
  PRIMARY KEY (`id`),
  FOREIGN KEY (cargado_por) REFERENCES usuario (id));
