Aqui está a versão mais detalhada e bem explicada do seu material, incluindo conceitos como 2>, 1>, &>, além de uma explicação mais estruturada:

⸻

07 - Localização de Arquivos e Editores de Texto

Localização de Arquivos

1️⃣ find - Busca de Arquivos e Diretórios

O comando find permite localizar arquivos e diretórios com base em critérios como nome, tamanho, tipo e data de modificação.

📌 Sintaxe básica:

find <caminho> <opção> <critério>

📍 Exemplos Práticos

🔹 Buscar um arquivo específico pelo nome:

find /etc/ -name group

🔹 Ignorar diferenciação entre maiúsculas e minúsculas (-iname):

find /home/marlon/Desktop/ -iname linux_Admin

🔹 Buscar arquivos pertencentes a um usuário específico:

find -user marlon -iname linux_Admin



⸻

2️⃣ Executando Comandos sobre os Resultados (-exec)

O -exec permite executar comandos diretamente nos arquivos encontrados.

📌 Exemplo: Listar arquivos do usuário root no diretório /home/marlon:

find /home/marlon -user root -exec ls -lh {} \;

{} representa o arquivo encontrado, e \; finaliza o comando.

⸻

3️⃣ Redirecionamento de Saída (>, 2>, &>)

Quando rodamos comandos, eles podem gerar saída padrão (stdout) e erro padrão (stderr).

Símbolo	Função
>	Redireciona a saída padrão para um arquivo
>>	Acrescenta a saída ao final do arquivo
2>	Redireciona apenas os erros
1>	Redireciona apenas a saída padrão
&>	Redireciona tanto saída padrão quanto erros

📌 Exemplos:
🔹 Redirecionar apenas a saída para resultado.txt:

find /etc/ -name group > resultado.txt

🔹 Redirecionar apenas erros para erros.txt:

find /etc/ -name group 2> erros.txt

🔹 Redirecionar saída e erros para o mesmo arquivo:

find /etc/ -name group &> tudo.txt



⸻

4️⃣ xargs - Executando Comandos sobre a Lista de Resultados

O xargs executa comandos sobre cada linha retornada pelo find.

📌 Exemplo: Listar detalhes de todos os arquivos encontrados:

find -user marlon | xargs ls -lh

🔴 ls não pode ser usado diretamente com find | ls porque find retorna os arquivos como argumentos individuais.

⸻

5️⃣ Busca por Tamanho de Arquivo

🔹 Buscar arquivos maiores que 20MB:

find / -size +20M

🔹 Ignorar erros de permissão:

find / -size +20M 2> /dev/null

🔹 Exibir tamanho dos arquivos encontrados:

find / -size +20M 2> /dev/null | xargs du -h

🔹 Buscar arquivos entre 20MB e 30MB:

find / -size +20M -size -30M 2> /dev/null | xargs du -h



⸻

6️⃣ Busca por Tipo de Arquivo

🔹 Buscar links simbólicos (-type l)

find /var -type l

🔹 Buscar arquivos comuns (-type f)

find /var -type f | xargs ls -ld



⸻

7️⃣ Controle de Profundidade na Busca (-maxdepth)

Para limitar a profundidade de pesquisa dentro dos diretórios:

find /var/ -type f -maxdepth 2 | xargs ls -ld



⸻

Estatísticas de Arquivo (stat)

O comando stat exibe informações detalhadas sobre um arquivo.

📍 Buscar por Último Acesso/Modificação

🔹 Últimos 10 minutos:

find /tmp -amin -10

🔹 Últimas 24 horas:

find /tmp -mtime -1

Parâmetro	Significado
-amin	Último acesso em minutos
-mmin	Última modificação em minutos
-cmin	Última alteração em minutos
-atime	Último acesso em dias
-mtime	Última modificação em dias
-ctime	Última alteração em dias



⸻

Editores de Texto

Vim - Editor Avançado

Possui três modos principais:
1️⃣ Modo de Comando → Para navegação e manipulação de texto.
2️⃣ Modo de Inserção → Para editar texto diretamente.
3️⃣ Modo de Linha de Comando (:) → Para salvar, sair e executar comandos.

📍 Comandos no Vim

Modo de Comando
	•	h → Esquerda
	•	j → Baixo
	•	k → Cima
	•	l → Direita
	•	y → Copiar
	•	p → Colar

Modo de Inserção
	•	i → Inserir antes do cursor
	•	a → Inserir após o cursor
	•	o → Criar nova linha abaixo
	•	O → Criar nova linha acima

Modo de Linha de Comando (:)
	•	:w → Salvar
	•	:q → Sair
	•	:wq → Salvar e sair

📍 Substituição de Texto

Substituir todas as ocorrências de “sexta” por “segunda”:

:%s/sexta/segunda/g



⸻

Nano - Editor Simples

🔹 Abre direto no modo de edição.

📌 Atalhos Importantes no Nano:
	•	Ctrl + X → Sair
	•	Ctrl + O → Salvar
	•	Ctrl + W → Buscar texto
	•	Ctrl + K → Cortar linha
	•	Ctrl + U → Colar linha

⸻

SED - Editor de Fluxo

O sed manipula textos diretamente no terminal.

🔹 Substituir palavra sem alterar o arquivo:

sed -e 's/feira/supermercado/g' arquivo.txt

🔹 Substituir palavra alterando o arquivo (-i)

sed -i 's/feira/supermercado/g' arquivo.txt

🔹 Remover linhas contendo “feira” (/d)

sed -e '/feira/d' arquivo.txt



⸻

Identificação de Dispositivos (blkid)

O comando blkid exibe informações sobre dispositivos de armazenamento.

📌 Exemplo:

blkid



⸻

Conclusão

Esse material cobre os principais comandos para buscar arquivos, gerenciar redirecionamento de saída e usar editores de texto no Linux. 🚀