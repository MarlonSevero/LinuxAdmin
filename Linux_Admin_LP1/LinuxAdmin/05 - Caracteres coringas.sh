🔹 CARACTERES CORINGAS E OPERADORES NO LINUX 🔹

Os caracteres coringas são utilizados para manipulação de arquivos e padrões em comandos no terminal.

📌 Caracteres Coringas (Wildcards)

1️⃣ * - Qualquer Número de Caracteres

O * representa qualquer sequência de caracteres (incluindo nenhum).

📌 Exemplo: Listar todos os arquivos .conf dentro de /etc

ls /etc/*.conf

Lista arquivos como sysctl.conf, network.conf, etc.

⸻

2️⃣ ? - Substitui Exatamente um Caractere

Cada ? substitui apenas um único caractere.

📌 Exemplo: Listar arquivos com extensão de 3 caracteres

ls /etc/*.???

Mostra config.txt, backup.cfg, mas não notes.xml (porque tem 4 caracteres na extensão).

⸻

3️⃣ {} - Lista de Opções

O {} permite especificar múltiplas opções.

📌 Exemplo 1: Listar arquivos com extensão .conf ou .cfg

ls /etc/*.{conf,cfg}

📌 Exemplo 2: Listar arquivos específicos

ls -l /etc/{ufc,host}.conf

Lista apenas /etc/ufc.conf e /etc/host.conf.

⸻

4️⃣ {..} - Expansão Numérica e Alfabética

Define intervalos de números ou letras.

📌 Exemplo 1: Criar arquivos sequenciais

touch -v arq0{1..5}.txt

Cria arq01.txt, arq02.txt, …, arq05.txt.

📌 Exemplo 2: Criar pastas numeradas

mkdir arq{1..5}

Cria arq1, arq2, …, arq5.

⸻

5️⃣ [] - Coringa para Caracteres Específicos

Permite corresponder qualquer caractere dentro do intervalo.

📌 Exemplo 1: Listar arquivos que começam com a, b, c ou d e terminam em .conf

ls /etc/[a-d]*.conf

📌 Exemplo 2: Listar arquivos que começam com números

ls /etc/[0-9]*



⸻

6️⃣ [!...] ou [^...] - Exclusão de Caracteres

Exclui arquivos que começam com certos caracteres.

📌 Exemplo 1: Listar arquivos que não começam com a, b, c ou d

ls /etc/[!a-d]*.conf

📌 Exemplo 2: (Sintaxe alternativa)

ls /etc/[^a-d]*.conf



⸻

7️⃣ ~ - Diretório Home do Usuário

O ~ representa o diretório do usuário atual.

📌 Exemplo: Listar arquivos no diretório pessoal

ls ~



⸻

8️⃣ $() - Substituição de Comandos

Executa um comando e substitui pelo resultado.

📌 Exemplo: Exibir a saída de ls /etc

echo $(ls /etc)



⸻

9️⃣ ! - Negação de Comandos

Usado para inverter a lógica de um comando.

📌 Exemplo: Excluir linhas que contêm “pattern”

grep -v "pattern" arquivo.txt

Mostra todas as linhas que não contêm "pattern".

⸻

📌 Conclusão

🔹 Esses caracteres coringas e operadores são ferramentas poderosas para manipulação de arquivos e comandos no terminal Linux! 🚀