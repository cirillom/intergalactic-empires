--entidades sem chaves estrangeiras
        -- Cria a tabela IMPERIO
        CREATE TABLE IMPERIO(
            nome VARCHAR2(50),
            cor VARCHAR2(50) NOT NULL,
            qtd_planetas_dominados NUMBER(12) DEFAULT 0 NOT NULL,
            CONSTRAINT PK_IMPERIO PRIMARY KEY(nome),
            CONSTRAINT SK_IMPERIO_COR UNIQUE(cor),
            CONSTRAINT CK_IMPERIO_QTD_PLANETAS_DOMINADOS CHECK(qtd_planetas_dominados >= 0)
        );

        -- Cria a tabela PLANETA
        CREATE TABLE PLANETA (
            nome VARCHAR2(50),
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
            CONSTRAINT CK_PLANETA_PODERIO_MILITAR CHECK(poderio_militar >= 0)
        );

        -- Cria a tabela ESPECIE
        CREATE TABLE ESPECIE(
            nome VARCHAR2(50),
            conformidade NUMBER(4,3) NOT NULL,
            trabalho NUMBER(4,3) NOT NULL,
            agressividade NUMBER(4,3) NOT NULL,
            gravidade_min NUMBER(5,2) NOT NULL,
            gravidade_max NUMBER(5,2) NOT NULL,
            agua_min NUMBER(4,3) NOT NULL,
            agua_max NUMBER(4,3) NOT NULL,
            atmosfera_min NUMBER(4,3) NOT NULL,
            atmosfera_max NUMBER(4,3) NOT NULL,
            temperatura_min NUMBER(5) NOT NULL,
            temperatura_max NUMBER(5) NOT NULL,
            volume NUMBER(5) NOT NULL,
            CONSTRAINT PK_ESPECIE PRIMARY KEY(nome),
            CONSTRAINT CK_ESPECIE_CONFORMIDADE CHECK(conformidade >= 0 AND conformidade <= 1),
            CONSTRAINT CK_ESPECIE_TRABALHO CHECK(trabalho >= 0 AND trabalho <= 1),
            CONSTRAINT CK_ESPECIE_AGRESSIVIDADE CHECK(agressividade >= 0 AND agressividade <= 1),
            CONSTRAINT CK_ESPECIE_GRAVIDADE_MIN CHECK(gravidade_min >= 0),
            CONSTRAINT CK_ESPECIE_GRAVIDADE_MAX CHECK(gravidade_max >= gravidade_min),
            CONSTRAINT CK_ESPECIE_AGUA_MIN CHECK(agua_min >= 0),
            CONSTRAINT CK_ESPECIE_AGUA_MAX CHECK(agua_max >= agua_min),
            CONSTRAINT CK_ESPECIE_ATMOSFERA_MIN CHECK(atmosfera_min >= 0),
            CONSTRAINT CK_ESPECIE_ATMOSFERA_MAX CHECK(atmosfera_max >= atmosfera_min),
            CONSTRAINT CK_ESPECIE_TEMPERATURA_MIN CHECK(temperatura_min >= 0),
            CONSTRAINT CK_ESPECIE_TEMPERATURA_MAX CHECK(temperatura_max >= temperatura_min),
            CONSTRAINT CK_ESPECIE_VOLUME CHECK(volume >= 0)
        );

        -- Cria a tabela RECURSOS
        CREATE TABLE RECURSOS (
            nome VARCHAR2(50),
            volume NUMBER(6) NOT NULL,
            CONSTRAINT PK_RECURSOS PRIMARY KEY(nome),
            CONSTRAINT CK_RECURSOS_VOLUME CHECK(volume >= 0)
        );

        -- Cria a tabela TECNOLOGIA
        CREATE TABLE TECNOLOGIA(
            nome VARCHAR2(50),
            nivel NUMBER(1) DEFAULT 0 NOT NULL,
            complexidade NUMBER(3,3) NOT NULL,
            eficiencia_produtiva NUMBER(3,3),
            poder_destrutivo NUMBER(12),
            capacidade_de_transporte NUMBER(12),
            alcance NUMBER(12),
            CONSTRAINT PK_TECNOLOGIA PRIMARY KEY(nome, nivel),
            CONSTRAINT CK_TECNOLOGIA_NOME CHECK(nome IN ('TRANSPORTE', 'ARMAMENTO', 'MANUFATURA')),
            CONSTRAINT CK_TECNOLOGIA_NIVEL CHECK(nivel >= 0),
            CONSTRAINT CK_TECNOLOGIA_COMPLEXIDADE CHECK(complexidade >= 0 AND complexidade <= 1),
            CONSTRAINT CK_TECNOLOGIA_EFICIENCIA_PRODUTIVA CHECK(eficiencia_produtiva >= 0 AND eficiencia_produtiva <= 1),
            CONSTRAINT CK_TECNOLOGIA_PODER_DESTRUTIVO CHECK(poder_destrutivo >= 0),
            CONSTRAINT CK_TECNOLOGIA_CAPACIDADE_DE_TRANSPORTE CHECK(capacidade_de_transporte >= 0),
            CONSTRAINT CK_TECNOLOGIA_ALCANCE CHECK(alcance >= 0)
        );

        -- Cria a tabela ESTRUTURA
        CREATE TABLE ESTRUTURA(
            nome VARCHAR2(50),
            tipo VARCHAR2(50) NOT NULL,
            eficiencia NUMBER(3,3) NOT NULL,
            lotacao_maxima NUMBER(12) NOT NULL,
            CONSTRAINT PK_ESTRUTURA PRIMARY KEY(nome),
            CONSTRAINT CK_ESTRUTURA_TIPO CHECK(tipo IN ('INDUSTRIA', 'BASE MILITAR', 'INSTITUICAO DE ENSINO')),
            CONSTRAINT CK_ESTRUTURA_EFICIENCIA CHECK(eficiencia >= 0 AND eficiencia <= 1),
            CONSTRAINT CK_ESTRUTURA_LOTACAO_MAXIMA CHECK(lotacao_maxima >= 0)
        );


--entidades com chaves estrangeiras

        -- Cria a tabela INDUSTRIA
        CREATE TABLE INDUSTRIA(
            estrutura VARCHAR2(50),
            recurso_gerado VARCHAR2(50),
            CONSTRAINT PK_INDUSTRIA PRIMARY KEY(estrutura),
            CONSTRAINT FK_INDUSTRIA_ESTRUTURA FOREIGN KEY(estrutura) REFERENCES ESTRUTURA(nome) ON DELETE CASCADE,
            CONSTRAINT FK_INDUSTRIA_RECURSO_GERADO FOREIGN KEY(recurso_gerado) REFERENCES RECURSOS(nome) ON DELETE CASCADE
        );

        -- Cria a tabela RECURSO_PARA_ESTRUTURA
        CREATE TABLE RECURSO_PARA_ESTRUTURA(
            estrutura VARCHAR2(50),
            recurso VARCHAR2(50),
            qtd NUMBER(12) NOT NULL,
            CONSTRAINT PK_RECURSO_PARA_ESTRUTURA PRIMARY KEY(estrutura, recurso),
            CONSTRAINT FK_RECURSO_PARA_ESTRUTURA_ESTRUTURA FOREIGN KEY(estrutura) REFERENCES ESTRUTURA(nome) ON DELETE CASCADE,
            CONSTRAINT FK_RECURSO_PARA_ESTRUTURA_RECURSO FOREIGN KEY(recurso) REFERENCES RECURSOS(nome) ON DELETE CASCADE,
            CONSTRAINT CK_RECURSO_PARA_ESTRUTURA_QTD CHECK(qtd >= 0)
        );
        
        -- Cria a tabela RECURSO_PRECISA_TECNOLOGIA
        CREATE TABLE RECURSO_PRECISA_TECNOLOGIA(
            nome VARCHAR2(50),
            nivel NUMBER(1) DEFAULT 0,
            recurso VARCHAR2(50),
            CONSTRAINT PK_RECURSO_PRECISA_TECNOLOGIA PRIMARY KEY(nome, nivel, recurso),
            CONSTRAINT FK_RECURSO_PRECISA_TECNOLOGIA_TECNOLOGIA FOREIGN KEY(nome, nivel) REFERENCES TECNOLOGIA(nome, nivel) ON DELETE CASCADE,
            CONSTRAINT FK_RECURSO_PRECISA_TECNOLOGIA_RECURSO FOREIGN KEY(recurso) REFERENCES RECURSOS(nome) ON DELETE CASCADE
        );
        
        -- Cria a tabela POVO
        CREATE TABLE POVO(
            planeta VARCHAR2(50),
            especie VARCHAR2(50),
            tipo VARCHAR2(9),
            turno NUMBER(4) DEFAULT 0,
            qtd NUMBER(12) NOT NULL,
            CONSTRAINT PK_POVO PRIMARY KEY(planeta, especie, tipo, turno),
            CONSTRAINT FK_POVO_PLANETA FOREIGN KEY(planeta) REFERENCES PLANETA(nome),
            CONSTRAINT FK_POVO_ESPECIE FOREIGN KEY(especie) REFERENCES ESPECIE(nome),
            CONSTRAINT CK_POVO_TIPO CHECK(tipo IN ('CIVIL', 'MILITAR', 'CIENTISTA')),
            CONSTRAINT CK_POVO_TURNO CHECK(turno >= 0),
            CONSTRAINT CK_POVO_QTD CHECK(qtd >= 0)
        );

        -- Cria a tabela COLONIA
        CREATE TABLE COLONIA(
            imperio VARCHAR2(50),
            planeta VARCHAR2(50),
            turno_inicial NUMBER(4) DEFAULT 0,
            turno_final NUMBER(4),
            CONSTRAINT PK_COLONIA PRIMARY KEY(imperio, planeta, turno_inicial),
            CONSTRAINT FK_COLONIA_IMPERIO FOREIGN KEY(imperio) REFERENCES IMPERIO(nome),
            CONSTRAINT FK_COLONIA_PLANETA FOREIGN KEY(planeta) REFERENCES PLANETA(nome),
            CONSTRAINT CK_COLONIA_TURNO_INICIAL CHECK(turno_inicial >= 0),
            CONSTRAINT CK_COLONIA_TURNO_FINAL CHECK(turno_final >= turno_inicial)
        );
        
        -- Cria a tabela PRIORIDADE_PRODUCAO
        CREATE TABLE PRIORIDADE_PRODUCAO(
            planeta VARCHAR2(50),
            recurso VARCHAR2(50),
            turno NUMBER(4) DEFAULT 0,
            ordem NUMBER(4),
            CONSTRAINT PK_PRIORIDADE_PRODUCAO PRIMARY KEY(planeta, recurso, turno, ordem),
            CONSTRAINT FK_PRIORIDADE_PRODUCAO_PLANETA FOREIGN KEY(planeta) REFERENCES PLANETA(nome),
            CONSTRAINT FK_PRIORIDADE_PRODUCAO_RECURSO FOREIGN KEY(recurso) REFERENCES RECURSOS(nome),
            CONSTRAINT CK_PRIORIDADE_PRODUCAO_TURNO CHECK(turno >= 0),
            CONSTRAINT CK_PRIORIDADE_PRODUCAO_ORDEM CHECK(ordem >= 0)
        );
        
        -- Cria a tabela ESTOQUE
        CREATE TABLE ESTOQUE(
            planeta VARCHAR2(50),
            recurso VARCHAR2(50),
            turno NUMBER(4) DEFAULT 0,
            quantidade NUMBER(12) DEFAULT 0 NOT NULL,
            CONSTRAINT PK_ESTOQUE PRIMARY KEY(planeta, recurso, turno),
            CONSTRAINT FK_ESTOQUE_PLANETA FOREIGN KEY(planeta) REFERENCES PLANETA(nome),
            CONSTRAINT FK_ESTOQUE_RECURSO FOREIGN KEY(recurso) REFERENCES RECURSOS(nome),
            CONSTRAINT CK_ESTOQUE_TURNO CHECK(turno >= 0),
            CONSTRAINT CK_ESTOQUE_QUANTIDADE CHECK(quantidade >= 0)
        );
        
        -- Cria a tabela CONSTRUCAO
        CREATE TABLE CONSTRUCAO(
            planeta VARCHAR2(50),
            estrutura VARCHAR2(50),
            turno NUMBER(4) DEFAULT 0,
            quantidade NUMBER(7) DEFAULT 0 NOT NULL,
            CONSTRAINT PK_CONSTRUCAO PRIMARY KEY(planeta, estrutura, turno),
            CONSTRAINT FK_CONSTRUCAO_PLANETA FOREIGN KEY(planeta) REFERENCES PLANETA(nome),
            CONSTRAINT FK_CONSTRUCAO_ESTRUTURA FOREIGN KEY(estrutura) REFERENCES ESTRUTURA(nome),
            CONSTRAINT CK_CONSTRUCAO_TURNO CHECK(turno >= 0),
            CONSTRAINT CK_CONSTRUCAO_QUANTIDADE CHECK(quantidade >= 0)
        );


----------------------------------------------------------------------

        -- Cria a tabela CIVIL
        CREATE TABLE CIVIL(
            planeta VARCHAR2(50),
            especie VARCHAR2(50),
            tipo VARCHAR2(9) NOT NULL,
            turno NUMBER(4) DEFAULT 0,
            CONSTRAINT PK_CIVIL PRIMARY KEY(planeta, especie, turno),
            CONSTRAINT FK_CIVIL_POVO FOREIGN KEY(planeta, especie, tipo, turno) REFERENCES POVO(planeta, especie, tipo, turno) ON DELETE CASCADE,
            CONSTRAINT CK_CIVIL_TIPO CHECK(tipo IN ('CIVIL'))
        );

        -- Cria a tabela BATALHA
        CREATE TABLE BATALHA(
            id NUMBER GENERATED AS IDENTITY,
            imperio VARCHAR2(50),
            planeta_atacante VARCHAR2(50),
            turno_inicial NUMBER(4),
            planeta_defensor VARCHAR2(50),
            turno_batalha NUMBER(4) NOT NULL,
            planeta_vencedor VARCHAR2(50),
            poderio_atacante NUMBER(12) NOT NULL,
            poderio_defensor NUMBER(12) NOT NULL,
            violencia NUMBER(4,3) NOT NULL,
            CONSTRAINT PK_BATALHA PRIMARY KEY(id),
            CONSTRAINT UQ_BATALHA UNIQUE(imperio, planeta_atacante, turno_inicial, planeta_defensor, turno_batalha),
            CONSTRAINT FK_BATALHA_COLONIA FOREIGN KEY(imperio, planeta_atacante, turno_inicial) REFERENCES COLONIA(imperio, planeta, turno_inicial),
            CONSTRAINT FK_BATALHA_PLANETA_DEFENSOR FOREIGN KEY(planeta_defensor) REFERENCES PLANETA(nome),
            CONSTRAINT FK_BATALHA_PLANETA_VENCEDOR FOREIGN KEY(planeta_vencedor) REFERENCES PLANETA(nome),
            CONSTRAINT CK_BATALHA_VENCEDOR CHECK(planeta_vencedor IS NULL OR planeta_vencedor IN (planeta_atacante, planeta_defensor)),
            CONSTRAINT CK_BATALHA_TURNO_BATALHA CHECK(turno_batalha >= turno_inicial),
            CONSTRAINT CK_BATALHA_VIOLENCIA CHECK(violencia >= 0 AND violencia <= 2),
            CONSTRAINT CK_BATALHA_PODERIO_ATACANTE CHECK(poderio_atacante >= 0),
            CONSTRAINT CK_BATALHA_PODERIO_DEFENSOR CHECK(poderio_defensor >= 0)
        );

        -- Cria a tabela EXPLORACAO
        CREATE TABLE EXPLORACAO(
            imperio VARCHAR2(50),
            planeta_explorador VARCHAR2(50),
            turno_inicial NUMBER(4),
            planeta_explorado VARCHAR2(50),
            turno NUMBER(4) DEFAULT 0,
            incerteza NUMBER(3,3) NOT NULL,
            poderio_militar NUMBER(12),
            atmosfera NUMBER(4,1),
            qtd_populacao NUMBER(12),
            qtd_estruturas NUMBER(12),
            qtd_agua NUMBER(3,3),
            gravidade NUMBER(5,2),
            temperatura_kelvin NUMBER(5),
            fertilidade NUMBER(7) DEFAULT 0,
            CONSTRAINT PK_EXPLORACAO PRIMARY KEY(imperio, planeta_explorador, turno_inicial, planeta_explorado, turno),
            CONSTRAINT FK_EXPLORACAO_COLONIA FOREIGN KEY(imperio, planeta_explorador, turno_inicial) REFERENCES COLONIA(imperio, planeta, turno_inicial),
            CONSTRAINT FK_EXPLORACAO_PLANETA_EXPLORADO FOREIGN KEY(planeta_explorado) REFERENCES PLANETA(nome),
            CONSTRAINT CK_EXPLORACAO_TURNO CHECK(turno >= turno_inicial),
            CONSTRAINT CK_EXPLORACAO_INCERTEZA CHECK(incerteza >= 0 AND incerteza <= 1),
            CONSTRAINT CK_EXPLORACAO_PODERIO_MILITAR CHECK(poderio_militar >= 0),
            CONSTRAINT CK_EXPLORACAO_ATMOSFERA CHECK(atmosfera >= 0),
            CONSTRAINT CK_EXPLORACAO_QTD_POPULACAO CHECK(qtd_populacao >= 0),
            CONSTRAINT CK_EXPLORACAO_QTD_ESTRUTURAS CHECK(qtd_estruturas >= 0),
            CONSTRAINT CK_EXPLORACAO_QTD_AGUA CHECK(qtd_agua >= 0),
            CONSTRAINT CK_EXPLORACAO_GRAVIDADE CHECK(gravidade >= 0),
            CONSTRAINT CK_EXPLORACAO_TEMPERATURA CHECK(temperatura_kelvin >= 0),
            CONSTRAINT CK_EXPLORACAO_FERTILIDADE CHECK(fertilidade >= 0)
        );

        -- Cria a tabela MOVE_RECURSO
        CREATE TABLE MOVE_RECURSO(
            imperio VARCHAR2(50),
            planeta_destino VARCHAR2(50),
            turno_inicial NUMBER(4),
            planeta_origem VARCHAR2(50),
            recurso VARCHAR2(50),
            turno NUMBER(4),
            qtd NUMBER(12) NOT NULL,
            qtd_naves NUMBER(12) NOT NULL,
            CONSTRAINT PK_MOVE_RECURSO PRIMARY KEY(imperio, planeta_destino, turno_inicial, planeta_origem, recurso, turno),
            CONSTRAINT FK_MOVE_RECURSO_COLONIA FOREIGN KEY(imperio, planeta_destino, turno_inicial) REFERENCES COLONIA(imperio, planeta, turno_inicial),
            CONSTRAINT FK_MOVE_RECURSO_ESTOQUE FOREIGN KEY(planeta_origem, recurso, turno) REFERENCES ESTOQUE(planeta, recurso, turno),
            CONSTRAINT CK_MOVE_RECURSO_TURNO CHECK(turno >= turno_inicial),
            CONSTRAINT CK_MOVE_RECURSO_QTD CHECK(qtd >= 0),
            CONSTRAINT CK_MOVE_RECURSO_QTD_NAVES CHECK(qtd_naves >= 0)
        );

        -- Cria a tabela MOVE_POVO
        CREATE TABLE MOVE_POVO(
            imperio VARCHAR2(50),
            planeta_destino VARCHAR2(50),
            turno_inicial NUMBER(4),
            planeta_origem VARCHAR2(50),
            especie VARCHAR2(50),
            tipo VARCHAR2(9),
            turno NUMBER(4),
            qtd NUMBER(12) NOT NULL,
            qtd_naves NUMBER(12) NOT NULL,
            CONSTRAINT PK_MOVE_POVO PRIMARY KEY(imperio, planeta_destino, turno_inicial, planeta_origem, especie, tipo, turno),
            CONSTRAINT FK_MOVE_POVO_COLONIA FOREIGN KEY(imperio, planeta_destino, turno_inicial) REFERENCES COLONIA(imperio, planeta, turno_inicial),
            CONSTRAINT FK_MOVE_POVO_POVO FOREIGN KEY(planeta_origem, especie, tipo, turno) REFERENCES POVO(planeta, especie, tipo, turno),
            CONSTRAINT CK_MOVE_POVO_TURNO CHECK(turno >= turno_inicial),
            CONSTRAINT CK_MOVE_POVO_QTD CHECK(qtd >= 0),
            CONSTRAINT CK_MOVE_POVO_QTD_NAVES CHECK(qtd_naves >= 0)
        );

        -- Cria a tabela POVO_MORTO_BATALHA
        CREATE TABLE POVO_MORTO_BATALHA(
            id_batalha NUMBER(12),
            planeta VARCHAR2(50),
            especie VARCHAR2(50),
            tipo VARCHAR2(9),
            turno NUMBER(4) DEFAULT 0,
            qtd NUMBER(12) DEFAULT 0 NOT NULL,
            CONSTRAINT PK_POVO_MORTO_BATALHA PRIMARY KEY(id_batalha, planeta, especie, tipo, turno),
            CONSTRAINT FK_POVO_MORTO_BATALHA_BATALHA FOREIGN KEY(id_batalha) REFERENCES BATALHA(id),
            CONSTRAINT FK_POVO_MORTO_BATALHA_POVO FOREIGN KEY(planeta, especie, tipo, turno) REFERENCES POVO(planeta, especie, tipo, turno),
            CONSTRAINT CK_POVO_MORTO_BATALHA_QTD CHECK(qtd >= 0)
        );

        -- Cria a tabela CONHECIMENTO
        CREATE TABLE CONHECIMENTO(
            planeta VARCHAR2(50),
            especie VARCHAR2(50),
            tipo VARCHAR2(9) NOT NULL,
            turno NUMBER(4) NOT NULL,
            nome VARCHAR2(50),
            nivel NUMBER(1) DEFAULT 0,
            CONSTRAINT PK_CONHECIMENTO PRIMARY KEY(planeta, especie, nome, nivel),
            CONSTRAINT FK_CONHECIMENTO_POVO FOREIGN KEY(planeta, especie, tipo, turno) REFERENCES POVO(planeta, especie, tipo, turno),
            CONSTRAINT FK_CONHECIMENTO_TECNOLOGIA FOREIGN KEY(nome, nivel) REFERENCES TECNOLOGIA(nome, nivel),
            CONSTRAINT CK_CONHECIMENTO_TIPO CHECK(tipo IN ('CIENTISTA'))
        );

        -- Cria a tabela ATUACAO
        CREATE TABLE ATUACAO(
            id NUMBER GENERATED AS IDENTITY,
            planeta_construcao VARCHAR2(50),
            estrutura VARCHAR2(50),
            turno_construcao NUMBER(4),
            planeta_civil VARCHAR2(50),
            especie VARCHAR2(50),
            turno_civil NUMBER(4),
            qtd_trabalhadores NUMBER(12) NOT NULL,
            CONSTRAINT PK_ATUACAO PRIMARY KEY(id),
            CONSTRAINT UQ_ATUACAO UNIQUE(planeta_construcao, estrutura, especie, turno_civil),
            CONSTRAINT FK_ATUACAO_CONSTRUCAO FOREIGN KEY(planeta_construcao, estrutura, turno_construcao) REFERENCES CONSTRUCAO(planeta, estrutura, turno),
            CONSTRAINT FK_ATUACAO_CIVIL FOREIGN KEY(planeta_civil, especie, turno_civil) REFERENCES CIVIL(planeta, especie, turno),
            CONSTRAINT CK_ATUACAO_QTD_TRABALHADORES CHECK(qtd_trabalhadores >= 0),
            CONSTRAINT CK_ATUACAO_PLANETA CHECK(planeta_construcao = planeta_civil),
            CONSTRAINT CK_ATUACAO_TURNO CHECK(turno_construcao = turno_civil)
        );

        -- Cria a tabela GERA_RECURSO
        CREATE TABLE GERA_RECURSO(
            id_atuacao NUMBER(10),
            recurso VARCHAR2(50),
            qtd NUMBER(12) NOT NULL,
            CONSTRAINT PK_GERA_RECURSO PRIMARY KEY(id_atuacao, recurso),
            CONSTRAINT FK_GERA_RECURSO_ATUACAO FOREIGN KEY(id_atuacao) REFERENCES ATUACAO(id) ON DELETE CASCADE,
            CONSTRAINT FK_GERA_RECURSO_RECURSO FOREIGN KEY(recurso) REFERENCES RECURSOS(nome) ON DELETE CASCADE,
            CONSTRAINT CK_GERA_RECURSO_QTD CHECK(qtd >= 0)
        );

        -- Cria a tabela ESTOQUE_GASTO_BATALHA
        CREATE TABLE ESTOQUE_GASTO_BATALHA(
            id_batalha NUMBER(12),
            planeta VARCHAR2(50),
            recurso VARCHAR2(50),
            turno NUMBER(4),
            qtd NUMBER(12) NOT NULL,
            CONSTRAINT PK_ESTOQUE_GASTO_BATALHA PRIMARY KEY(id_batalha, planeta, recurso, turno),
            CONSTRAINT FK_ESTOQUE_GASTO_BATALHA_ID_BATALHA FOREIGN KEY(id_batalha) REFERENCES BATALHA(id),
            CONSTRAINT FK_ESTOQUE_GASTO_BATALHA_PLANETA FOREIGN KEY(planeta, recurso, turno) REFERENCES ESTOQUE(planeta, recurso, turno),
            CONSTRAINT CK_ESTOQUE_GASTO_BATALHA_TURNO CHECK(turno >= 0),
            CONSTRAINT CK_ESTOQUE_GASTO_BATALHA_QTD CHECK(qtd >= 0)
        );
        