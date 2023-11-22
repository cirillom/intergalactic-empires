-- esquema da base de dados

--entidades sem chaves estrangeiras

    -- Imperio 
        -- string Nome; <- chave primaria
        -- string Cor*; <- unique --! mark as not null
        -- int qtd_planetas_dominados;*
        CREATE TABLE IMPERIO(
            nome VARCHAR(50),
            cor VARCHAR(50) NOT NULL,
            qtd_planetas_dominados NUMBER(12) DEFAULT 0 NOT NULL,
            CONSTRAINT PK_IMPERIO PRIMARY KEY(nome),
            CONSTRAINT SK_COR UNIQUE(cor),
            CONSTRAINT CK_QTD_PLANETAS_DOMINADOS CHECK(qtd_planetas_dominados >= 0)
        );

    -- Planeta
        -- string Nome; <- chave primaria
        -- string coordenadas;* <- chave secundaria
        -- float atmosfera;
        -- int populacao_max;
        -- float temperatura;
        -- int estruturas_max;
        -- float gravidade;
        -- int qtd_agua;
        -- double fertilidade;
        -- float poderio_militar;
        CREATE TABLE PLANETA (
            nome VARCHAR(50),
            coordenadas VARCHAR(50) NOT NULL,
            atmosfera NUMBER(3,3) DEFAULT 0 NOT NULL,
            populacao_max NUMBER(12) DEFAULT 0 NOT NULL,
            temperatura_kelvin NUMBER(5) DEFAULT 0 NOT NULL,
            estruturas_max NUMBER(12) DEFAULT 0 NOT NULL,
            gravidade NUMBER(5, 2) DEFAULT 0 NOT NULL,
            --!massa NUMBER(12) DEFAULT 0 NOT NULL,
            qtd_agua NUMBER(3,3) DEFAULT 0 NOT NULL,
            fertilidade NUMBER(7) DEFAULT 0 NOT NULL,
            poderio_militar NUMBER(12) DEFAULT 0 NOT NULL,
            CONSTRAINT PK_PLANETA PRIMARY KEY(nome)
            CONSTRAINT SK_COORDENADAS UNIQUE(coordenadas)
            CONSTRAINT CK_TEMPERATURA CHECK(temperatura_kelvin >= 0)
            CONSTRAINT CK_ATMOSFERA CHECK(atmosfera >= 0)
            CONSTRAINT CK_POPULACAO_MAX CHECK(populacao_max >= 0)
            CONSTRAINT CK_ESTRUTURAS_MAX CHECK(estruturas_max >= 0)
            CONSTRAINT CK_GRAVIDADE CHECK(gravidade >= 0)
            CONSTRAINT CK_QTD_AGUA CHECK(qtd_agua >= 0)
            CONSTRAINT CK_FERTILIDADE CHECK(fertilidade >= 0)
            CONSTRAINT CK_PODERIO_MILITAR CHECK(poderio_militar >= 0)
        );
        
    -- Especie
        -- string Nome; <- chave primaria
        -- float conformidade;
        -- float trabalho;
        -- float agressividade;
        -- float gravidade_min;
        -- float gravidade_max;
        -- int agua_min;
        -- int agua_max;
        -- float atmosfera_min;
        -- float atmosfera_max;
        -- float temperatura_min;
        -- float temperatura_max;
        -- float tamanho;
        --! check for what should be null and what not
        CREATE TABLE ESPECIE(
            nome VARCHAR(50),
            conformidade NUMBER(3,3) DEFAULT 0 NOT NULL,
            trabalho NUMBER(3,3) DEFAULT 0 NOT NULL,
            agressividade NUMBER(3,3) DEFAULT 0 NOT NULL,
            gravidade_min NUMBER(5,2) DEFAULT 0 NOT NULL,
            gravidade_max NUMBER(5,2) DEFAULT 0 NOT NULL,
            agua_min NUMBER(3,3) DEFAULT 0 NOT NULL,
            agua_max NUMBER(3,3) DEFAULT 0 NOT NULL,
            atmosfera_min NUMBER(3,3) DEFAULT 0 NOT NULL,
            atmosfera_max NUMBER(3,3) DEFAULT 0 NOT NULL,
            temperatura_min NUMBER(5) DEFAULT 0 NOT NULL,
            temperatura_max NUMBER(5) DEFAULT 0 NOT NULL,
            tamanho NUMBER(5) DEFAULT 0 NOT NULL,
            CONSTRAINT PK_ESPECIE PRIMARY KEY(nome)
            CONSTRAINT CK_CONFORMIDADE CHECK(conformidade >= 0 and conformidade <= 1)
            CONSTRAINT CK_TRABALHO CHECK(trabalho >= 0 and trabalho <= 1)
            CONSTRAINT CK_AGRESSIVIDADE CHECK(agressividade >= 0 and agressividade <= 1)
            CONSTRAINT CK_GRAVIDADE_MIN CHECK(gravidade_min >= 0)
            CONSTRAINT CK_GRAVIDADE_MAX CHECK(gravidade_max >= gravidade_min)
            CONSTRAINT CK_AGUA_MIN CHECK(agua_min >= 0)
            CONSTRAINT CK_AGUA_MAX CHECK(agua_max >= agua_min)
            CONSTRAINT CK_ATMOSFERA_MIN CHECK(atmosfera_min >= 0)
            CONSTRAINT CK_ATMOSFERA_MAX CHECK(atmosfera_max >= atmosfera_min)
            CONSTRAINT CK_TEMPERATURA_MIN CHECK(temperatura_min >= 0)
            CONSTRAINT CK_TEMPERATURA_MAX CHECK(temperatura_max >= temperatura_min)
            CONSTRAINT CK_TAMANHO CHECK(tamanho >= 0)
        );

    -- Recursos
        -- string Nome; <- chave primaria
        -- int tamanho;*
        CREATE TABLE RECURSOS (
            nome VARCHAR(50),
            volume NUMBER(5) DEFAULT 0 NOT NULL,
            CONSTRAINT PK_RECURSOS PRIMARY KEY(nome)
        );

    -- Tecnologia
        --string Nome; <- chave primaria
        --int nivel; <- chave primaria
        --double complexidade;*
        --double eficiencia_produtiva;
        --double poder_destrutivo;
        --int capacidade_de_transporte;
        --int alcance;
        CREATE TABLE TECNOLOGIA(
            nome VARCHAR(50),
            nivel NUMBER(1) DEFAULT 0 NOT NULL,
            complexidade NUMBER(3,3) DEFAULT 0 NOT NULL,
            eficiencia_produtiva NUMBER(3,3) DEFAULT 0,
            poder_destrutivo NUMBER(12) DEFAULT 0,
            capacidade_de_transporte NUMBER(12) DEFAULT 0,
            alcance NUMBER(12) DEFAULT 0,
            CONSTRAINT PK_TECNOLOGIA PRIMARY KEY(nome, nivel),
            CONSTRAINT CK_NOME CHECK(nome IN ('Transporte', 'Armamento', 'Manufatura')),
            CONSTRAINT CK_NIVEL CHECK(nivel >= 0),
            CONSTRAINT CK_COMPLEXIDADE CHECK(complexidade >= 0 and complexidade <= 1),
            CONSTRAINT CK_EFICIENCIA_PRODUTIVA CHECK(eficiencia_produtiva >= 0 and eficiencia_produtiva <= 1),
            CONSTRAINT CK_PODER_DESTRUTIVO CHECK(poder_destrutivo >= 0),
            CONSTRAINT CK_CAPACIDADE_DE_TRANSPORTE CHECK(capacidade_de_transporte >= 0),
            CONSTRAINT CK_ALCANCE CHECK(alcance >= 0)
            --NOME É O TIPO DA TECNOLOGIA, PRECISA VERIFICAR EM APLICAÇÃO SE OS VALORES PREENCHIDOS CONDIZEM COM O TIPO
        );

    -- Estrutura
        -- string Nome; <- chave primaria
        -- string tipo;*
        -- double eficiencia;*
        -- int lotacao_maxima;*
        CREATE TABLE ESTRUTURA(
            nome VARCHAR(50),
            tipo VARCHAR(50),
            eficiencia NUMBER(3,3) DEFAULT 0,
            lotacao_maxima NUMBER(12) DEFAULT 0,
            CONSTRAINT PK_ESTRUTURA PRIMARY KEY(nome),
            CONSTRAINT CK_TIPO CHECK(tipo IN ('Industria', 'Base Militar', 'Instituicao de Ensino')),
            CONSTRAINT CK_EFICIENCIA CHECK(eficiencia >= 0 and eficiencia <= 1),
            CONSTRAINT CK_LOTACAO_MAXIMA CHECK(lotacao_maxima >= 0)
        );


--entidades com chaves estrangeiras
    
    -- Povo
        -- string PLANETA; <- chave estrangeira (PLANETA) <- chave primaria
        -- string ESPECIE; <- chave estrangeira (ESPECIE) <- chave primaria
        -- string tipo;* <- chave primaria
        -- int turno*; <- chave primaria
        -- int qtd;*
    
    -- colonia

    -- Batalha
        -- int ID; <- chave primaria (autogerado)
        -- string IMPÉRIO; <- chave estrangeira (COLONIA) <- unique
        -- string PLANETA_ATACANTE; <- chave estrangeira (COLONIA) <- unique
        -- string TURNO; <- chave estrangeira (COLONIA) <- unique
        -- string PLANETA_DEFENSOR; <- chave estrangeira (PLANETA) <- unique
        -- int turno_batalha;* <- unique
        -- string PLANETA_VENCEDOR; <- chave estrangeira (PLANETA)
        -- float violencia;*
        -- float poderio_atacante;*
        -- float poderio_defensor;*
    
    -- estoque_gasto_batalha

    -- Exploracao

    -- Move_recurso

    -- recursos_para_estrutura

    -- prioridade_producao

    -- estoque

    -- recurso_precisa_tecnologia

    -- industria

    -- move_povo

    -- povo_morto_batalha

    -- conhecimento

    -- construcao

    -- atuacao

    -- gera_recurso

    -- civil


