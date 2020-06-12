-- ver as informacoes de um determinado medico veterinario
SELECT * FROM mydb.medico_veterinario where id_medico_vet='001';

-- ver as informacoes de um determinado animal
SELECT * FROM mydb.animal where id_animal='001';

-- ver as informacoes de um determinado dono
SELECT * FROM mydb.dono where id_dono='001';

-- ver as informacoes de um determinado enfermeiro veterinario
SELECT * FROM mydb.enfermeiro_veterinario WHERE id_enfermeiro_vet='001';

-- ver as informacoes de todos os exames que um determinado animal realizou
SELECT * FROM mydb.exames WHERE id_animal='001';

-- ver as informacoes da consulta de um determinado animal
SELECT * FROM mydb.consultas WHERE id_animal='001';

-- ver todas as informacoes de equipamento usado num dado exame
SELECT equipamento.* 
	FROM mydb.exames, mydb.equipamento, mydb.tipos_exames 
		WHERE exame.id_tipo_exame=tipos_exames.id_tipo_exame 
			AND tipos_exames.id_tipo_exame=tipos_exames_equipamento.id_tipo_exame
				AND tipos_exames_equipamento.id_tipo_exame=equipamento.id_equipamento
					AND id_exame='001';
                    
-- ver todas as informacoes de disponibilidade de um medico 
SELECT disponibilidade_medico.* 
	FROM mydb.medico_veterinario, mydb.disponibilidade_medico 
		WHERE medico_veterinario.id_medico_vet=disponibilidade_medico.id_medico_vet
			AND disponibilidade_medico.id_medico_vet='001';

-- Ver as consultas para determinado dia 
SELECT consultas.*
	FROM mydb.consultas
		WHERE consultas.data='2018-08-21';
        
-- Pesquisa as consultas de um determinado médico para uma determinada semana
SELECT consultas.*
	FROM mydb.consultas
		WHERE consultas.id_medico_vet='001' 
			AND (CONSULTA.data BETWEEN '2018-08-19' AND '2018-08-26');
            
-- Pesquisa os exames para determinado dia 
SELECT exames.*
	FROM mydb.exames
		WHERE exames.data='2018-09-14';

            
