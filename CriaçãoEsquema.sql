SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Ginasio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Ginasio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Ginasio` DEFAULT CHARACTER SET utf8mb4 ;
USE `Ginasio` ;

-- -----------------------------------------------------
-- Table `Ginasio`.`Servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`Servico` (
  `idServico` INT NOT NULL AUTO_INCREMENT,
  `Descricao` VARCHAR(45) NOT NULL,
  `Preco` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`idServico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`Morada`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`Morada` (
  `idMorada` INT NOT NULL AUTO_INCREMENT,
  `Rua` VARCHAR(75) NOT NULL,
  `Localidade` VARCHAR(75) NOT NULL,
  `codigoPostal` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`idMorada`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`Contacto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`Contacto` (
  `idContacto` INT NOT NULL AUTO_INCREMENT,
  `NrTelemovel` INT NOT NULL,
  `NrTelemovel2` INT NULL,
  `Email` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`idContacto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(75) NOT NULL,
  `Sexo` VARCHAR(1) NOT NULL,
  `Idade` INT NOT NULL,
  `idContacto` INT NOT NULL,
  `idMorada` INT NOT NULL,
  `IMC` DECIMAL(4,2) NOT NULL,
  `Peso` DECIMAL(5,2) NOT NULL,
  `Altura` DECIMAL(4,2) NOT NULL,
  `NumeroContribuinte` INT NOT NULL,
  `LimitacoesFisicas` VARCHAR(45) NULL,
  PRIMARY KEY (`idCliente`),
  INDEX `idMorada_idx` (`idMorada` ASC) VISIBLE,
  INDEX `fk_Cliente_Contactos1_idx` (`idContacto` ASC) VISIBLE,
  CONSTRAINT `idMorada`
    FOREIGN KEY (`idMorada`)
    REFERENCES `Ginasio`.`Morada` (`idMorada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cliente_Contactos1`
    FOREIGN KEY (`idContacto`)
    REFERENCES `Ginasio`.`Contacto` (`idContacto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`ContactoFuncionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`ContactoFuncionario` (
  `idContacto` INT NOT NULL AUTO_INCREMENT,
  `NrTelemovel` INT NOT NULL,
  `NrTelemovel2` INT NULL,
  `Email` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`idContacto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`MoradaFuncionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`MoradaFuncionario` (
  `idMorada` INT NOT NULL AUTO_INCREMENT,
  `rua` VARCHAR(75) NOT NULL,
  `localidade` VARCHAR(75) NOT NULL,
  `codigoPostal` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`idMorada`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`Funcionario` (
  `idFuncionario` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(75) NOT NULL,
  `Idade` INT NOT NULL,
  `Sexo` VARCHAR(1) NOT NULL,
  `Cargo` VARCHAR(45) NOT NULL,
  `idContacto` INT NOT NULL,
  `idMorada` INT NOT NULL,
  PRIMARY KEY (`idFuncionario`),
  INDEX `fk_Funcionario_ContactosFuncionario1_idx` (`idContacto` ASC) VISIBLE,
  INDEX `fk_Funcionario_MoradaFuncionario1_idx` (`idMorada` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionario_ContactosFuncionario1`
    FOREIGN KEY (`idContacto`)
    REFERENCES `Ginasio`.`ContactoFuncionario` (`idContacto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funcionario_MoradaFuncionario1`
    FOREIGN KEY (`idMorada`)
    REFERENCES `Ginasio`.`MoradaFuncionario` (`idMorada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`Exercicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`Exercicio` (
  `idExercicio` INT NOT NULL AUTO_INCREMENT,
  `Designacao` VARCHAR(75) NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idExercicio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`Equipamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`Equipamento` (
  `idEquipamento` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `Descricao` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`idEquipamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`Fatura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`Fatura` (
  `idFatura` INT NOT NULL AUTO_INCREMENT,
  `ContribuinteGinasio` INT NOT NULL,
  `Data` DATE NOT NULL,
  `Descricao` VARCHAR(100) NOT NULL,
  `Valor` DECIMAL(5,2) NOT NULL,
  `IdCliente` INT NOT NULL,
  `Desconto` DOUBLE NOT NULL,
  `Funcionario` INT NOT NULL,
  PRIMARY KEY (`idFatura`),
  INDEX `IdCliente_idx` (`IdCliente` ASC) VISIBLE,
  INDEX `fk_Fatura_Funcionario1_idx` (`Funcionario` ASC) VISIBLE,
  CONSTRAINT `IdCliente`
    FOREIGN KEY (`IdCliente`)
    REFERENCES `Ginasio`.`Cliente` (`idCliente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Fatura_Funcionario1`
    FOREIGN KEY (`Funcionario`)
    REFERENCES `Ginasio`.`Funcionario` (`idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`PrestaServico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`PrestaServico` (
  `idServico` INT NOT NULL,
  `idFuncionario` INT NOT NULL,
  `DataInicio` DATE NOT NULL,
  PRIMARY KEY (`idServico`, `idFuncionario`),
  INDEX `fk_PrestaServico_Funcionario1_idx` (`idFuncionario` ASC) VISIBLE,
  CONSTRAINT `fk_PrestaServico_Servico1`
    FOREIGN KEY (`idServico`)
    REFERENCES `Ginasio`.`Servico` (`idServico`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_PrestaServico_Funcionario1`
    FOREIGN KEY (`idFuncionario`)
    REFERENCES `Ginasio`.`Funcionario` (`idFuncionario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`ExercicioEquipamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`ExercicioEquipamento` (
  `idExercicio` INT NOT NULL,
  `idEquipamento` INT NOT NULL,
  PRIMARY KEY (`idExercicio`, `idEquipamento`),
  INDEX `idEquipamento_idx` (`idEquipamento` ASC) VISIBLE,
  CONSTRAINT `idExercicio`
    FOREIGN KEY (`idExercicio`)
    REFERENCES `Ginasio`.`Exercicio` (`idExercicio`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idEquipamento`
    FOREIGN KEY (`idEquipamento`)
    REFERENCES `Ginasio`.`Equipamento` (`idEquipamento`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`PlanoExercicios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`PlanoExercicios` (
  `Cliente` INT NOT NULL,
  `Exercicio` INT NOT NULL,
  `nSeries` INT NOT NULL,
  `nRepeticoes` INT NOT NULL,
  PRIMARY KEY (`Cliente`, `Exercicio`),
  INDEX `fk_PlanoExercicios_Exercicio1_idx` (`Exercicio` ASC) VISIBLE,
  CONSTRAINT `fk_PlanoExercicios_Exercicio1`
    FOREIGN KEY (`Exercicio`)
    REFERENCES `Ginasio`.`Exercicio` (`idExercicio`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_PlanoExercicios_Cliente1`
    FOREIGN KEY (`Cliente`)
    REFERENCES `Ginasio`.`Cliente` (`idCliente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`ServicoFatura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`ServicoFatura` (
  `idFatura` INT NOT NULL,
  `idServico` INT NOT NULL,
  PRIMARY KEY (`idFatura`, `idServico`),
  INDEX `fk_ServicoFatura_Servico1_idx` (`idServico` ASC) VISIBLE,
  CONSTRAINT `fk_ServicoFatura_Fatura1`
    FOREIGN KEY (`idFatura`)
    REFERENCES `Ginasio`.`Fatura` (`idFatura`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ServicoFatura_Servico1`
    FOREIGN KEY (`idServico`)
    REFERENCES `Ginasio`.`Servico` (`idServico`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ginasio`.`Subscreve`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ginasio`.`Subscreve` (
  `idCliente` INT NOT NULL,
  `IdServico` INT NOT NULL,
  `DataSubscricao` DATETIME NOT NULL,
  PRIMARY KEY (`idCliente`, `IdServico`, `DataSubscricao`),
  INDEX `fk_Subscreve_Servico1_idx` (`IdServico` ASC) VISIBLE,
  CONSTRAINT `fk_Subscreve_Cliente1`
    FOREIGN KEY (`idCliente`)
    REFERENCES `Ginasio`.`Cliente` (`idCliente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Subscreve_Servico1`
    FOREIGN KEY (`IdServico`)
    REFERENCES `Ginasio`.`Servico` (`idServico`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
