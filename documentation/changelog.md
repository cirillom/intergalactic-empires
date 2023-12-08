# Parte 3
- Relatório do overleaf teve erros de digitação e formatação corrigidos

## MR 
- Planeta agora tem massa
- Nome da variável PLANETA_ATACADO modificado PLANETA_DEFENSOR na tabela BATALHA
- Nome da variável turno virou turno_batalha na tabela BATALHA
- "Recurso" virou "fertilidade” na tabela exploração
- Violencia adicionada na tabela exploração
- Adicionado atributo turno na tabela move_recurso
- Adicionada notação notnull no atributo qtd da tabela povo 
- Nome da variável temperatura modificado para temperatura_kelvin na tabela PLANETA
- Atributo tamanho modificado para volume na tabela ESPECIE
- Atributo tamanho modificado para volume na tabela RECURSOS
- Atributos poderio_militar_atacante e poderio_militar_defensor respectivamente alterados para poderio_atacante e poderio_defensor na tabela BATALHA
- Atributo temperatura alterado para temperatura_kelvin na tabela EXPLORACAO
- Adicionado atributo id em ATUACAO, que se torna sua chave primaria
- Atributo planeta e turno provenientes de CONSTRUCAO renomeados para planeta_construcao e turno_construcao respectivamente.
- Atributo planeta e turno provenientes de CIVIL renomeados para planeta_civil e turno_civil respectivamente
- Removido todos os atributos que antes eram chaves primarias de GERA_RECURSO, adicionado o ID_ATUACAO como chave primaria e chave estrangeira que referencia ATUACAO
- Foram removidos quaisquer tipos de acentuação nos nomes de atributos/tabelas

## DER
- Planeta agora tem massa
- Atuacao tem um ID sintetico
- Poderio militar de atacante e defensor em batalha foi justificado
- Corrigida notação de turno na entidade Povo para ser chave parcial
- Nomes de atributos modificados para ter sintaxe igual ao MR e esquema SQL (notação, letras minusculas)


## Justificativas do MR
- Em povo: Com a restrição, não gera um potencial ponto de inconsistência. A retirada do Tipo da chave serve apenas para aumentar a eficiência das consultas, pois torna a chave do índice da chave primária menor.
- Mencionou-se que a alternativa escolhida não garante a especialização total para Tipo = "Civil"
- Justificado mapeamento dos atributos derivados em Batalha
