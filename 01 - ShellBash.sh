
⸻

🐧 LINUX FORCE - Shell Bash

📌 Introdução ao Bash

BASH (Bourne Again Shell) é o principal interpretador de comandos do Linux.

🔹 Principais características:
	•	No Linux, extensões de arquivos não são obrigatórias.
	•	Tudo no Linux é tratado como arquivo, incluindo dispositivos e processos.
	•	O diretório systemd-private armazena informações temporárias do sistema.

⸻

👤 Tipos de Usuários
	•	Usuário comum: Exemplo: analista
	•	Superusuário (root): Possui privilégios administrativos.

📌 Identificação no terminal:
	•	$ → Usuário comum
	•	# → Superusuário (root)

🔹 Verificando informações do sistema:

whoami        # Exibe o usuário logado  
id            # Mostra o ID do usuário  
hostname      # Nome da máquina  
hostnamectl   # Informações detalhadas do sistema  
pwd           # Exibe o diretório atual (Print Work Directory)  
cd            # Navega entre diretórios (Change Directory)  

🔹 Alternando entre usuários:

su -          # Mudar para outro usuário  
exit          # Sair da sessão atual  
logout        # Encerra a sessão  



⸻

📂 Manipulação de Arquivos e Diretórios

📌 Listar arquivos e diretórios:

ls            # Lista arquivos  
ls -la        # Exibe arquivos ocultos com permissões  
ls -l         # Exibe detalhes dos arquivos (tipo, permissões, dono, grupo, etc.)  

📌 Criar, remover e mover arquivos:

touch arquivo        # Cria um arquivo vazio  
rm arquivo           # Remove um arquivo  
rm -i arquivo        # Solicita confirmação antes de apagar  
rm -r diretorio      # Remove diretórios e arquivos recursivamente  
rm -rf diretorio     # Remove forçadamente  

📌 Copiar e mover arquivos:

cp origem destino       # Copia arquivos  
cp -p origem destino    # Mantém permissões  
cp -r origem destino    # Copia diretórios recursivamente  
mv origem destino       # Move ou renomeia arquivos  



⸻

🛠 Gerenciamento de Usuários

📌 Monitoramento de usuários logados:

who            # Lista usuários logados  
w              # Exibe informações detalhadas dos usuários conectados  
getent passwd  # Lista todos os usuários cadastrados  
id usuario     # Mostra o ID de um usuário específico  

📌 Criar usuários:

adduser usuario   # Adiciona um novo usuário e cria seu diretório em /home  



⸻

📝 Editores de Texto no Terminal

📌 Abrir e editar arquivos no terminal:

nano arquivo    # Abre o arquivo no editor Nano  



⸻

🔎 Busca e Filtragem de Dados

📌 Localizar palavras dentro de arquivos:

grep termo arquivo    # Busca um termo dentro de um arquivo  
grep -i termo arquivo # Ignora maiúsculas e minúsculas  

📌 Filtrar saídas de comandos com Pipe (|):

cat sources.list | grep -i src  



⸻

📤 Saída de Texto e Redirecionamento

📌 Imprimir mensagens no terminal:

echo "Olá, mundo!"  

📌 Redirecionar saída para arquivos:

echo "Texto" > arquivo.txt    # Substitui o conteúdo do arquivo  
echo "Texto" >> arquivo.txt   # Adiciona ao final do arquivo  



⸻

🔐 Permissões de Arquivos

📌 Alterar propriedade de arquivos:

chown usuario:grupo arquivo    # Mudar dono e grupo do arquivo  

📌 Modificar permissões de arquivos:

chmod +x arquivo     # Concede permissão de execução  
chmod 777 arquivo    # Concede todas as permissões (não recomendado)  



⸻

📜 Scripts Bash

📌 Automatização com scripts .sh
	•	Scripts Bash são arquivos que contêm comandos para execução automatizada.
	•	Para executar um script Bash:

./script.sh  



⸻

📂 Estrutura de Diretórios no Linux

📌 Diretório raiz do sistema:

/      # Diretório principal do sistema  



⸻

🚀 Conclusão

✔️ Este guia fornece os conceitos básicos do Shell Bash no Linux.
✔️ Com esses comandos, você pode administrar e operar o sistema de forma eficiente.