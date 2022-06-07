ALTER TABLE departamento
	CHANGE nome_departamento nome_departamento CHAR (20) NOT NULL;
ALTER TABLE endereco
	CHANGE nome_rua nome_rua CHAR (50) NOT NULL,
	CHANGE numero_rua numero_rua INTEGER (4) NOT NULL,
	CHANGE complemento complemento CHAR (20) NOT NULL,
	CHANGE CEP CEP CHAR (8) NOT NULL
;
ALTER TABLE telefone
	CHANGE fk_cod_tipo fk_cod_tipo INTEGER (4);
ALTER TABLE aluno
	CHANGE fk_cod_curso fk_cod_curso INTEGER (4),
	CHANGE fk_cod_turma fk_cod_turma INTEGER (4),
	CHANGE fk_cod_endereco fk_cod_endereco INTEGER (4)
;
ALTER TABLE telefone_aluno
	CHANGE fk_RA fk_RA INTEGER (4) NOT NULL;
ALTER TABLE disciplina
	CHANGE num_alunos num_aluno INTEGER (4) NOT NULL,
	CHANGE fk_cod_departamento fk_cod_departamento INTEGER (4) NOT NULL;
ALTER TABLE professor
	CHANGE nome_professor nome_professor CHAR (20) NOT NULL,
	CHANGE sobrenome_professor sobrenome_professor CHAR (50) NOT NULL;
ALTER TABLE telefone 
DROP COLUMN numero_rua;