-- Quantidade de recursos de um império
-- get all colonias from an empire where turno_inicial is less than the desired turn and turno_final is geq than the desired turn
-- get estoque at desired turn from each of the planets in colonias
-- group by resource
SELECT E.recurso, SUM(E.qtd) AS quantidade
    FROM estoque E 
    WHERE E.planeta IN (
        SELECT C.planeta
            FROM colonia C
            WHERE C.imperio = 'Mongol' AND C.turno_inicial <= 1 AND (C.turno_final >= 1 OR C.turno_final IS NULL)
    )
    GROUP BY E.recurso;

-- Quantidade de recursos gerados por um império (soma de tudo gerado em todas as atuações)
-- get all colonias from an empire (including past ones)
-- get all atuacoes from the planets in colonias from turno_inicial to turno_final or current turn if turno_final is null
-- get all gera_recursos from the atuacoes where estruturas is of type industria (maybe atuacoes should have ID?)
-- group by resource summing quantity
-- (another query to check for life generation?)
SELECT G.recurso, SUM(G.qtd) AS quantidade
    FROM gera_recurso G
    WHERE G.id_atuacao IN (
        
    )
    GROUP BY G.recurso;


-- Povos mortos nas batalhas de um império
--planeta, colonia, imperio, povos, batalha, povo_morto_batalha
-- Tecnologias que um império tem acesso
-- Estruturas que um planeta consegue construir com os recursos que tem (Divisão relacional)