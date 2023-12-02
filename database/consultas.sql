-- Quantidade de recursos de um império em um turno
-- get all colonias from an empire where turno_inicial is less than the desired turn and turno_final is geq than the desired turn
-- get estoque at desired turn from each of the planets in colonias
-- group by resource
VARIABLE turno_atual NUMBER;

EXEC :turno_atual := 3;

SELECT
    E.RECURSO,
    SUM(E.QUANTIDADE) AS QUANTIDADE
FROM
    ESTOQUE E
    JOIN COLONIA C
    ON E.PLANETA = C.PLANETA
WHERE
    C.IMPERIO = 'MONGOL'
    AND C.TURNO_INICIAL <= :TURNO_ATUAL
    AND (C.TURNO_FINAL >= :TURNO_ATUAL
    OR C.TURNO_FINAL IS NULL)
    AND E.TURNO = :TURNO_ATUAL
GROUP BY
    E.RECURSO
ORDER BY
    E.RECURSO;

EXEC :turno_atual := 5;

-- Quantidade de recursos gerados por um império (soma de tudo gerado em todas as atuações)
-- get all colonias from an empire (including past ones)
-- get all atuacoes from the planets in colonias from turno_inicial to turno_final or current turn if turno_final is null
-- get all gera_recursos from the atuacoes where estruturas is of type industria (maybe atuacoes should have ID?)
-- group by resource summing quantity
-- (another query to check for life generation?)
SELECT
    G.RECURSO,
    SUM(G.QTD)
FROM
    GERA_RECURSO G
    JOIN ATUACAO A
    ON G.ID_ATUACAO = A.ID JOIN ESTRUTURA E
    ON E.NOME = A.ESTRUTURA
    JOIN COLONIA C
    ON C.PLANETA = A.PLANETA_CIVIL
WHERE
    E.TIPO = 'INDUSTRIA'
    AND C.IMPERIO = 'MONGOL'
    AND C.TURNO_INICIAL <= :TURNO_ATUAL
    AND (C.TURNO_FINAL >= :TURNO_ATUAL
    OR C.TURNO_FINAL IS NULL)
    AND A.TURNO_CIVIL = :TURNO_ATUAL
GROUP BY
    G.RECURSO
ORDER BY
    G.RECURSO;

-- Quantidade de individuos de cada especie morto nas batalhas de um império
SELECT
    E.NOME AS ESPECIE,
    NVL(SUM(PM.QTD), 0) AS MORTOS
FROM
    POVO_MORTO_BATALHA PM
    JOIN BATALHA B
        ON PM.ID_BATALHA = B.ID AND B.IMPERIO = :IMPERIO 
    RIGHT JOIN ESPECIE E
        ON PM.ESPECIE = E.NOME
    GROUP BY
        E.NOME;


-- o planeta A consegue construir a estrutura X com o estoque que ele tem

-- quantas construções um povo atuou