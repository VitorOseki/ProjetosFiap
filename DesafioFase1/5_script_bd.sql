-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2024-03-16 11:48:58 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

DROP TABLE t_mec_departamento CASCADE CONSTRAINTS;
DROP TABLE t_mec_funcionario CASCADE CONSTRAINTS;

CREATE TABLE t_mec_departamento (
    cod_departamento  NUMBER(6) NOT NULL,
    nom_departamento  VARCHAR2(30) NOT NULL,
    sgl_departamento  CHAR(3) NOT NULL,
    desc_departamento VARCHAR2(100) NOT NULL
);

ALTER TABLE t_mec_departamento ADD CONSTRAINT pk_departamento PRIMARY KEY ( cod_departamento );

CREATE TABLE t_mec_funcionario (
    cod_funcionario      NUMBER(6) NOT NULL,
    cod_departamento     NUMBER(6) NOT NULL,
    cpf_funcionario      NUMBER(11) NOT NULL,
    nom_funcionario      VARCHAR2(50) NOT NULL,
    dat_nasc_funcionario DATE NOT NULL,
    tel_funcionario      NUMBER(11) NOT NULL,
    email_funcionario    VARCHAR2(50) NOT NULL,
    cargo_funcionario    VARCHAR2(50) NOT NULL
);

ALTER TABLE t_mec_funcionario ADD CONSTRAINT pk_funcionario PRIMARY KEY ( cod_funcionario );

ALTER TABLE t_mec_funcionario ADD CONSTRAINT un_funcionario_cpf UNIQUE ( cpf_funcionario );

ALTER TABLE t_mec_funcionario
    ADD CONSTRAINT fk_funcionario_departamento FOREIGN KEY ( cod_departamento )
        REFERENCES t_mec_departamento ( cod_departamento );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             2
-- CREATE INDEX                             0
-- ALTER TABLE                              4
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
-- CREATE MATERIALIZED VIEW LOG             0
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
