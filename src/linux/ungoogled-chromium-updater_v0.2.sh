#! /bin/env sh

echo "==============================="
echo "Ungoogled Chromium Updater v0.2"
echo "Script | by Álan Cruz"
echo "Github | alanmugiwara"
echo "==============================="
echo ""

# Caminho da instalação
browser_folder="/opt/ungoogled-chromium"

# Renomeia o binário baixado
download_file_rename="ungoogled-chromium-143.0.7499.146-1-x86_64.AppImage"

# Pega a URL da última release usando a API do github
download_latest=$(curl -s https://api.github.com/repos/ungoogled-software/ungoogled-chromium-portablelinux/releases/latest \
    | grep browser_download_url \
    | grep 'x86_64.AppImage"' \
    | grep -v zsync \
    | cut -d '"' -f 4)

# Baixa o binário e chama a variável de rename
wget --show-progress -q -O "$download_file_rename" "$download_latest"

# Permissão de execução
chmod +x "$download_file_rename"

# Move o arquivo pro diretório de instalação
sudo mv "$download_file_rename" "$browser_folder"

echo ""
echo "==================================="
echo "Atualização concluída com sucesso!"
echo "==================================="
echo ""

echo "=============================="
echo ">Verificação de segurança<"
echo "Lista de arquivos no diretório"
echo "=============================="
echo ""
ls -la "$browser_folder"
