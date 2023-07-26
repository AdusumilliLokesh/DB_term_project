use airport_db;

CREATE TABLE IF NOT EXISTS `airport_db`.`Type_of_plane` (
  `Model` VARCHAR(50) NOT NULL,
  `Capacity` INT NULL,
  `Weight` DECIMAL(8,2) NULL,
  PRIMARY KEY (`Model`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_db`.`Airport_apron` (
  `AP_number` INT NOT NULL,
  `Capacity` INT NULL,
  `AP_location` VARCHAR(50) NULL,
  PRIMARY KEY (`AP_number`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_db`.`Airplane` (
  `Registration_no` INT NOT NULL,
  `Manufacturer` VARCHAR(15) NULL,
  `Model` VARCHAR(50) NULL,
  `AP_Number` INT NULL,
  PRIMARY KEY (`Registration_no`),
  INDEX `type_idx` (`Model` ASC) VISIBLE,
  INDEX `parked_in_idx` (`AP_Number` ASC) VISIBLE,
  CONSTRAINT `type`
    FOREIGN KEY (`Model`)
    REFERENCES `airport_db`.`Type_of_plane` (`Model`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `parked_in`
    FOREIGN KEY (`AP_Number`)
    REFERENCES `airport_db`.`Airport_apron` (`AP_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_db`.`Owns` (
  `owner_id` INT,
  `Registration_no` INT NULL,
  `Purchase_date` DATE NULL,
  `type_of_owner` VARCHAR(15),
  PRIMARY KEY (`owner_id`),
  INDEX `1_idx` (`Registration_no` ASC) VISIBLE,
  INDEX `2_idx` (`owner_id` ASC) VISIBLE,
  CONSTRAINT `1`
    FOREIGN KEY (`Registration_no`)
    REFERENCES `airport_db`.`Airplane` (`Registration_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `airport_db`.`corporation` (
  `Name` VARCHAR(50) NOT NULL,
  `Street` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  `cphone_no` BIGINT,
  `owner_id` INT,
  PRIMARY KEY (`Name`),
  INDEX `1_idx` (`owner_id` ASC) VISIBLE,
  CONSTRAINT `3`
    FOREIGN KEY (`owner_id`)
    REFERENCES `airport_db`.`owns` (`owner_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_db`.`Employee` (
  `Efname` VARCHAR(20) NULL,
  `EMi` VARCHAR(2) NULL,
  `Elname` VARCHAR(20) NULL,
  `Salary` INT NULL,
  `Essn` VARCHAR(9) NOT NULL,
  `Esex` VARCHAR(1) NULL,
  `Shift` VARCHAR(10) NULL,
  `Eaddress` VARCHAR(50) NULL,
  `Role` VARCHAR(20),
  PRIMARY KEY (`Essn`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_db`.`person` (
  `Ssn` VARCHAR(9) NOT NULL,
  `Fname` VARCHAR(45) NULL,
  `MI` VARCHAR(45) NULL,
  `Lname` VARCHAR(45) NULL,
  `Street` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  `per_phone` BIGINT NULL,
  `owner_id` INT,
  PRIMARY KEY (`Ssn`),
  INDEX `1_idx` (`owner_id` ASC) VISIBLE,
  CONSTRAINT `5`
    FOREIGN KEY (`owner_id`)
    REFERENCES `airport_db`.`owns` (`owner_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_db`.`Pilot` (
  `Essn` VARCHAR(9) NULL,
  `Pil_license` VARCHAR(45) NULL,
  INDEX `1_idx` (`Essn` ASC) VISIBLE,
  CONSTRAINT `6`
    FOREIGN KEY (`Essn`)
    REFERENCES `airport_db`.`Employee` (`Essn`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_db`.`Technician` (
  `Area of expertise` VARCHAR(20) NULL,
  `Essn` VARCHAR(45) NULL,
  INDEX `1_idx` (`Essn` ASC) VISIBLE,
  CONSTRAINT `7`
    FOREIGN KEY (`Essn`)
    REFERENCES `airport_db`.`Employee` (`Essn`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_db`.`Traffic_controller` (
  `Essn` VARCHAR(9) NULL,
  `License` VARCHAR(15) NULL,
  `TC_Experience` INT NULL,
  INDEX `1_idx` (`Essn` ASC) VISIBLE,
  CONSTRAINT `8`
    FOREIGN KEY (`Essn`)
    REFERENCES `airport_db`.`Employee` (`Essn`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_db`.`Works_on` (
  `Essn` VARCHAR(9) NULL,
  `Registration_no` INT,
  INDEX `a_idx` (`Essn` ASC) VISIBLE,
  INDEX `b_idx` (`Registration_no` ASC) VISIBLE,
  CONSTRAINT `11`
    FOREIGN KEY (`Essn`)
    REFERENCES `airport_db`.`Employee` (`Essn`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `12`
    FOREIGN KEY (`Registration_no`)
    REFERENCES `airport_db`.`airplane` (`Registration_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;