# Sem chave estrangeira

- Imperio 
- Planeta
- Especie
- Recursos
- Tecnologia
- Estrutura

# Chave Estrangeira Primária
**Entitades com chaves estrangeiras apenas para entidades sem chaves estrangeiras**

- Povo
	- string PLANETA; <- chave estrangeira (PLANETA) <- chave primaria

	- string ESPECIE; <- chave estrangeira (ESPECIE) <- chave primaria

- colonia
	- string IMPERIO; <- chave estrangeira (IMPERIO) <- chave primaria
	
	- string PLANETA; <- chave estrangeira (PLANETA) <- chave primaria

- recursos_para_estrutura
	- string ESTRUTURA <- chave estrangeira (Estrutura) <- chave primaria

	- string RECURSO <- chave estrangeira (Recursos) <- chave primaria

- prioridade_producao
	- PLANETA; <- chave estrangeira (PLANETA) <- chave primaria
	
	- RECURSO; <- chave estrangeira (RECURSO) <- chave primaria

- estoque
	- PLANETA; <- chave estrangeira (PLANETA) <- chave primaria
	
	- RECURSO;  <- chave estrangeira (RECURSO) <- chave primaria

- recurso_precisa_tecnologia
	- string NOME;<-chave estrangeira(Tecnologia)<-chave primaria

	- int NIVEL;<-chave estrangeira(Tecnologia)<-chave primaria
	
	- string RECURSO;;<-chave estrangeira(Recursos)<-chave primaria

- construcao
	- string PLANETA;<-chave estrangeira(Planeta)<-chave primaria

	- string ESTRUTURA;<-chave estrangeira(Estrutura)<-chave primaria

- industria
	- string ESTRUTURA;<-chave estrangeira(Estrutura)<-chave primaria
	
	- string RECURSO_GERADO*<-chave estrangeira(Recursos)

# Chave estrangeira secundária
**Entidades com chave estrangeira para entidades com chave estrangeira**

- civil
	- string PLANETA; <- chave estrangeira(Povo) <- chave primaria
	- string ESPECIO; <- chave estrangeira(Povo) <- chave primaria
	- string tipo* <- chave estrangeira(Povo)
	- int TURNO;<- chave estragengeira(Povo) <-chave primaria

- Batalha
	- string IMPÉRIO; <- chave estrangeira (COLONIA) <- unique
	- string PLANETA_ATACANTE; <- chave estrangeira (COLONIA) <- unique
	- int TURNO; <- chave estrangeira (COLONIA) <- unique

	- string PLANETA_DEFENSOR; <- chave estrangeira (PLANETA) <- unique

- Exploracao
	- IMPÉRIO; <- chave estrangeira (COLONIA) <- chave primaria  
	- PLANETA_EXPLORADOR; <- chave estrangeira (COLONIA) <- chave primaria
	- TURNO_INICIAL; <- chave estrangeira (COLONIA) <- chave primaria
	
	- PLANETA_EXPLORADO; <- chave estrangeira (PLANETA) <- chave primaria

- Move_recurso
	- string IMPERIO; <- chave estrangeira (COLONIA) <- chave primaria
	- string PLANETA_DESTINO <- chave estrangeira (COLONIA) <- chave primaria
	- int TURNO_INICIAL <- chave estrangeira (COLONIA) <- chave primaria
	
	- string PLANETA_ORIGEM <- chave estrangeira (Estoque) <- chave primaria
	- string RECURSO <- chave estrangeira (Estoque) <- chave primaria
	- int TURNO <- chave estrangeira (Estoque) <- chave primaria

- move_povo
	- string IMPERIO;<-chave estrangeira(Colonia)<-chave primaria
	- string PLANETA_DESTINO;<-chave estrangeira(Colonia)<-chave primaria
	- int TURNO_INICIAL;<-chave estrangeira(Colonia)<-chave primaria
	
	- string PLANETA_ORIGEM;<-chave estrangeira(Povo)<-chave primaria
	- string ESPECIE;<-chave estrangeira(Povo)<-chave primaria
	- string TIPO;<-chave estrangeira(Povo)<-chave primaria
	- int TURNO;<-chave estrangeira(Povo)<-chave primaria

- povo_morto_batalha
	- int ID_BATALHA;<-chave estrangeira(BATALHA)<-chave primaria
	
	- string PLANETA;<-chave estrangeira(Povo)<-chave primaria
	- string ESPECIE;<-chave estrangeira(Povo)<-chave primaria
	- string TIPO;<-chave estrangeira(Povo)<-chave primaria
	- int TURNO;<-chave estrangeira(Povo)<-chave primaria

- conhecimento
	- string PLANETA;<-chave estrangeira(Povo)<-chave primaria
	- string ESPECIE;<-chave estrangeira(Povo)<-chave primaria
	- string TIPO*;<-chave estrangeira(Povo)
	- int TURNO*;<-chave estrangeira(Povo)
	
	- string NOME;<-chave estrangeira(Tecnologia)<-chave primaria
	- int NIVEL;<-chave estrangeira(Tecnologia)<-chave primaria

- atuacao
	- string PLANETA*;<-chave estrangeira(Construção)
	- string ESTRUTURA;<-chave estrangeira(Construção) <-chave primaria
	- string TURNO*;<-chave estrangeira(Construção) 
	
	- string PLANETA;<-chave estrangeira(Civil) <-chave primaria
	- string ESPECIE;<-chave estrangeira(Civil) <-chave primaria
	- int TURNO;<-chave estrangeira(Civil) <-chave primaria


- gera_recurso
	- string ESTRUTURA; <-chave estrangeira(Atuação)<- chave primaria
	- string PLANETA;<-chave estrangeira(Atuação)<-chave primaria
	- string ESPÉCIE;<-chave estrangeira(Atuação)<- chave primaria
	- string TURNO;<-chave estrangeira(Atuação)<-chave primaria
	
	- string RECURSO;<- chave estrangeira(Recursos)<-chave primaria

- estoque_gasto_batalha
	- int ID_BATALHA; <- chave estrangeira (BATALHA) <- chave primaria

	- string PLANETA; <- chave estrangeira (PLANETA) <- chave primaria

	- string RECURSO; <- chave estrangeira (RECURSO) <- chave primaria