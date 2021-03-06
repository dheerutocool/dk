-- Generated by Oracle SQL Developer Data Modeler 4.1.1.888
--   at:        2015-09-21 22:59:55 EDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE customer
  (
    custno        VARCHAR2 (200) NOT NULL ,
    custfirstname VARCHAR2 (200) ,
    custlastname  VARCHAR2 (200) ,
    custcity      VARCHAR2 (200) ,
    custstate     VARCHAR2 (200) ,
    custzip       VARCHAR2 (200) ,
    custbal       VARCHAR2 (200)
  ) ;
ALTER TABLE customer ADD CONSTRAINT customer_PK PRIMARY KEY ( custno ) ;


CREATE TABLE employee
  (
    empno        VARCHAR2 (200) NOT NULL ,
    empfirstname VARCHAR2 (200) ,
    emplastname  VARCHAR2 (200) ,
    empphone     VARCHAR2 (200) ,
    empemail     VARCHAR2 (200)
  ) ;
ALTER TABLE employee ADD CONSTRAINT employee_PK PRIMARY KEY ( empno ) ;


CREATE TABLE ordertbl
  (
    ordno   VARCHAR2 (200) NOT NULL ,
    orddate DATE ,
    custno  VARCHAR2 (200) NOT NULL ,
    empno   VARCHAR2 (200) NOT NULL
  ) ;
ALTER TABLE ordertbl ADD CONSTRAINT ordertbl_PK PRIMARY KEY ( ordno ) ;


ALTER TABLE ordertbl ADD CONSTRAINT ordertbl_customer_FK FOREIGN KEY ( custno ) REFERENCES customer ( custno ) ;

ALTER TABLE ordertbl ADD CONSTRAINT ordertbl_employee_FK FOREIGN KEY ( empno ) REFERENCES employee ( empno ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              5
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
