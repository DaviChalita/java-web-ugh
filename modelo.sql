-- MySQL Script generated by MySQL Workbench
-- Wed May 22 10:38:41 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Post`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Post` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Post` (
  `idPost` INT NOT NULL AUTO_INCREMENT,
  `Content` VARCHAR(45) NOT NULL,
  `Date` DATE NOT NULL,
  `Likes` INT NULL,
  `Reply_idReply` INT NOT NULL,
  PRIMARY KEY (`idPost`),
  INDEX `fk_Post_Reply1_idx` (`Reply_idReply` ASC) VISIBLE,
  CONSTRAINT `fk_Post_Reply1`
    FOREIGN KEY (`Reply_idReply`)
    REFERENCES `mydb`.`Reply` (`idReply`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Reply`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Reply` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Reply` (
  `idReply` INT NOT NULL AUTO_INCREMENT,
  `Content` VARCHAR(45) NOT NULL,
  `Date` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idReply`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`User` ;

CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `userId` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `Icon` VARCHAR(45) NOT NULL,
  `Post_idPost` INT NOT NULL,
  `Reply_idReply` INT NOT NULL,
  `Username` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`userId`),
  INDEX `fk_User_Post_idx` (`Post_idPost` ASC) VISIBLE,
  INDEX `fk_User_Reply1_idx` (`Reply_idReply` ASC) VISIBLE,
  CONSTRAINT `fk_User_Post`
    FOREIGN KEY (`Post_idPost`)
    REFERENCES `mydb`.`Post` (`idPost`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_Reply1`
    FOREIGN KEY (`Reply_idReply`)
    REFERENCES `mydb`.`Reply` (`idReply`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;