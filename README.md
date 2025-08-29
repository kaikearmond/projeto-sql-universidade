# Projeto Universitário em SQL

## Descrição
Este projeto foi desenvolvido durante a graduação e tem como objetivo **criar, estruturar e consultar um banco de dados relacional em SQL**, simulando dados de procedimentos e atendimentos hospitalares.

O projeto inclui:
- Criação de tabelas normalizadas com chaves primárias e estrangeiras.
- Definição de constraints para integridade dos dados.
- Criação de uma `VIEW` para consultas otimizadas.
- Execução de queries complexas de agregação (`SUM`, `GROUP BY`, `ORDER BY`).
- Consultas para análise de procedimentos, medicamentos e valores associados.

---

## Tecnologias Utilizadas
- **SQL** (SQL, compatível com PostgreSQL / MySQL com pequenas adaptações)

---

##  Estrutura do Repositório
- `projeto-sql-universidade.sql` → Script completo com criação das tabelas, view e consultas.

---

## Como Executar o Projeto
1. Clone este repositório:
   ```bash
   git clone https://github.com/SEU_USUARIO/projeto-sql-universidade.git
   ```

2. Acesse o diretório do projeto:
   ```bash
   cd projeto-sql-universidade
   ```

3. Importe o arquivo SQL no seu banco de dados (exemplo em PostgreSQL):
   ```bash
   psql -U seu_usuario -d seu_banco -f projeto-sql-universidade.sql
   ```

---

## Exemplos de Consultas
- Somatório de procedimentos clínicos:
  ```sql
  select sum("QTD_Procedimentos_clinicos") from dados_aih_qtd;
  ```

- Somatório de valores de medicamentos:
  ```sql
  select sum(VLR_Medicamentos) from dados_aih_vlr;
  ```

---

##  Autor
Projeto desenvolvido como parte de disciplina universitária, com foco em **modelagem de dados, normalização e consultas SQL**.
