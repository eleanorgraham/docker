USE `recap` ;

-- Script for Release 1.1 starts here
--MS-143 Starts Here

UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,SA,SM,SP,SR,IN,OA,OC,ON,OW,OS,OP,OB,OM' WHERE `CUSTOMER_CODE`='NA';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,SA,SM,SP,SR,IN,OA,OC,ON,OW,OS,OP,OB,OM' WHERE `CUSTOMER_CODE`='NB';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NC,ND,NI,NK,NX,NY,OS' WHERE `CUSTOMER_CODE`='ND';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,SA,SM,SP,SR,IN,OA,OC,ON,OW,OS,OP,OB,OM' WHERE `CUSTOMER_CODE`='NH';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,SA,SM,SP,SR,IN,OA,OC,ON,OW,OS,OP,OB,OM' WHERE `CUSTOMER_CODE`='NL';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NN,NK,NP,OP' WHERE `CUSTOMER_CODE`='NN';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NP,NC,NE,NK,NI,NV,NX,IN,OP' WHERE `CUSTOMER_CODE`='NP';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,SA,SM,SP,SR,IN,OA,OC,ON,OW,OS' WHERE `CUSTOMER_CODE`='NQ';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NS,NC,NK,NX,IN,SA,SM,SP,NY,SR,OM' WHERE `CUSTOMER_CODE`='NS';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NU,NK,NO,OS' WHERE `CUSTOMER_CODE`='NU';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,SA,SM,SP,SR,IN,OA,OC,ON,OW,OS' WHERE `CUSTOMER_CODE`='NW';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NX,OS' WHERE `CUSTOMER_CODE`='NX';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,SA,SM,SP,SR,IN,OA,OC,ON,OW,OS,OP,OB,OM' WHERE `CUSTOMER_CODE`='GN';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,SA,SM,SP,SR,IN,OA,OC,ON,OW,OS,OP,OB,OM' WHERE `CUSTOMER_CODE`='JN';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,SA,SM,SP,SR,IN,OA,OC,ON,OW,OS,OP,OB,OM' WHERE `CUSTOMER_CODE`='JO';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,SA,SM,SP,SR,IN,OA,OC,ON,OW,OS,OP,OB,OM' WHERE `CUSTOMER_CODE`='JS';

INSERT INTO `recap`.`CUSTOMER_CODE_T` (`CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`,`DELIVERY_RESTRICTIONS`,`PWD_DELIVERY_RESTRICTIONS`,`RECAP_DELIVERY_RESTRICTIONS`,`CIRC_DESK_LOCATION`) VALUES(115,'OS','SASB no Sierra holds',3,'','','','');
INSERT INTO `recap`.`CUSTOMER_CODE_T` (`CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`,`DELIVERY_RESTRICTIONS`,`PWD_DELIVERY_RESTRICTIONS`,`RECAP_DELIVERY_RESTRICTIONS`,`CIRC_DESK_LOCATION`) VALUES(116,'OP','LPA no Sierra holds',3,'','','','');
INSERT INTO `recap`.`CUSTOMER_CODE_T` (`CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`,`DELIVERY_RESTRICTIONS`,`PWD_DELIVERY_RESTRICTIONS`,`RECAP_DELIVERY_RESTRICTIONS`,`CIRC_DESK_LOCATION`) VALUES(117,'OB','SIBL no Sierra holds',3,'','','','');
INSERT INTO `recap`.`CUSTOMER_CODE_T` (`CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`,`DELIVERY_RESTRICTIONS`,`PWD_DELIVERY_RESTRICTIONS`,`RECAP_DELIVERY_RESTRICTIONS`,`CIRC_DESK_LOCATION`) VALUES(118,'OM','Schomburg Gen. no Sierra holds',3,'','','','');

--MS-143 Ends Here

--RECAP-595 Starts Here

-- -----------------------------------------------------
-- Table `BULK_CUSTOMER_CODE_T`
-- -----------------------------------------------------
CREATE TABLE `BULK_CUSTOMER_CODE_T` (
  `BULK_CUSTOMER_CODE_ID`        INT             NOT NULL AUTO_INCREMENT,
  `CUSTOMER_CODE`                VARCHAR(45)     NOT NULL,
  `DESCRIPTION`                  VARCHAR(2000)   NOT NULL,
  `OWNING_INST_ID`	             INT             NULL,
  PRIMARY KEY (`BULK_CUSTOMER_CODE_ID`),
  UNIQUE KEY `BULK_CUSTOMER_CODE_UNIQUE` (`CUSTOMER_CODE`,`OWNING_INST_ID`),
  INDEX (`CUSTOMER_CODE`),
  INDEX (`OWNING_INST_ID`),
  CONSTRAINT `BULK_CUST_CODE_OWNING_INST_ID_FK`
  FOREIGN KEY (`OWNING_INST_ID`)
  REFERENCES `INSTITUTION_T` (`INSTITUTION_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BULK_REQUEST_ITEM_T `
-- -----------------------------------------------------
CREATE TABLE `BULK_REQUEST_ITEM_T` (
  `BULK_REQUEST_ID`         INT           NOT NULL AUTO_INCREMENT,
  `BULK_REQUEST_NAME`       VARCHAR(255)  NOT NULL,
  `BULK_REQUEST_FILE_NAME`  VARCHAR(255)  NOT NULL,
  `BULK_REQUEST_FILE_DATA`  LONGBLOB      NOT NULL,
  `CREATED_BY`              VARCHAR(45)   NOT NULL,
  `CREATED_DATE`            DATETIME      NOT NULL,
  `LAST_UPDATED_DATE`       DATETIME      DEFAULT NULL,
  `PATRON_ID`               VARCHAR(45)   NOT NULL,
  `STOP_CODE`               VARCHAR(45)   NOT NULL,
  `REQUESTING_INST_ID`      INT           NOT NULL,
  `REQUEST_STATUS`          VARCHAR(45)   NOT NULL,
  `NOTES`                   VARCHAR(2000) DEFAULT NULL,
  `EMAIL_ID`                VARCHAR(100)   DEFAULT NULL,
  PRIMARY KEY (`BULK_REQUEST_ID`),
  KEY `BULK_REQUESTING_INST_ID_INDX` (`REQUESTING_INST_ID`),
  CONSTRAINT `BULK_REQUESTING_INST_ID_FK`
  FOREIGN KEY (`REQUESTING_INST_ID`)
  REFERENCES `INSTITUTION_T` (`INSTITUTION_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table `BULK_REQUEST_T `
-- -----------------------------------------------------
CREATE TABLE `BULK_REQUEST_T` (
  `BULK_REQUEST_ID` INT NOT NULL,
  `REQUEST_ID`      INT NOT NULL,
  PRIMARY KEY (`BULK_REQUEST_ID`,`REQUEST_ID`),
  KEY `REQUEST_ID_INTER_INDX` (`REQUEST_ID`),
  CONSTRAINT `BULK_REQUEST_ID_INTER_FK`
  FOREIGN KEY (`BULK_REQUEST_ID`)
  REFERENCES `BULK_REQUEST_ITEM_T` (`BULK_REQUEST_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `REQUEST_ID_INTER_FK`
  FOREIGN KEY (`REQUEST_ID`)
  REFERENCES `REQUEST_ITEM_T` (`REQUEST_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB;

--RECAP-595 Ends Here

--MS-135 Starts Here

INSERT INTO `recap`.`BULK_CUSTOMER_CODE_T` (`BULK_CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`) VALUES(1,'B1','CUL Bulk Request',2);
INSERT INTO `recap`.`BULK_CUSTOMER_CODE_T` (`BULK_CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`) VALUES(2,'B2','NYPL Bulk request',3);
INSERT INTO `recap`.`BULK_CUSTOMER_CODE_T` (`BULK_CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`) VALUES(3,'B3','PUL Bulk request',1);
INSERT INTO `recap`.`BULK_CUSTOMER_CODE_T` (`BULK_CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`) VALUES(4,'G1','Columbia\'s Google code',2);
INSERT INTO `recap`.`BULK_CUSTOMER_CODE_T` (`BULK_CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`) VALUES(5,'GO','NYPL\'s Google code',3);
INSERT INTO `recap`.`BULK_CUSTOMER_CODE_T` (`BULK_CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`) VALUES(6,'G2','Princeton\'s Google Code',1);

--MS-135 Ends Here

-- Script for Release 1.1 ends here
