use airport_dbms;

CREATE TABLE IF NOT EXISTS `airport_dbms`.`Type_of_plane` (
  `Model` VARCHAR(50) NOT NULL,
  `Fuel_Capacity` INT NULL,
  `Maximum_Range` INT NULL,
  `Weight` DECIMAL(8,2) NULL,
  `Seating_Capacity` INT NULL,
  PRIMARY KEY (`Model`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_dbms`.`Airport_apron` (
  `Apron_number` INT NOT NULL,
  `Apron_type` VARCHAR(50) NULL,
  `Aircraft_Capacity` INT NULL,
  `Apron_status` VARCHAR(50) NULL,
  PRIMARY KEY (`Apron_number`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_dbms`.`Airplane` (
  `Registration_number` INT NOT NULL,
  `Model` VARCHAR(50),
  `Manufacturer` VARCHAR(15) NULL,
  `Apron_number` INT,
  `owner_id` INT,
  `Maintenance_Status` VARCHAR(30) NULL,
  `Last_Maintenance_Date` date,
  `Purchase_date` DATE NULL,
  PRIMARY KEY (`Registration_number`),
  INDEX `type_idx` (`Model` ASC) VISIBLE,
  INDEX `parked_in_idx` (`Apron_number` ASC) VISIBLE,
  CONSTRAINT `type`
    FOREIGN KEY (`Model`)
    REFERENCES `airport_dbms`.`Type_of_plane` (`Model`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `parked_in`
    FOREIGN KEY (`Apron_number`)
    REFERENCES `airport_dbms`.`Airport_apron` (`Apron_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
	CONSTRAINT `owner`
    FOREIGN KEY (`owner_id`)
    REFERENCES `airport_dbms`.`owner` (`owner_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_dbms`.`owner` (
  `owner_id` INT,
  `Name` VARCHAR(45) NULL,
  `Street` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  `Phone_No` BIGINT NULL,
  `Type_of_owner` VARCHAR(15) NULL,
  PRIMARY KEY (`owner_id`),
  INDEX `1_idx` (`owner_id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_dbms`.`Employee` (
  `Employee_ID` INT,
  `First_name` VARCHAR(20) NULL,
  `Middle_Name` VARCHAR(20) NULL,
  `Last_name` VARCHAR(20) NULL,
  `Salary` INT NULL,
  `Sex` VARCHAR(1) NULL,
  `Shift` VARCHAR(10) NULL,
  `Address` VARCHAR(50) NULL,
  `Role` VARCHAR(20),
  PRIMARY KEY (`Employee_ID`),
  INDEX `1_idx` (`Employee_ID` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `airport_dbms`.`Works_on` (
  `Employee_ID` INT,
  `Registration_number` INT,
  PRIMARY KEY (`Employee_ID`, `Registration_number`),
  INDEX `a_idx` (`Employee_ID` ASC) VISIBLE,
  INDEX `b_idx` (`Registration_number` ASC) VISIBLE,
  CONSTRAINT `11`
    FOREIGN KEY (`Employee_ID`)
    REFERENCES `airport_dbms`.`Employee` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `12`
    FOREIGN KEY (`Registration_number`)
    REFERENCES `airport_dbms`.`airplane` (`Registration_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
