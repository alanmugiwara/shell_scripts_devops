#! /bin/env sh

echo "==========================================="
echo "server user creator + ssh auth script v0.1"
echo "Release date | 20260311"
echo "github | @alanmugiwara"
echo "==========================================="
echo ""

#01 Input - nome de usuário
echo "Digite o nome de usuário: "
read user_name
echo ""
echo "———————————————————————"
echo "Digite a senha do root"
echo "———————————————————————"

#02 Cria o usuário
sudo adduser "$user_name"
echo ""

#03 Adiciona o usuário no grupo do root
sudo usermod -aG sudo "$user_name"

#04 Printa os grupos que o usuário pertence
echo "======================================="
echo "O usuário >>$user_name<< pertence aos grupos:"
groups "$user_name"
echo "======================================="
echo ""

#05 Cria o diretório de chaves SSH na home do user
sudo mkdir -p /home/"$user_name"/.ssh

#06 Input pra inserir e salvar as chaves autorizadas
echo "Digite a chave SSH >>pública<< que deseja autorizar acesso: " 
read add_ssh_keys
echo "$add_ssh_keys" | sudo tee /home/"$user_name"/.ssh/authorized_keys > /dev/null
echo ""
		
#07 Define proprietários e credenciais do arquivo de chaves SSH | usuario:grupo
sudo chown -R "$user_name":"$user_name" /home/"$user_name"/.ssh
sudo chmod 700 /home/"$user_name"/.ssh
sudo chmod 600 /home/"$user_name"/.ssh/authorized_keys

#08 Print pra validar as permissões
echo "======================================================="
echo "Permisões que foram atribuidas:"
echo ""
echo "700 para /home/"$user_name"/.ssh"
echo "600 para /home/"$user_name"/.ssh/authorized_keys"
echo ""
sudo ls -la /home/"$user_name"/.ssh/
echo "======================================================="
echo ""

#09 Retorno visual da conclusão
echo "===================================="
echo "Usuário >>$user_name<< criado com sucesso!"
echo "Chave SSH configurada!"
echo "===================================="
echo ""

echo "==============================="
echo "Print da chave SSH cadastrada"
echo "==============================="
sudo cat /home/"$user_name"/.ssh/authorized_keys
echo""

echo "==============================="
echo "Para logar com o usuário criado"
echo "rode o comando abaixo:"
echo "su - $user_name"
echo "==============================="
echo ""