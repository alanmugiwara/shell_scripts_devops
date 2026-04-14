#! /bin/env sh

echo "==========================="
echo "Ungoogled Chromium Updater"
echo "Script | by Álan Cruz"
echo "Github | alanmugiwara"
echo "==========================="
echo ""

# Declaração de variáveis
browser_folder="/opt/ungoogled-chromium"
download_url="https://github.com/ungoogled-software/ungoogled-chromium-portablelinux/releases/download/145.0.7632.116-1/ungoogled-chromium-145.0.7632.116-1-x86_64.AppImage"
download_file_rename="ungoogled-chromium-143.0.7499.146-1-x86_64.AppImage"

# Baixa a aplicação
wget --show-progress -q -O "$download_file_rename" "$download_url"

# Permissão de execução
chmod +x "$download_file_rename"

# Move o arquivo pro diretório de instalação
sudo mv "$download_file_rename" "$browser_folder"

echo ""
echo "================================"
echo "Atualização concluída com sucesso!"
echo "================================"
echo ""

echo "=============================="
echo ">Verificação de segurança<"
echo "Lista de arquivos no diretório"
echo "=============================="
echo ""
ls "$browser_folder"
