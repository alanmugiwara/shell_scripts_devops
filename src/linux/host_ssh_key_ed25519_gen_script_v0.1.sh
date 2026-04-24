#!/usr/bin/env sh

echo "==========================================="
echo "host ssh key ed25519 gen script v0.1-linux"
echo "Release date | 20260408"
echo "github | @alanmugiwara"
echo "==========================================="
echo ""

#01 SSH mail input
echo "digite seu e-mail: "
read email
echo ""

#02 SSH Keygen
echo "Gerando chave SSH ED25519..."
ssh-keygen -t ed25519 -C "$email"

#03 Resultado
echo ""
echo "======================================="
echo "Chave SSH ED25519 criada!"
echo "Local:"
echo "  -> $HOME/.ssh/id_ed25519"
echo "  -> $HOME/.ssh/id_ed25519.pub"
echo "======================================="
echo ""

echo "===================================="
echo "Chave SSH ED25519 Pública Gerada!"
echo "===================================="
echo ""
echo "=========================================================================================================="
cat $HOME/.ssh/id_ed25519.pub
echo "=========================================================================================================="
