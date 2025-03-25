O comando dd (data duplicator) é uma ferramenta poderosa do Linux usada para copiar e converter dados em baixo nível. Ele é frequentemente utilizado para:
	•	Criar e restaurar backups de discos ou partições.
	•	Criar imagens ISO.
	•	Criar pendrives bootáveis.
	•	Apagar e sobrescrever dados de forma irreversível.

⸻

Sintaxe básica do dd

dd if=<arquivo_ou_dispositivo_origem> of=<arquivo_ou_dispositivo_destino> bs=<tamanho_do_bloco> count=<quantidade_de_blocos>

	•	if (input file) → Especifica o arquivo ou dispositivo de entrada (origem).
	•	of (output file) → Especifica o arquivo ou dispositivo de saída (destino).
	•	bs (block size) → Define o tamanho dos blocos de dados lidos e escritos.
	•	count → Define o número de blocos a serem copiados.

⸻

Casos de uso do dd

1️⃣ Fazer backup de um disco ou partição

dd if=/dev/sda of=/tmp/backup.img bs=1M

	•	Copia todo o conteúdo do disco /dev/sda e cria um arquivo de imagem (backup.img).

Para restaurar o backup:

dd if=/tmp/backup.img of=/dev/sda bs=1M

(Restaura o backup para o disco original.)

⸻

2️⃣ Criar um pendrive bootável

dd if=/caminho/iso/sistema.iso of=/dev/sdb bs=4M status=progress

	•	status=progress → Exibe o progresso da cópia.
(Substitua /dev/sdb pelo caminho correto do seu pendrive.)

⸻

3️⃣ Apagar um disco de forma irreversível (segurança de dados)

dd if=/dev/zero of=/dev/sda bs=1M

(Substitui todo o conteúdo do disco /dev/sda por zeros, impedindo recuperação de dados.)

Para uma sobrescrita ainda mais segura, podemos usar /dev/random:

dd if=/dev/random of=/dev/sda bs=1M

(Isso grava dados aleatórios no disco, tornando a recuperação ainda mais difícil.)

⸻

4️⃣ Criar um arquivo de swap

dd if=/dev/zero of=/swapfile bs=1M count=1024

(Cria um arquivo de swap de 1GB.)
	•	Para ativá-lo como swap:

mkswap /swapfile
swapon /swapfile



⸻

5️⃣ Clonar um disco inteiro para outro

dd if=/dev/sda of=/dev/sdb bs=1M

	•	Copia todo o conteúdo de /dev/sda para /dev/sdb (ideal para migrar um sistema).

⸻

Dicas importantes sobre dd
	•	Cuidado ao usar dd com dispositivos! Um erro pode sobrescrever um disco inteiro.
	•	Sempre verifique os nomes dos dispositivos antes de executar (lsblk pode ajudar).
	•	O bs (block size) deve ser escolhido com cuidado para otimizar a velocidade:
	•	1M ou 4M → Recomendado para grandes volumes de dados.
	•	512 ou 4096 bytes → Pode ser necessário para dispositivos mais antigos.
	•	Para otimizar a velocidade, use status=progress para monitorar a cópia.

⸻

O dd é muito útil para tarefas avançadas, mas exige muita atenção para evitar perda de dados!