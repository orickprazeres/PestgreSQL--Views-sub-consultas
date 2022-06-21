-- Realizando uma VIEW
CREATE VIEW vw_cursos_por_categoria AS 
		SELECT categoria.nome AS categoria,
       			COUNT(curso.id) as numero_cursos
    		FROM categoria
    			JOIN curso ON curso.categoria_id = categoria.id
				GROUP BY categoria
;

SELECT * FROM vw_cursos_por_categoria

SELECT categoria
	FROM vw_cursos_por_categoria
	WHERE numero_cursos >=4;
	
-- CREATE 2 VIEW
CREATE VIEW vw_cursos_programacao AS SELECT nome FROM curso WHERE categoria_id = 2;

SELECT * FROM vw_cursos_programacao;

-- Unindo VIEW E TABELA
SELECT categoria.id AS categoria_id,
		vw_cursos_por_categoria.* -- ' * ' serve para buscar todos os campos dessa view
	FROM vw_cursos_por_categoria
		JOIN categoria ON categoria.nome = vw_cursos_por_categoria.categoria
;
	
	
	
	
	
	
	