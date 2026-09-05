-- Consultar todas as colunas da tabela
SELECT * FROM client;

-- Consultar colunas específcas da tabela
SELECT name, document, email FROM client;

-- Consultar dados sem repetição da tabela
SELECT DISTINCT name FROM client;

-- Uso de "Alias" para consultar dados de forma amigável
SELECT name AS Nome_Cliente FROM client;
SELECT name AS "Nome do cliente" FROM client;

-- Ordenar clientes por ordem alfabética
SELECT DISTINCT name FROM client ORDER BY name ASC;

-- Ordenar clientes por status e depois por data do cadastro
SELECT DISTINCT name FROM client ORDER BY status, createdAt ASC;

-- Selecionar clientes que não tenham status ativos (A)
SELECT * FROM client WHERE status <> 'A';

-- Clientes com status igual a 'A'
SELECT * FROM client WHERE status = 'A';

-- Clientes com status diferente de 'A'
SELECT * FROM client WHERE status <> 'A';

-- Clientes cujo documento é maior que determinado valor
SELECT * FROM client WHERE document > '50000000000';

-- Clientes cujo documento é menor ou igual a determinado valor
SELECT * FROM client WHERE document <= '50000000000';

-- Clientes cujo nome começa com 'Nat'
SELECT * FROM client WHERE name LIKE 'Nat%';

-- Clientes cujo nome termina com 'Schers'
SELECT * FROM client WHERE name LIKE '%Schers';

-- Clientes cujo nome possui exatamente 5 caracteres
-- O '_' representa exatamente um caractere
SELECT * FROM client WHERE name LIKE '_____';

-- Clientes cujo nome começa com 'N' e possui qualquer quantidade de caracteres depois
SELECT * FROM client WHERE name LIKE 'N%';

-- Clientes que possuem um dos status informados
SELECT * FROM client WHERE status IN ('A', 'I');

-- Clientes cujo gênero seja feminino ou masculino
SELECT * FROM client WHERE gender IN ('F', 'M');

-- Clientes que NÃO possuem os status 'A' ou 'I'
SELECT * FROM client WHERE status NOT IN ('A', 'I');

-- Clientes cujo gênero não seja feminino
SELECT * FROM client WHERE gender NOT IN ('F');

-- Clientes cadastrados entre duas datas
SELECT * FROM client
WHERE createdAt BETWEEN CAST('2026-01-01' AS DATETIME) AND CAST('2026-12-31' AS DATETIME);

-- BETWEEN também pode ser utilizado com números
SELECT * FROM client WHERE id BETWEEN 10 AND 20;

-- Clientes que não possuem e-mail cadastrado
SELECT * FROM client WHERE email IS NULL;

-- Clientes que possuem e-mail cadastrado
SELECT *
FROM client
WHERE email IS NOT NULL;

-- Clientes ativos E do gênero feminino
SELECT * FROM client WHERE status = 'A'  AND gender = 'F';

-- Clientes cadastrados após 01/01/2026 E ativos
SELECT * FROM client
WHERE createdAt > CAST('2026-01-01' AS DATETIME) AND status = 'A';

-- Clientes ativos OU inativos
SELECT * FROM client WHERE status = 'A' OR status = 'I';

-- Clientes do gênero feminino OU masculino
SELECT * FROM client WHERE gender = 'F' OR gender = 'M';

-- Clientes que sejam ativos E (femininos OU masculinos)
SELECT * FROM client WHERE status = 'A'  AND (gender = 'F' OR gender = 'M');

-- Clientes que NÃO possuem status ativo
SELECT * FROM client WHERE NOT status = 'A';

-- Clientes cadastrados antes de 01/01/2026
SELECT * FROM client WHERE createdAt < CAST('2026-01-01' AS DATETIME);

-- Clientes cadastrados a partir de 01/01/2026
SELECT * FROM client WHERE createdAt >= CAST('2026-01-01' AS DATETIME);

-- Clientes cadastrados em um determinado intervalo
SELECT * FROM client WHERE createdAt >= CAST('2026-01-01' AS DATETIME) AND createdAt < CAST('2027-01-01' AS DATETIME);

-- =========================================================
-- RESUMO DOS PRINCIPAIS OPERADORES
-- =========================================================
-- =       Igual
-- <>      Diferente
-- >       Maior
-- <       Menor
-- >=      Maior ou igual
-- <=      Menor ou igual
-- LIKE    Pesquisa por padrão de texto
-- IN      Está dentro de uma lista de valores
-- NOT IN  Não está dentro de uma lista de valores
-- BETWEEN Está dentro de um intervalo
-- IS NULL É nulo
-- IS NOT NULL Não é nulo
-- AND     Todas as condições precisam ser verdadeiras
-- OR      Pelo menos uma condição precisa ser verdadeira
-- NOT     Inverte uma condição

