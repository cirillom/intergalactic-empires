-- Quantidade de Recursos de dado Império em um dado Turno
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
    E.RECURSO
;


-- Quantidade de Recursos Produzidos por um dado Império até Dado Turno (soma de tudo gerado em todas as atuações)
SELECT
    R.NOME AS RECURSO,
    NVL(SUM(G.QTD), 0) AS QUANTIDADE
FROM
    GERA_RECURSO G
    JOIN ATUACAO A
        ON A.TURNO_CIVIL <= :TURNO
        AND G.ID_ATUACAO = A.ID
    JOIN COLONIA C
        ON C.PLANETA = A.PLANETA_CIVIL AND C.TURNO_INICIAL <= A.TURNO_CIVIL AND (C.TURNO_FINAL >= A.TURNO_CIVIL OR C.TURNO_FINAL IS NULL)
        AND IMPERIO = :IMPERIO
    RIGHT JOIN RECURSOS R
        ON G.RECURSO = R.NOME
GROUP BY
    R.NOME
ORDER BY
    R.NOME
;


-- Quantidade de Civis Especializados de cada Espécie por Determinado Império até Dado Turno
-- Especie | qtd
-- Humanos | 25980
-- Navi | 0
-- [...]
SELECT 
    E.NOME AS ESPECIE,
    NVL(SUM(A.QTD_TRABALHADORES), 0) AS CIVIS
FROM
    ATUACAO A
    JOIN COLONIA C
        ON (IMPERIO = :IMPERIO AND A.TURNO_CONSTRUCAO <= :TURNO)
        AND (C.PLANETA = A.PLANETA_CIVIL AND C.TURNO_INICIAL <= A.TURNO_CIVIL AND (C.TURNO_FINAL >= A.TURNO_CIVIL OR C.TURNO_FINAL IS NULL))
    RIGHT JOIN ESPECIE E
        ON E.NOME = A.ESPECIE
GROUP BY
    E.NOME
ORDER BY
    E.NOME
;


-- Quantidade de Indivíduos de Cada Espécie Mortos em Batalhas Protagonizadas por dado Império
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
        E.NOME
    ORDER BY
        E.NOME
;


-- Checagem se dado Império Consegue Construir Dada Estrutura com seu Estoque Disponível em dado Turno  (-1 é falso e maior igual a 0 verdadeiro)
SELECT
    MIN((NVL(E.QUANTIDADE, 0) - R.QTD)) AS PODE_CONSTRUIR
FROM
    RECURSO_PARA_ESTRUTURA R
    LEFT JOIN ESTOQUE E
        ON R.RECURSO = E.RECURSO
WHERE
    E.PLANETA = :PLANETA AND E.TURNO = :TURNO AND R.ESTRUTURA = :ESTRUTURA
;


-- planetas que tem todas as estruturas avançadas (divisão relacional)
WITH ESTRUTURAS_AVANCADAS AS (
    SELECT
        E.NOME
    FROM
        ESTRUTURA E
    WHERE
        E.TIPO = 'INDUSTRIA'
        AND (E.NOME IN ('PEDREIRA TECNOLOGICA', 'MINERADORA', 'FABRICA DE CHIP AUTOMATICA', 'FABRICA DE NAVE ROBOTIZADA', 'INDUSTRIA DE ARMAS ROBOTIZADA', 'FABRICA DE GERADOR'))
)
SELECT
    P.NOME
FROM
    PLANETA P
WHERE
    NOT EXISTS ( (
        SELECT
            ES.NOME
        FROM
            ESTRUTURAS_AVANCADAS ES
    ) MINUS (
        SELECT
            C.ESTRUTURA
        FROM
            CONSTRUCAO C
        WHERE
            C.PLANETA = P.NOME
    ) )
;

--CONSULTAS DO PROTOTIPO DO JOGO

-- Classificação dos Impérios por Estimativa de Potencial de Poder Total em Dado Turno (soma do poder de todas as colonias)
SELECT 
    C.IMPERIO,
    I.COR,
    NVL(SUM(P.QTD_AGUA * P.ESTRUTURAS_MAX), 0) AS PODER
FROM
    PLANETA P
    JOIN COLONIA C
        ON P.NOME = C.PLANETA
            AND C.TURNO_INICIAL <= :TURNO AND (C.TURNO_FINAL >= :TURNO OR C.TURNO_FINAL IS NULL)
    JOIN IMPERIO I
        ON I.NOME = C.IMPERIO
GROUP BY
    C.IMPERIO,
    I.COR
ORDER BY
    NVL(SUM(P.QTD_AGUA * P.ESTRUTURAS_MAX), 0) DESC
;


--Estimativa de Potencial de Poder de Cada Colônia de cada Império em um dado Turno
SELECT
    I.NOME,
    I.COR,
    P.NOME,
    NVL(P.QTD_AGUA * P.ESTRUTURAS_MAX, 0) AS PODER
FROM
    PLANETA P
    JOIN COLONIA C
        ON P.NOME = C.PLANETA
            AND C.TURNO_INICIAL <= :TURNO AND (C.TURNO_FINAL >= :TURNO OR C.TURNO_FINAL IS NULL)
    JOIN IMPERIO I
        ON I.NOME = C.IMPERIO
ORDER BY
    I.NOME,
    NVL(P.QTD_AGUA * P.ESTRUTURAS_MAX, 0) DESC
;
