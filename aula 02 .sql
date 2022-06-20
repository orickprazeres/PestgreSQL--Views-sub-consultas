-- para a visualizacao geral das tabelas
SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM categoria;
SELECT * FROM aluno_curso;

-- aluno e seus cursos:
SELECT 	aluno.primeiro_nome AS "Primeiro Nome",
		aluno.ultimo_nome AS "Segundo Nome",
		COUNT(aluno_curso.aluno_id) AS "Numero de Alunos"
	FROM aluno
		JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
		GROUP BY 1, 2  		-- grupos: primeiro e ultimo nome
		ORDER BY 3 DESC  	-- ordenado numero de alunos
 		-- adicionar "LIMIT 1" para saber quem é o aluno com mais curso
;

-- relatorio de curso com numero de alunos:
SELECT 	curso.nome AS "Nome do Curso",
		categoria.nome AS "Nome da Categoria",
		COUNT(aluno_curso.aluno_id) AS "Numero de Alunos"
	FROM curso
		JOIN aluno_curso ON aluno_curso.curso_id = curso.id
		JOIN categoria ON categoria.id = curso.categoria_id
		GROUP BY 1, 2 		-- grupo : nome da categoria
		ORDER BY 2 DESC		-- ordenado numero de alunos
		-- adicionar "LIMIT 1" para saber o curso com mais matriculas
;
	
-- relatorio de categoria com mais matriculas:
SELECT 	categoria.nome AS "Nome da Categoria",
		COUNT(aluno_curso.curso_id) AS "numero de alunos"
    FROM categoria
		JOIN curso ON curso.categoria_id = categoria.id
		JOIN aluno_curso ON aluno_curso.curso_id = curso.id
        GROUP BY 1
        ORDER BY 2 DESC
		-- adicionar "LIMIT 1" para saber o curso com mais matriculas
;
	
	

	
	
