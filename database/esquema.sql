-- esquema da base de dados

--entidades sem chaves estrangeiras

    -- Recursos
        -- string Nome; <- chave primaria
        -- int tamanho;*

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
        

    -- Especie
        -- string Nome; <- chave primaria
        -- double conformidade;
        -- string trabalho;
        -- double agressividade;
        -- float gravidade_min;
        -- float gravidade_max;
        -- int agua_min;
        -- int agua_max;
        -- float atmosfera_min;
        -- float atmosfera_max;
        -- float temperatura_min;
        -- float temperatura_max;
        -- float tamanho;

    -- Tecnologia
        --string Nome; <- chave primaria
        --int nivel; <- chave primaria
        --double complexidade;*
        --double eficiencia_produtiva;
        --double poder_destrutivo;
        --int capacidade_de_transporte;
        --int alcance;

    -- Estrutura
        -- string Nome; <- chave primaria
        -- string tipo;*
        -- double eficiencia;*
        -- int lotacao_maxima;*

    -- Imperio 
        -- string Nome; <- chave primaria
        -- string Cor; <- unique
        -- int qtd_planetas_dominados;*


--entidades com chaves estrangeiras
    
    -- Povo
        -- string PLANETA; <- chave estrangeira (1) <- chave primaria
        -- string ESPECIE; <- chave estrangeira (2) <- chave primaria
        -- string tipo;* <- chave primaria
        -- int turno*; <- chave primaria
        -- int qtd;*
    
    -- Batalha
        -- int ID; <- chave primaria (autogerado)
        -- string IMPÉRIO; <- chave estrangeira (1) <- unique
        -- string PLANETA_ATACCANTE; <- chave estrangeira (1) <- unique
        -- string TURNO; <- chave estrangeira (1) <- unique
        -- string PLANETA_DEFENSOR; <- chave estrangeira (2) <- unique
        -- int turno_batalha;* <- unique
        -- string PLANETA_VENCEDOR; <- chave estrangeira (3)
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

    -- colonia

    -- move_povo

    -- povo_morto_batalha

    -- conhecimento

    -- construcao

    -- atuacao

    -- gera_recurso

    -- civil


