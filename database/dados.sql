--IMPERIO
INSERT INTO IMPERIO (nome, cor, qtd_planetas_dominados) VALUES ('Romano', 'Vermelho', 4);
INSERT INTO IMPERIO (nome, cor, qtd_planetas_dominados) VALUES ('Mongol', 'Azul', 4);

--PLANETA
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('Terra', '-25, 10, 5', 5.972E24, 25E9, 101.3, 287, 200, 9.8, 0.71, 0.1);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('Arrakis', '-10, -20, 15', 4.5E24, 1E9, 85, 320, 50, 12.3, 0.01, 0.005);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('Trantor', '35, 30, -20', 7E24, 100E9, 120, 290, 1000, 10.5, 0.05, 0.01);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('Pandora', '-200, 55, 60', 3E24, 500E6, 95, 290, 10, 7.2, 0.85, 0.2);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('Tatooine', '5, -15, 10', 4E24, 200E6, 90, 315, 10, 9.1, 0.05, 0.01);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('Vulcan', '-9, 14, -12', 5.5E24, 6E9, 105, 300, 50, 9.9, 0.1, 0.05);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('Krypton', '40, -25, 30', 6E24, 20E9, 130, 250, 800, 22.3, 0.2, 0.15);
INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('Viltrum', '-150, 70, -50', 5E24, 10E9, 110, 275, 400, 19.7, 0.4, 0.25);

--ESPECIE
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('Humano', 0.600, 0.700, 0.500, 8.5, 11, 0.42, 0.92, 0.8, 1.20, 260, 310, 2.1);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('Fremen', 0.420, 0.810, 0.320, 11, 23.5, 0.01, 0.09, 0.2, 1.10, 290, 330, 2.7);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('Skrulls', 0.530, 0.650, 0.720, 7, 11, 0.32, 0.81, 0.8, 1.30, 250, 320, 1.5);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ("Na'vi", 0.730, 0.540, 0.210, 6, 8.4, 0.71, 0.99, 0.9, 1.30, 280, 310, 3.8);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('Klingons', 0.310, 0.740, 0.890, 8, 10.5, 0.19, 0.66, 0.9, 1.20, 270, 320, 2.7);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('Vulcans', 0.820, 0.630, 0.090, 9, 10.8, 0.05, 0.35, 0.9, 1.30, 270, 330, 2.1);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('Kryptonians', 0.610, 0.710, 0.430, 20, 23, 0.11, 0.44, 1, 1.50, 240, 280, 3.9);
INSERT INTO ESPECIE (nome, conformidade, trabalho, agressividade, gravidade_min, gravidade_max, agua_min, agua_max, atmosfera_min, atmosfera_max, temperatura_min, temperatura_max, tamanho) VALUES ('Viltrumita', 0.240, 0.920, 0.850, 18, 21, 0.36, 0.78, 1, 1.40, 270, 320, 4.1);

--RECURSOS
INSERT INTO RECURSOS (nome, volume) VALUES ('Comida', 0.5);
INSERT INTO RECURSOS (nome, volume) VALUES ('Madeira', 2);
INSERT INTO RECURSOS (nome, volume) VALUES ('Pedra', 1);
INSERT INTO RECURSOS (nome, volume) VALUES ('Minerio', 1);
INSERT INTO RECURSOS (nome, volume) VALUES ('Chip', 0.1);
INSERT INTO RECURSOS (nome, volume) VALUES ('Nave', 999999);
INSERT INTO RECURSOS (nome, volume) VALUES ('Arma', 100);
INSERT INTO RECURSOS (nome, volume) VALUES ('Gerador', 1000);

--TECNOLOGIA
-- Inserts for Manufatura
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, eficiencia_produtiva) VALUES ('Manufatura', 1, 0.2, 0.07);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, eficiencia_produtiva) VALUES ('Manufatura', 2, 0.4, 0.21);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, eficiencia_produtiva) VALUES ('Manufatura', 3, 0.6, 0.58);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, eficiencia_produtiva) VALUES ('Manufatura', 4, 0.8, 0.83);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, eficiencia_produtiva) VALUES ('Manufatura', 5, 0.99, 0.99);

-- Inserts for Armamento
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('Armamento', 1, 0.1, 1);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('Armamento', 2, 0.20, 2);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('Armamento', 3, 0.3, 3);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('Armamento', 4, 0.5, 5);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('Armamento', 5, 0.8, 8);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('Armamento', 6, 0.9, 13);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('Armamento', 7, 0.95, 21);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, poder_destrutivo) VALUES ('Armamento', 8, 0.99, 34);

-- Inserts for Transporte
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, capacidade_de_transporte, alcance) VALUES ('Transporte', 1, 0.3, 20000, 5);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, capacidade_de_transporte, alcance) VALUES ('Transporte', 2, 0.6, 120000, 25);
INSERT INTO TECNOLOGIA (nome, nivel, complexidade, capacidade_de_transporte, alcance) VALUES ('Transporte', 3, 0.9, 450000, 150);

--ESTRUTURA
-- Inserts for Base Militar
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Estacao', 'Base Militar', 0.55, 10000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Tiro de Guerra', 'Base Militar', 0.73, 100000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Batalhao', 'Base Militar', 0.32, 500000);

-- Inserts for Instituicao de Ensino
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Uniesquina', 'Instituicao de Ensino', 0.23, 10000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Instituto', 'Instituicao de Ensino', 0.52, 20000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Universidade', 'Instituicao de Ensino', 0.85, 50000);

-- Inserts for Industria
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Fazenda', 'Industria', 0.35, 10000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Latifundio', 'Industria', 0.73, 100000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Lenha', 'Industria', 0.41, 30000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Madeireira', 'Industria', 0.76, 100000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Pedreira', 'Industria', 0.32, 70000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Pedreira Tecnologica', 'Industria', 0.82, 9500);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Garimpo', 'Industria', 0.52, 58000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Mineradora', 'Industria', 0.81, 10000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Fabrica de chip', 'Industria', 0.6, 50000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Fabrica de chip automatica', 'Industria', 0.92, 8000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Fabrica de Nave', 'Industria', 0.48, 60000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Fabrica de Nave robotizada', 'Industria', 0.62, 30000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Industria de armas', 'Industria', 0.26, 75000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Industria de armas robotizada', 'Industria', 0.93, 7000);
INSERT INTO ESTRUTURA (nome, tipo, eficiencia, lotacao_maxima) VALUES ('Gerador', 'Industria', 0.89, 9000);

--INDUSTRIA
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Fazenda', 'Comida');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Latifundio', 'Comida');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Lenha', 'Madeira');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Madeireira', 'Madeira');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Pedreira', 'Pedra');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Pedreira Tecnologica', 'Pedra');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Garimpo', 'Minerio');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Mineradora', 'Minerio');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Fabrica de chip', 'Chip');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Fabrica de chip automatica', 'Chip');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Fabrica de Nave', 'Nave');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Fabrica de Nave robotizada', 'Nave');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Industria de armas', 'Arma');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Industria de armas robotizada', 'Arma');
INSERT INTO INDUSTRIA (estrutura, recurso_gerado) VALUES ('Gerador', 'Gerador');

--RECURSO PARA ESTRUTURA
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fazenda', 'Madeira', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fazenda', 'Pedra', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Latifundio', 'Madeira', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Latifundio', 'Pedra', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Latifundio', 'Minerio', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Latifundio', 'Gerador', 5);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Lenha', 'Pedra', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Lenha', 'Minerio', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Madeireira', 'Pedra', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Madeireira', 'Minerio', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Madeireira', 'Madeira', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Madeireira', 'Gerador', 5);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Pedreira', 'Madeira', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Pedreira', 'Minerio', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Pedreira Tecnologica', 'Madeira', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Pedreira Tecnologica', 'Minerio', 15000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Pedreira Tecnologica', 'Pedra', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Pedreira Tecnologica', 'Chip', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Pedreira Tecnologica', 'Gerador', 2000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Garimpo', 'Madeira', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Garimpo', 'Pedra', 500);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Mineradora', 'Madeira', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Mineradora', 'Minerio', 15000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Mineradora', 'Pedra', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Mineradora', 'Chip', 5000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Mineradora', 'Gerador', 2000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de chip', 'Madeira', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de chip', 'Minerio', 100000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de chip', 'Pedra', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de chip', 'Gerador', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de chip automatica', 'Madeira', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de chip automatica', 'Minerio', 1000000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de chip automatica', 'Pedra', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de chip automatica', 'Chip', 100000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de chip automatica', 'Gerador', 25000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de Nave', 'Madeira', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de Nave', 'Minerio', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de Nave', 'Pedra', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de Nave', 'Gerador', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de Nave robotizada', 'Madeira', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de Nave robotizada', 'Minerio', 2000000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de Nave robotizada', 'Pedra', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de Nave robotizada', 'Chip', 100000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Fabrica de Nave robotizada', 'Gerador', 25000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Industria de armas', 'Madeira', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Industria de armas', 'Minerio', 200000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Industria de armas', 'Pedra', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Industria de armas', 'Gerador', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Industria de armas robotizada', 'Madeira', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Industria de armas robotizada', 'Minerio', 2000000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Industria de armas robotizada', 'Pedra', 500000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Industria de armas robotizada', 'Chip', 100000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Industria de armas robotizada', 'Gerador', 25000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Gerador', 'Madeira', 10000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Gerador', 'Minerio', 50000);
INSERT INTO RECURSO_PARA_ESTRUTURA (estrutura, recurso, qtd) VALUES ('Gerador', 'Pedra', 10000);

--RECURSO PRECISA TECNOLOGIA
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('Manufatura', 1, 'Comida');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('Manufatura', 1, 'Madeira');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('Manufatura', 1, 'Pedra');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('Manufatura', 1, 'Minerio');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('Manufatura', 1, 'Chip');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('Transporte', 1, 'Nave');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('Armamento', 1, 'Arma');
INSERT INTO RECURSO_PRECISA_TECNOLOGIA (nome, nivel, recurso) VALUES ('Manufatura', 3, 'Gerador');


