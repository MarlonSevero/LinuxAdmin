
🔹 COMANDOS AVANÇADOS NO L
📌 Gerenciamento de Dispositivos e Cópias

1️⃣ lsblk - Listar Dispositivos de Armazenamento

O comando lsblk exibe informações sobre discos e partições conectadas ao sistema.

📌 Exemplo:

lsblk

Exibe os dispositivos de armazenamento disponíveis.

⸻

2️⃣ dd - Cópia e Conversão de Arquivos

O dd é utilizado para cópia de arquivos e clonagem de dispositivos.

Parâmetros principais:
	•	if= → Define o arquivo de entrada
	•	of= → Define o arquivo de saída
	•	bs= → Define o tamanho do bloco (1M = 1MB)
	•	count= → Número de blocos a serem copiados

📌 Exemplo 1: Criar um backup do setor de boot do disco sda1

dd if=/dev/sda1 of=/tmp/boot.img bs=1M count=10

📌 Exemplo 2: Restaurar o backup

dd if=/tmp/boot.img of=/dev/sda1

📌 Exemplo 3: Clonar um disco inteiro

dd if=/dev/sda of=/dev/sdb

📌 Exemplo 4: Criar um pendrive bootável

dd if=/tmp/kali.iso of=/dev/sdc



⸻

📌 Criação de Arquivos com Zeros

O /dev/zero gera um fluxo de bytes zerados, útil para criar arquivos vazios ou sobrescrever discos.

📌 Criar um arquivo de 20MB preenchido com zeros:

dd if=/dev/zero of=/var/swapfile bs=1M count=20

📌 Sobrescrever um HD para evitar recuperação de dados:

dd if=/dev/zero of=/dev/sdX bs=1M count=1000

🚨 Atenção: Esse comando apaga todos os dados do disco!

⸻

📌 Divisão e Junção de Arquivos

1️⃣ split - Dividir Arquivos

Permite dividir arquivos grandes em partes menores.

📌 Exemplo:

split -b 20M -d /tmp/imagem.iso /opt/img

Divide imagem.iso em partes de 20MB e as armazena em /opt/img com sufixos numéricos.

⸻

2️⃣ cat - Reunir Arquivos Divididos

Para recombinar os arquivos divididos com split:

cat /opt/img0* > /tmp/novoimagem.iso

Junta todas as partes em um único arquivo novamente.

⸻

📌 Comparação de Arquivos

1️⃣ diff - Comparação de Arquivos

Mostra as diferenças entre dois arquivos.

📌 Exemplo:

diff arquivo1.txt arquivo2.txt



⸻

2️⃣ shasum - Verificação de Integridade

Gera um hash SHA-1 para garantir que um arquivo não foi alterado.

📌 Exemplo:

shasum arquivo.iso

Se dois arquivos têm o mesmo hash, eles são idênticos.

⸻

📌 Gerenciamento de Memória e Swap

1️⃣ free -h - Monitorar Memória RAM e Swap

📌 Exibir uso de memória e swap:

free -h



⸻

2️⃣ Criar e Ativar um Arquivo Swap

📌 Criar um swap de 1GB:

dd if=/dev/zero of=/var/swapfile bs=1M count=1024
mkswap /var/swapfile
swapon /var/swapfile

📌 Desativar o swap:

swapoff /var/swapfile



⸻

📌 Manipulação de Texto

1️⃣ uniq - Remover Linhas Duplicadas

📌 Exibir apenas linhas únicas:

sort lista.txt | uniq

📌 Contar repetições de linhas:

sort lista.txt | uniq -c

📌 Mostrar apenas as linhas duplicadas:

sort lista.txt | uniq -d



⸻

2️⃣ paste - Juntar Arquivos Lado a Lado

📌 Exemplo:

paste arquivo1.txt arquivo2.txt

Exibe os arquivos um ao lado do outro.

⸻

3️⃣ join - Combinar Arquivos com Índice Comum

📌 Exemplo:

join arquivo1.txt arquivo2.txt



⸻

4️⃣ head - Exibir Primeiras Linhas

📌 Exemplo: Mostrar as 10 primeiras linhas de um arquivo

head -n 10 arquivo.txt



⸻

5️⃣ tail - Exibir Últimas Linhas

📌 Exemplo: Mostrar as 10 últimas linhas

tail -n 10 arquivo.txt



⸻

6️⃣ cut - Extrair Colunas de um Arquivo

📌 Exemplo: Mostrar os três primeiros campos do arquivo /tmp/passwd

head -n 5 /tmp/passwd | cut -d ':' -f 1-3

📌 Parâmetros:
	•	-d ':' → Define : como delimitador
	•	-f 1-3 → Seleciona os campos 1 a 3
	•	-c 1-10 → Exibe apenas os primeiros 10 caracteres

⸻

7️⃣ awk - Manipulação Avançada de Texto

📌 Exemplo: Exibir colunas específicas

head -n 5 /tmp/passwd | awk -F ':' '{print $1, $2}'

📌 Filtrar usuários com UID maior que 10:

head -n 20 /tmp/passwd | awk -F ':' '$3 > 10 {print NR, $1, $3}'

NR → Número da linha
$1, $2, $3 → Campos extraídos

⸻

📌 Conclusão

🔹 Esses comandos são essenciais para a administração de sistemas Linux, permitindo gerenciar dispositivos, manipular arquivos e otimizar desempenho. 🚀