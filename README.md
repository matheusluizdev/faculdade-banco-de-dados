# Banco de Dados - Faculdade

Projeto acadêmico desenvolvido em **MySQL** com o objetivo de criar e manipular um banco de dados para o controle de uma instituição de ensino.  
O sistema gerencia informações sobre **alunos, professores, cursos, turmas e disciplinas**.

---

## 📚 Estrutura do Projeto

O repositório contém os seguintes arquivos:

- **create_database_faculdade.sql** → Script de criação do banco de dados e tabelas  
- **consultas_teste_faculdade.sql** → Consultas SQL para validação e análise dos dados  
- **Dicionario_de_Dados.docx** → Documento com a descrição detalhada das tabelas, atributos e relacionamentos  

---

## ⚙️ Tecnologias Utilizadas

- **MySQL Workbench 8.0**
- **SQL padrão**
- **Modelo relacional**

---

## ▶️ Como Executar

1. Abra o **MySQL Workbench**
2. Crie um novo schema (ou use o script `create_database_faculdade.sql`)
3. Execute o script de criação das tabelas
4. Execute o script `consultas_teste_faculdade.sql` para testar as consultas

---

## 🧩 Principais Entidades

- **Aluno** (RA, Nome, CPF, Curso, Turma, etc.)  
- **Professor** (Nome, Email, Departamento, etc.)  
- **Curso** (Código, Nome, Departamento)  
- **Disciplina** (Código, Nome, Carga Horária)  
- **Turma** (Código, Período, Curso)  
- **Departamento** (Código, Nome, Localização)

---

## 🔍 Consultas Incluídas

- Listagem de alunos e cursos  
- Professores e disciplinas associadas  
- Cursos e seus departamentos  
- Histórico acadêmico dos alunos  

---

## 👤 Autor

**Matheus de Souza Luiz**  
Projeto desenvolvido como parte dos estudos na disciplina de **Banco de Dados** – Fatec.
