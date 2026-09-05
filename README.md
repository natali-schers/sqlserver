# Banco de Dados

## Grupos de comandos da linguagem SQL
- DDL (Data Definition Language): define e mantém a estrutura do banco de dados (CREATE, ALTER, DROP)
- DML (Data Manipulation Language): manipula os dados dentro das estruturas (INSERT, UPDATE, DELETE)
- DQL ou DRL (Data Query/Retrieve Language): realiza a consulta dos dados (SELECT)
- DCL (Data Control Language): controla o acesso e as permissões dos usuários (GRANT, REVOKE)

## O que são datasets?
- Um dataset é um conjunto estruturado de dados, organizado de forma que possa ser armazenado, manipulado e analisado. Os datasets, normalmente, são organizados em formato tabular, com linhas representando registros e colunas representando atributos.

## Formatos de arquivos comuns para importação de dados
- CSV (Comma-Separated Values): um arquivo de texto simples onde as colunas são separadas por um delimitados (geralmente vírgula)
- XLS (Excel): em formato de planilha
- JSON (JavaScript Object Notation): padrão para APIs Web, com uma estrutura de chave e valor

## O que é EDA?
- EDA é a sigla para Exploratory Data Analysis e trata-se do processo de exploração e entendimento dos dados. Nessa etapa, são analisadas padrões de comportamento, inconsistências e relação entre as informações.

## Formas de proteger dados
- Mascaramento: Esta técnica envolve a substituição de dados sensíveis por valores fictícios ou códigos internos, mantendo a estrutura e o formato do dado original. O mascaramento é útil em ambientes onde os dados precisam ser exibidos ou utilizados sem revelar informações confidenciais. Por exemplo, um número de cartão de crédito pode ser mascarado para que apenas os últimos quatro dígitos sejam visíveis.
- Pseudonimização: A pseudonimização é um processo que transforma dados identificáveis em dados não identificáveis, de modo que a identidade das pessoas envolvidas não possa ser facilmente recuperada sem informações adicionais. É uma técnica importante para proteger a privacidade dos indivíduos, permitindo que os dados sejam utilizados para análise sem expor a identidade real dos sujeitos. No entanto, ao contrário do mascaramento, é possível reidentificar os dados, se as informações adicionais forem acessíveis.
- Criptografia: A criptografia é uma técnica de segurança que transforma dados legíveis em um formato codificado, utilizando algoritmos matemáticos e uma chave. Apenas aqueles que possuem a chave correta podem decifrar e acessar os dados originais. A criptografia é amplamente utilizada para proteger dados em trânsito (como em transmissões de internet) e em repouso (como em bancos de dados). O uso adequado da criptografia garante que mesmo que os dados sejam interceptados, eles não possam ser lidos sem a chave de decriptação.
- Transformação para Hash: O hashing é um processo que gera uma representação única de um conjunto de dados através de uma função matemática unidirecional. Isso significa que uma vez que os dados são transformados em um hash, não é possível revertê-los para obter os dados originais. Para um mesmo conjunto de dados, a função hash produzirá sempre o mesmo resultado. Isso é útil para armazenar senhas, onde, mesmo que o hash seja exposto, não é possível descobrir a senha original. O hash também pode ser usado para verificar a integridade dos dados, pois qualquer alteração no dado original resultará em um valor de hash diferente.
