SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM categoria;


-- utilizando o operador "IN" como filtro de categoria
SELECT * FROM curso WHERE categoria_id IN (2,3);

SELECT * FROM aluno WHERE primeiro_nome IN ('Vinicius', 'Diogo', 'Patricia');


-- Aplicando uma Sub-Query
SELECT * FROM curso WHERE categoria_id IN(
	SELECT id FROM categoria WHERE nome  not like '% %'
);

-- exemplo
SELECT *
	FROM aluno
	JOIN aluno_curso ON aluno_curso.Aluno_id = aluno_id
	JOIN curso ON curso.id = aluno_curso.curso_id;


SELECT categoria.nome AS categoria,
        COUNT(curso.id) as numero_cursos
    FROM categoria
    JOIN curso ON curso.categoria_id = categoria.id
GROUP BY categoria;

-- Aplicar a Sub-Query para indentificacao das categorias possuem 3 ou mais numeros de cursos
SELECT 	categoria
	FROM(	
		SELECT categoria.nome AS categoria,
       			COUNT(curso.id) as numero_cursos
    		FROM categoria
    			JOIN curso ON curso.categoria_id = categoria.id
				GROUP BY categoria
	) AS categoria_cursos
	WHERE numero_cursos >= 3;
	
-- Aplicar a Sub-Query para indentificacao das curso possuem 2 ou mais alunos matriculados
SELECT curso
    FROM (
		SELECT curso.nome AS "curso",
         		COUNT(aluno_curso.aluno_id) numero_alunos
    		FROM curso
    			JOIN aluno_curso ON aluno_curso.curso_id = curso.id
				GROUP BY 1
				ORDER BY numero_alunos DESC
	) AS curso_numero_alunos
    WHERE numero_alunos >= 1 ;
	
	


	






