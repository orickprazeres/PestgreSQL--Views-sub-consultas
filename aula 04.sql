-- Concatenar os nomes
SELECT (primeiro_nome ||' '|| ultimo_nome) AS nome_completo from aluno;

-- Concatenar aplicando espaco no meio
SELECT CONCAT ('Ricardo', NULL, 'Sousa' )

-- Upper transformar em letras maiusculas
SELECT UPPER (CONCAT ('Ricardo', ' ', 'Sousa' ))

-- Trim remover espacos na String
SELECT TRIM (CONCAT ('Ricardo', ' ', 'Sousa' )) || ' ';

-- Realizando Equecao para descobrir a idade
SELECT (primeiro_nome ||' '|| ultimo_nome) AS nome_completo,
		EXTRACT (YEAR FROM AGE (data_nascimento)) AS idade
	FROM aluno;

-- Conversao de tipos
SELECT TO_CHAR(NOW()::DATE, 'DD-MM-YYYY')

SELECT TO_CHAR(NOW()::DATE, 'DD, MONTH, YYYY')

-- Neste link você consegue ver todas as funções que o PostgreSQL fornece (não são poucas):
-- https://www.postgresql.org/docs/current/functions.html




