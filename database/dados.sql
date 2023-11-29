--IMPERIO
INSERT INTO IMPERIO (nome, cor, qtd_planetas_dominados) VALUES ('ROMANO', 'VERMELHO', 4);
INSERT INTO IMPERIO (nome, cor, qtd_planetas_dominados) VALUES ('MONGOL', 'AZUL', 4);

--PLANETA
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('TERRA', '-25, 10, 5', 5.972E24, 25E9, 101.3, 287, 200, 9.8, 0.71, 0.1);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('ARRAKIS', '-10, -20, 15', 4.5E24, 1E9, 85, 320, 50, 12.3, 0.01, 0.005);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('TRANTOR', '35, 30, -20', 7E24, 100E9, 120, 290, 1000, 10.5, 0.05, 0.01);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('PANDORA', '-200, 55, 60', 3E24, 500E6, 95, 290, 10, 7.2, 0.85, 0.2);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('TATOOINE', '5, -15, 10', 4E24, 200E6, 90, 315, 10, 9.1, 0.05, 0.01);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('VULCAN', '-9, 14, -12', 5.5E24, 6E9, 105, 300, 50, 9.9, 0.1, 0.05);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('KRYPTON', '40, -25, 30', 6E24, 20E9, 130, 250, 800, 22.3, 0.2, 0.15);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('VILTRUM', '-150, 70, -50', 5E24, 10E9, 110, 275, 400, 19.7, 0.4, 0.25);

--ESPECIE
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('HUMANO', 0.600, 0.700, 0.500, 8.5, 11, 0.42, 0.92, 0.8, 1.20, 260, 310, 2.1);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('FREMEN', 0.420, 0.810, 0.320, 11, 23.5, 0.01, 0.09, 0.2, 1.10, 290, 330, 2.7);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('SKRULLS', 0.530, 0.650, 0.720, 7, 11, 0.32, 0.81, 0.8, 1.30, 250, 320, 1.5);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('NA VI', 0.730, 0.540, 0.210, 6, 8.4, 0.71, 0.99, 0.9, 1.30, 280, 310, 3.8);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('KLINGONS', 0.310, 0.740, 0.890, 8, 10.5, 0.19, 0.66, 0.9, 1.20, 270, 320, 2.7);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('VULCANS', 0.820, 0.630, 0.090, 9, 10.8, 0.05, 0.35, 0.9, 1.30, 270, 330, 2.1);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('KRYPTONIANS', 0.610, 0.710, 0.430, 20, 23, 0.11, 0.44, 1, 1.50, 240, 280, 3.9);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('VILTRUMITA', 0.240, 0.920, 0.850, 18, 21, 0.36, 0.78, 1, 1.40, 270, 320, 4.1);

--RECURSOS
INSERT INTO RECURSOS (nome, volume) VALUES ('COMIDA', 0.5);
INSERT INTO RECURSOS (nome, volume) VALUES ('MADEIRA', 2);
INSERT INTO RECURSOS (nome, volume) VALUES ('PEDRA', 1);
INSERT INTO RECURSOS (nome, volume) VALUES ('MINERIO', 1);
INSERT INTO RECURSOS (nome, volume) VALUES ('CHIP', 0.1);
INSERT INTO RECURSOS (nome, volume) VALUES ('NAVE', 999999);
INSERT INTO RECURSOS (nome, volume) VALUES ('ARMA', 100);
INSERT INTO RECURSOS (nome, volume) VALUES ('GERADOR', 1000);

--TECNOLOGIA
-- Inserts for Manufatura
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, eficiencia_produtiva) VALUES ('MANUFATURA', 1, 0.2, 0.07);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, eficiencia_produtiva) VALUES ('MANUFATURA', 2, 0.4, 0.21);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, eficiencia_produtiva) VALUES ('MANUFATURA', 3, 0.6, 0.58);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, eficiencia_produtiva) VALUES ('MANUFATURA', 4, 0.8, 0.83);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, eficiencia_produtiva) VALUES ('MANUFATURA', 5, 0.99, 0.99);

-- Inserts for Armamento
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('ARMAMENTO', 1, 0.1, 1);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('ARMAMENTO', 2, 0.20, 2);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('ARMAMENTO', 3, 0.3, 3);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('ARMAMENTO', 4, 0.5, 5);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('ARMAMENTO', 5, 0.8, 8);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('ARMAMENTO', 6, 0.9, 13);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('ARMAMENTO', 7, 0.95, 21);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('ARMAMENTO', 8, 0.99, 34);

-- Inserts for Transporte
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, capacidade_de_transporte, alcance) VALUES ('TRANSPORTE', 1, 0.3, 20000, 5);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, capacidade_de_transporte, alcance) VALUES ('TRANSPORTE', 2, 0.6, 120000, 25);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, capacidade_de_transporte, alcance) VALUES ('TRANSPORTE', 3, 0.9, 450000, 150);

--ESTRUTURA
-- Inserts for Base Militar
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('ESTACAO', 'BASE MILITAR', 0.55, 10000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('TIRO DE GUERRA', 'BASE MILITAR', 0.73, 100000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('BATALHAO', 'BASE MILITAR', 0.32, 500000);

-- Inserts for Instituicao de Ensino
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('UNIESQUINA', 'INSTITUICAO DE ENSINO', 0.23, 10000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('INSTITUTO', 'INSTITUICAO DE ENSINO', 0.52, 20000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('UNIVERSIDADE', 'INSTITUICAO DE ENSINO', 0.85, 50000);

-- Inserts for Industria
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('FAZENDA', 'INDUSTRIA', 0.35, 10000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('LATIFUNDIO', 'INDUSTRIA', 0.73, 100000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('LENHA', 'INDUSTRIA', 0.41, 30000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('MADEIREIRA', 'INDUSTRIA', 0.76, 100000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('PEDREIRA', 'INDUSTRIA', 0.32, 70000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('PEDREIRA TECNOLOGICA', 'INDUSTRIA', 0.82, 9500);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('GARIMPO', 'INDUSTRIA', 0.52, 58000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('MINERADORA', 'INDUSTRIA', 0.81, 10000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('FABRICA DE CHIP', 'INDUSTRIA', 0.6, 50000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('FABRICA DE CHIP AUTOMATICA', 'INDUSTRIA', 0.92, 8000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('FABRICA DE NAVE', 'INDUSTRIA', 0.48, 60000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('FABRICA DE NAVE ROBOTIZADA', 'INDUSTRIA', 0.62, 30000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('INDUSTRIA DE ARMAS', 'INDUSTRIA', 0.26, 75000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('INDUSTRIA DE ARMAS ROBOTIZADA', 'INDUSTRIA', 0.93, 7000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('FABRICA DE GERADOR', 'INDUSTRIA', 0.89, 9000);

--INDUSTRIA
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('FAZENDA', 'COMIDA');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('LATIFUNDIO', 'COMIDA');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('LENHA', 'MADEIRA');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('MADEIREIRA', 'MADEIRA');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('PEDREIRA', 'PEDRA');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('PEDREIRA TECNOLOGICA', 'PEDRA');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('GARIMPO', 'MINERIO');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('MINERADORA', 'MINERIO');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('FABRICA DE CHIP', 'CHIP');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('FABRICA DE CHIP AUTOMATICA', 'CHIP');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('FABRICA DE NAVE', 'NAVE');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('FABRICA DE NAVE ROBOTIZADA', 'NAVE');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('INDUSTRIA DE ARMAS', 'ARMA');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('INDUSTRIA DE ARMAS ROBOTIZADA', 'ARMA');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('FABRICA DE GERADOR', 'GERADOR');

--RECURSO PARA ESTRUTURA
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FAZENDA', 'MADEIRA', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FAZENDA', 'PEDRA', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('LATIFUNDIO', 'MADEIRA', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('LATIFUNDIO', 'PEDRA', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('LATIFUNDIO', 'MINERIO', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('LATIFUNDIO', 'GERADOR', 5);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('LENHA', 'PEDRA', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('LENHA', 'MINERIO', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('MADEIREIRA', 'PEDRA', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('MADEIREIRA', 'MINERIO', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('MADEIREIRA', 'MADEIRA', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('MADEIREIRA', 'GERADOR', 5);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('PEDREIRA', 'MADEIRA', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('PEDREIRA', 'MINERIO', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('PEDREIRA TECNOLOGICA', 'MADEIRA', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('PEDREIRA TECNOLOGICA', 'MINERIO', 15000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('PEDREIRA TECNOLOGICA', 'PEDRA', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('PEDREIRA TECNOLOGICA', 'CHIP', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('PEDREIRA TECNOLOGICA', 'GERADOR', 2000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('GARIMPO', 'MADEIRA', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('GARIMPO', 'PEDRA', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('MINERADORA', 'MADEIRA', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('MINERADORA', 'MINERIO', 15000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('MINERADORA', 'PEDRA', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('MINERADORA', 'CHIP', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('MINERADORA', 'GERADOR', 2000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE CHIP', 'MADEIRA', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE CHIP', 'MINERIO', 100000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE CHIP', 'PEDRA', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE CHIP', 'GERADOR', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE CHIP AUTOMATICA', 'MADEIRA', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE CHIP AUTOMATICA', 'MINERIO', 1000000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE CHIP AUTOMATICA', 'PEDRA', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE CHIP AUTOMATICA', 'CHIP', 100000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE CHIP AUTOMATICA', 'GERADOR', 25000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE NAVE', 'MADEIRA', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE NAVE', 'MINERIO', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE NAVE', 'PEDRA', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE NAVE', 'GERADOR', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE NAVE ROBOTIZADA', 'MADEIRA', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE NAVE ROBOTIZADA', 'MINERIO', 2000000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE NAVE ROBOTIZADA', 'PEDRA', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE NAVE ROBOTIZADA', 'CHIP', 100000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE NAVE ROBOTIZADA', 'GERADOR', 25000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('INDUSTRIA DE ARMAS', 'MADEIRA', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('INDUSTRIA DE ARMAS', 'MINERIO', 200000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('INDUSTRIA DE ARMAS', 'PEDRA', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('INDUSTRIA DE ARMAS', 'GERADOR', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('INDUSTRIA DE ARMAS ROBOTIZADA', 'MADEIRA', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('INDUSTRIA DE ARMAS ROBOTIZADA', 'MINERIO', 2000000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('INDUSTRIA DE ARMAS ROBOTIZADA', 'PEDRA', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('INDUSTRIA DE ARMAS ROBOTIZADA', 'CHIP', 100000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('INDUSTRIA DE ARMAS ROBOTIZADA', 'GERADOR', 25000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE GERADOR', 'MADEIRA', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE GERADOR', 'MINERIO', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('FABRICA DE GERADOR', 'PEDRA', 10000);

--RECURSO PRECISA TECNOLOGIA
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('MANUFATURA', 1, 'COMIDA');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('MANUFATURA', 1, 'MADEIRA');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('MANUFATURA', 1, 'PEDRA');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('MANUFATURA', 1, 'MINERIO');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('MANUFATURA', 1, 'CHIP');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('TRANSPORTE', 1, 'NAVE');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('ARMAMENTO', 1, 'ARMA');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('MANUFATURA', 3, 'GERADOR');


