SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Table `pie_texts`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pie_texts` (
  `id` VARCHAR(36) NOT NULL ,
  `text` TEXT NULL ,
  `processed_text` TEXT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `pie_dividers`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pie_dividers` (
  `id` VARCHAR(36) NOT NULL ,
  `type` VARCHAR(45) NULL ,
  `label` VARCHAR(255) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pie_images`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pie_images` (
  `id` VARCHAR(36) NOT NULL ,
  `file_id` INT NULL ,
  `title` VARCHAR(255) NULL ,
  `subtitle` TEXT NULL ,
  `link_type` ENUM('none','own','external') NULL ,
  `link` TEXT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pie_files`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pie_files` (
  `id` VARCHAR(36) NOT NULL ,
  `file_id` INT NULL ,
  `title` VARCHAR(255) NULL ,
  `description` TEXT NULL ,
  `filename` VARCHAR(255) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pie_titles`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pie_titles` (
  `id` VARCHAR(36) NOT NULL ,
  `title` VARCHAR(255) NULL ,
  `level` VARCHAR(3) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pie_entities`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pie_entities` (
  `id` VARCHAR(36) NOT NULL ,
  `type` ENUM('person','org','general') NULL ,
  `full_name` VARCHAR(255) NULL ,
  `org` VARCHAR(255) NULL ,
  `photo` INT NULL ,
  `url` VARCHAR(255) NULL ,
  `email` VARCHAR(255) NULL ,
  `tel` VARCHAR(25) NULL ,
  `addr_street_address` VARCHAR(255) NULL ,
  `addr_extended_address` VARCHAR(255) NULL ,
  `addr_locality` VARCHAR(255) NULL ,
  `addr_region` VARCHAR(255) NULL ,
  `addr_postal_code` VARCHAR(255) NULL ,
  `addr_country_name` VARCHAR(255) NULL ,
  `category` VARCHAR(255) NULL ,
  `note` TEXT NULL ,
  `logo` INT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
