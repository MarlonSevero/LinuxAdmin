
⸻

🔹 MANUAIS E REDIRECIONADORES NO LINUX 🔹

📌 Dispositivos Padrão

No Linux, os principais dispositivos de entrada e saída são:
	•	Entrada padrão (stdin) → Teclado (/dev/stdin, identificado pelo número 0)
	•	Saída padrão (stdout) → Monitor (/dev/stdout, identificado pelo número 1)
	•	Saída de erro (stderr) → Monitor para erros (/dev/stderr, identificado pelo número 2)

📌 Comando para visualizar os dispositivos padrão:

ls -l /dev/std*



⸻

📌 Leitura de Arquivos no Terminal

1️⃣ cat - Exibir Conteúdo de Arquivos

O cat é utilizado para visualizar arquivos no terminal sem editá-los.

📌 Exemplo: Exibir o conteúdo de um arquivo

cat nome_do_arquivo

⚠️ Atenção: Se o arquivo for muito grande, a saída pode poluir o terminal.

⸻

2️⃣ less e more - Navegação no Arquivo

Permitem rolagem do conteúdo sem exibir tudo de uma vez.
	•	O less é mais avançado, pois permite navegação sem poluir o terminal.
	•	O more só permite avançar no conteúdo, sem voltar.

📌 Exemplos:

less nome_do_arquivo
more nome_do_arquivo



⸻

📌 Busca de Arquivos com find

3️⃣ find - Localizar Arquivos no Sistema

📌 Exemplo: Procurar arquivos maiores que 20MB

find / -size +20M

🔍 O find pode ser usado para buscas avançadas por nome, tipo, data de modificação e mais.

⸻

📌 Redirecionamento de Saída

4️⃣ Redirecionamento com Sobrescrita (>)
	•	Redireciona a saída de um comando para um arquivo.
	•	Se o arquivo já existir, ele será sobrescrito.

📌 Exemplo:

ls /etc/*.conf > saida.txt



⸻

5️⃣ Redirecionamento com Incremento (>>)
	•	Adiciona a saída ao final do arquivo, sem apagar o conteúdo existente.

📌 Exemplo:

ls /etc/*.conf >> saida.txt



⸻

📌 Manipulação de Saídas e Erros

6️⃣ Separar Saída Padrão e Erros

📌 Exemplo: Salvar saída padrão e erros em arquivos diferentes

find / -size +20M 1> sucesso.txt 2> erro.txt

	•	1> → Redireciona saída padrão para sucesso.txt
	•	2> → Redireciona erros para erro.txt

⸻

7️⃣ Redirecionar Apenas a Saída Padrão

📌 Exemplo: Salvar apenas os resultados corretos

find / -size +20M 1> saida.txt



⸻

8️⃣ Descartar Erros (/dev/null)

📌 Exemplo: Ignorar todos os erros

find / -size +20M 1> saida.txt 2> /dev/null

/dev/null é um “buraco negro” onde os dados são descartados.

⸻

9️⃣ Unir Saída Padrão e Erros

📌 Exemplo: Salvar saída e erros no mesmo arquivo

find / -size +20M 1> saida.txt 2>&1

📌 Alternativa: Acrescentar saída e erros ao final do arquivo

find / -size +20M >> saida.txt 2>&1



⸻

📌 Criar Arquivos Diretamente no Terminal

🔟 Criar Arquivo com Redirecionamento (<<)

📌 Exemplo: Criar um arquivo sem abrir um editor

cat << EOF > saida.txt
Este é um exemplo de texto.
EOF

	•	EOF indica o fim da entrada.

⸻

📌 Proteção Contra Sobrescrita

1️⃣1️⃣ Bloquear Sobrescrita de Arquivos

📌 Comando:

set -o noclobber

Impede que > sobrescreva arquivos existentes.

⸻

1️⃣2️⃣ Permitir Sobrescrita Novamente

📌 Comando:

set +o noclobber



⸻

1️⃣3️⃣ Forçar Sobrescrita Manualmente

📌 Exemplo: Ignorar proteção e sobrescrever

echo "Novo conteúdo" >| arquivo.txt

O >| ignora a configuração noclobber e permite a sobrescrita.

⸻

📌 Resumo dos Comandos

Comando	Descrição
>	Redireciona e sobrescreve a saída
>>	Redireciona e adiciona ao final do arquivo
2>	Redireciona os erros
2>/dev/null	Descarta os erros
2>&1	Junta saída padrão e erros no mesmo arquivo
cat << EOF > arquivo.txt	Cria arquivos sem editor
set -o noclobber	Bloqueia sobrescrita de arquivos
set +o noclobber	Permite sobrescrita novamente



⸻

🚀 Conclusão

✔️ Redirecionadores e manipulação de arquivos são essenciais para automação e organização no Linux.
✔️ Dominar esses comandos facilita a manipulação de logs, buscas e execução de scripts.