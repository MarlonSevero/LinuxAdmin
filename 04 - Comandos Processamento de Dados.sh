
⸻

📌 Contagem de Linhas, Palavras e Bytes

1️⃣ wc - Word Count

Conta linhas, palavras e bytes de um arquivo ou entrada.

📌 Exemplo 1: Contar linhas, palavras e bytes de um arquivo

wc /etc/passwd

📌 Exemplo 2: Contar apenas as linhas

wc -l /etc/passwd

📌 Exemplo 3: Contar apenas palavras

wc -w /etc/passwd



⸻

📌 Conectar Comandos com Pipe (|)

O pipe (|) permite que o resultado de um comando seja enviado como entrada para outro.

📌 Exemplo: Contar quantos arquivos .conf existem em /etc/

ls /etc/*.conf | wc -l



⸻

📌 Seleção e Ordenação de Linhas

2️⃣ head - Exibir as Primeiras Linhas

Mostra as primeiras N linhas de um arquivo.

📌 Exemplo: Exibir as primeiras 5 linhas de um arquivo

head -n 5 /etc/passwd



⸻

3️⃣ sort - Ordenação de Dados

Ordena linhas em ordem alfabética.

📌 Exemplo: Listar os 10 primeiros arquivos .conf, e ordenar os nomes

ls /etc/*.conf | head -n 10 | sort

📌 Exemplo: Ordenação reversa

ls /etc/*.conf | head -n 10 | sort -r



⸻

📌 Calendário e Data

4️⃣ cal - Exibir Calendário

📌 Exemplo: Mostrar o calendário do mês atual

cal

📌 Exemplo: Exibir calendário de um ano específico

cal 2025

5️⃣ date - Exibir Data e Hora Atual

📌 Exemplo: Mostrar a data atual

date



⸻

📌 Redirecionamento e Exibição de Saída

6️⃣ tee - Salvar e Exibir Simultaneamente

O tee funciona como o > (redirecionamento), mas também exibe no terminal.

📌 Exemplo: Redirecionar a saída para um arquivo e exibir no terminal

ls /etc/*.conf | tee arquivos.txt

📌 Exemplo: Adicionar (>>) saída ao final de um arquivo

ls /etc/*.conf | tee -a arquivos.txt



⸻

📌 Manipulação de Texto

7️⃣ echo - Exibir Mensagens

Usado para imprimir texto no terminal ou escrever em arquivos.

📌 Exemplo: Exibir um texto

echo "Olá, Linux!"

📌 Exemplo: Adicionar texto a um arquivo

echo "Nova Linha" >> arquivo.txt



⸻

8️⃣ tr - Substituir ou Remover Caracteres

O tr é usado para tradução ou remoção de caracteres.

📌 Exemplo: Remover a letra "e" de um texto

echo "teste" | tr -d e

Saída: tst

📌 Exemplo: Substituir "i" por "a"

head -n 5 /etc/passwd | tr i a

📌 Exemplo: Converter minúsculas para maiúsculas

head -n 5 /etc/passwd | tr a-z A-Z



⸻

📌 Filtragem de Texto com grep

9️⃣ grep - Procurar por Palavras em Arquivos

O grep é utilizado para buscar palavras dentro de arquivos.

📌 Exemplo: Procurar a palavra "false" dentro de /etc/passwd

grep false /etc/passwd

📌 Exemplo: Destacar a palavra procurada com cores

grep --color false /etc/passwd

📌 Exemplo: Ignorar maiúsculas e minúsculas

grep -i --color manager /etc/passwd

📌 Exemplo: Buscar recursivamente dentro de um diretório

grep -r --color -i manager /etc

📌 Exemplo: Exibir o número das linhas encontradas

grep -n -i --color bash /etc/passwd

📌 Exemplo: Excluir linhas que contêm um padrão

grep -v -n -i --color :



⸻

📌 Conclusão

🔹 Esses comandos são extremamente úteis para manipulação de arquivos, ordenação, contagem, filtragem e automação no Linux. 🚀