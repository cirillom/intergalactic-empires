# Parte 3
- Relatório do overleaf teve erros de digitação e formatação corrigidos
## DER
- Planeta agora tem massa
- Atuacao tem um ID sintetico
- Poderio militar de atacante e defensor em batalha foi justificado
- Corrigida notação de turno na entidade Povo para ser chave parcial

## MR 
- Planeta agora tem massa
- Nome da variável PLANETA_ATACADO virou PLANETA_DEFENSOR na tabela BATALHA
- Nome da variável turno virou turno_batalha na tabela BATALHA
- "Recurso" virou "fertilidade” na tabela exploração
- Violencia adicionada na tabela exploração
- Adicionado atributo turno na tabela move_recurso
- Adicionada notação notnull no atributo qtd da tabela povo 


## Justificativas do MR
- Em povo: Com a restrição, não gera um potencial ponto de inconsistência. A retirada do Tipo da chave serve apenas para aumentar a eficiência das consultas, pois torna a chave do índice da chave primária menor.
- Mencionou-se que a alternativa escolhida não garante a especialização total para Tipo = "Civil"
- Justificado mapeamento dos atributos derivados em Batalha