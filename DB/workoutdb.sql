-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema workoutdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `workoutdb` ;

-- -----------------------------------------------------
-- Schema workoutdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `workoutdb` DEFAULT CHARACTER SET utf8 ;
USE `workoutdb` ;

-- -----------------------------------------------------
-- Table `workout`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `workout` ;

CREATE TABLE IF NOT EXISTS `workout` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `exersize` VARCHAR(45) NOT NULL,
  `workout_date` VARCHAR(15) NULL,
  `split` VARCHAR(45) NULL,
  `number_sets` INT NULL,
  `rep` INT NULL,
  `weight` INT NULL,
  `notes` VARCHAR(140) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS workoutuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'workoutuser'@'localhost' IDENTIFIED BY 'workoutuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'workoutuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `workout`
-- -----------------------------------------------------
START TRANSACTION;
USE `workoutdb`;
INSERT INTO `workout` (`id`, `exersize`, `workout_date`, `split`, `number_sets`, `rep`, `weight`, `notes`) VALUES (1, 'Squat', '2022-08-10', 'Legs', 5, 10, 225, 'Felt Good!');
INSERT INTO `workout` (`id`, `exersize`, `workout_date`, `split`, `number_sets`, `rep`, `weight`, `notes`) VALUES (2, 'RDL', '2022-08-10', 'Legs', 5, 8, 155, NULL);
INSERT INTO `workout` (`id`, `exersize`, `workout_date`, `split`, `number_sets`, `rep`, `weight`, `notes`) VALUES (3, 'Hack Squats', '2022-08-10', 'Legs', 5, 12, 230, NULL);
INSERT INTO `workout` (`id`, `exersize`, `workout_date`, `split`, `number_sets`, `rep`, `weight`, `notes`) VALUES (4, 'Pull ups', '2022-08-11', 'Pull', 10, 10, 0, 'Not bad!');
INSERT INTO `workout` (`id`, `exersize`, `workout_date`, `split`, `number_sets`, `rep`, `weight`, `notes`) VALUES (5, 'Rows', '2022-08-11', 'Pull', 5, 10, 155, NULL);
INSERT INTO `workout` (`id`, `exersize`, `workout_date`, `split`, `number_sets`, `rep`, `weight`, `notes`) VALUES (6, 'Pushups', '2022-08-12', 'Push', 10, 25, 0, NULL);

COMMIT;

