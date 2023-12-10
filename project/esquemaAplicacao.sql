--entidades sem chaves estrangeiras
        -- Cria a tabela IMPERIO
        CREATE TABLE IMPERIO(
            nome VARCHAR2(50) NOT NULL,
            cor VARCHAR2(50) NOT NULL,
            qtd_planetas_dominados NUMBER(12) DEFAULT 0 NOT NULL,
            CONSTRAINT PK_IMPERIO PRIMARY KEY(nome),
            CONSTRAINT SK_IMPERIO_COR UNIQUE(cor),
            CONSTRAINT CK_IMPERIO_QTD_PLANETAS_DOMINADOS CHECK(qtd_planetas_dominados >= 0)
        );

        -- Cria a tabela PLANETA
        CREATE TABLE PLANETA (
            nome VARCHAR2(50) NOT NULL,
            coordenadas VARCHAR2(50) NOT NULL,
            atmosfera NUMBER(4,1) NOT NULL,
            populacao_max NUMBER(12) NOT NULL,
            temperatura_kelvin NUMBER(5) NOT NULL,
            estruturas_max NUMBER(12) NOT NULL,
            gravidade NUMBER(5, 2) NOT NULL,
            massa NUMBER(27) NOT NULL,
            qtd_agua NUMBER(3,3) NOT NULL,
            fertilidade NUMBER(7) NOT NULL,
            poderio_militar NUMBER(12),
            CONSTRAINT PK_PLANETA PRIMARY KEY(nome),
            CONSTRAINT SK_COORDENADAS UNIQUE(coordenadas),
            CONSTRAINT CK_PLANETA_TEMPERATURA CHECK(temperatura_kelvin >= 0),
            CONSTRAINT CK_PLANETA_ATMOSFERA CHECK(atmosfera >= 0),
            CONSTRAINT CK_PLANETA_POPULACAO_MAX CHECK(populacao_max >= 0),
            CONSTRAINT CK_PLANETA_ESTRUTURAS_MAX CHECK(estruturas_max >= 0),
            CONSTRAINT CK_PLANETA_GRAVIDADE CHECK(gravidade >= 0),
            CONSTRAINT CK_PLANETA_QTD_AGUA CHECK(qtd_agua >= 0),
            CONSTRAINT CK_PLANETA_FERTILIDADE CHECK(fertilidade >= 0),
            CONSTRAINT CK_PLANETA_PODERIO_MILITAR CHECK(poderio_militar >= 0 OR poderio_militar IS NULL)
        );
        
        -- Cria a tabela COLONIA
        CREATE TABLE COLONIA(
            imperio VARCHAR2(50) NOT NULL,
            planeta VARCHAR2(50) NOT NULL,
            turno_inicial NUMBER(4) DEFAULT 0 NOT NULL,
            turno_final NUMBER(4),
            CONSTRAINT PK_COLONIA PRIMARY KEY(imperio, planeta, turno_inicial),
            CONSTRAINT FK_COLONIA_IMPERIO FOREIGN KEY(imperio) REFERENCES IMPERIO(nome),
            CONSTRAINT FK_COLONIA_PLANETA FOREIGN KEY(planeta) REFERENCES PLANETA(nome),
            CONSTRAINT CK_COLONIA_TURNO_INICIAL CHECK(turno_inicial >= 0),
            CONSTRAINT CK_COLONIA_TURNO_FINAL CHECK(turno_final >= turno_inicial OR turno_final IS NULL) 
        );
        
        