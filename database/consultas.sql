-- Quantidade de recursos de um império em um turno
SELECT
    E.RECURSO,
    NVL(SUM(E.QUANTIDADE), 0) AS QUANTIDADE
FROM
    ESTOQUE E
    JOIN COLONIA C
        ON E.PLANETA = C.PLANETA
    RIGHT JOIN RECURSOS R
        ON E.RECURSO = R.NOME
WHERE
    C.IMPERIO = :IMPERIO AND C.TURNO_INICIAL <= :TURNO_ATUAL AND (C.TURNO_FINAL >= :TURNO_ATUAL OR C.TURNO_FINAL IS NULL)
    AND E.TURNO = :TURNO_ATUAL
GROUP BY
    E.RECURSO
ORDER BY
    E.RECURSO;

-- Quantidade de recursos gerados por um império (soma de tudo gerado em todas as atuações)
SELECT
    R.NOME AS RECURSO,
    NVL(SUM(G.QTD), 0) AS QUANTIDADE
FROM
    GERA_RECURSO G
    JOIN ATUACAO A
        ON G.ID_ATUACAO = A.ID
    JOIN COLONIA C
        ON C.PLANETA = A.PLANETA_CIVIL AND C.TURNO_INICIAL <= A.TURNO_CIVIL AND (C.TURNO_FINAL >= A.TURNO_CIVIL OR C.TURNO_FINAL IS NULL)
        AND IMPERIO = :IMPERIO
    RIGHT JOIN RECURSOS R
        ON G.RECURSO = R.NOME
GROUP BY
    R.NOME
ORDER BY
    R.NOME;

-- Quantidade de civis transformados de cada especie por um império
-- Especie | qtd
-- Humanos | 25980
-- Navi | 0
-- [...]

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


-- o planeta A consegue construir a estrutura X com o estoque que ele tem (divisão relacional)

-- quantas construções um povo atuou