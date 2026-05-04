[![made Language {generic badge}](https://img.shields.io/badge/Made%20with-Bash%20Script-8A2BE2)](https://github.com/alanmugiwara/)
[![made Language {generic badge}](https://img.shields.io/badge/Made%20with-Power%20Shell%20Script-8A2BE2)](https://github.com/alanmugiwara)
![create date](https://img.shields.io/badge/Created-mar%2011,%202026-8A2BE2)
[![Last update](https://img.shields.io/github/last-commit/alanmugiwara/shell_scripts_devops?color=8A2BE2&label=Last%20Commit)](https://github.com/alanmugiwara/shell_scripts_devops)

[![contributors](https://img.shields.io/github/contributors/alanmugiwara/shell_scripts_devops?color=8A2BE2)](https://github.com/alanmugiwara)
[![issues counter](https://img.shields.io/github/issues/alanmugiwara/shell_scripts_devops?color=8A2BE2)](https://github.com/alanmugiwara)
[![repo size](https://img.shields.io/github/repo-size/alanmugiwara/shell_scripts_devops?color=8A2BE2)](https://github.com/alanmugiwara)

<img src="https://raw.githubusercontent.com/alanmugiwara/shell_scripts_devops/refs/heads/main/logo.png" width="450">

# ⚙️ Shell Scripts DevOps
Este repositório reúne scripts utilitários para automação de tarefas comuns em ambientes AWS e Linux, com foco em produtividade, provisionamento e segurança.

Os scripts foram criados para uso direto em terminal, com saída amigável e fácil interpretação.

## 📦 Scripts Disponíveis

### 🟢 AWS Machine List Viewer (Windows)

Script em PowerShell para listar instâncias EC2 em execução, trazendo informações detalhadas como:

* ID da instância
* Nome (Tag Name)
* Tipo da instância
* Estado
* IP público
* AMI utilizada
* Sistema operacional (baseado na AMI)

#### Script

```
src/win/aws_machine_list_show_v0.1_win.ps1
```

#### Destaques

* Consulta instâncias **running**
* Enriquecimento automático com dados da AMI
* Output formatado em tabela

---

### 🔐 Host SSH Key ed25519 Gen (Linux)

Script para geração de chave SSH no padrão **ED25519**, solicitando apenas e-mail do usuário para realizar todo o procedimento.

#### Script

```
src/linux/host_ssh_key_ed25519_gen_script_v0.1.sh
```

#### Funcionalidades

* Geração de chave SSH moderna e segura
* Exibição automática da chave pública
* Print do caminho dos arquivos no fim da execução

---

### 👤 Server User Creator + SSH Auth (Linux)

Script para criação de usuário no servidor com permissões sudo e configuração de autenticação via chave SSH.

#### Script

```
src/linux/server_user_creator_ssh_auth_script_v0.1.sh
```

#### Funcionalidades

* Criação de usuário
* Adição ao grupo sudo
* Configuração de `.ssh/authorized_keys`
* Ajuste automático de permissões
* Validação final com listagem e exibição da chave

---

### 🌐 Ungoogled Chromium Updater (Linux)

Script para atualização automática do navegador **Ungoogled Chromium** via API do GitHub.

#### Script

```
src/linux/ungoogled-chromium-updater_v0.2.sh
```

#### Funcionalidades

* Busca da última versão via API
* Download automático
* Aplicação de permissões de execução
* Substituição no diretório `/opt`
* Verificação final de integridade

---

## 🛠️ Tecnologias Utilizadas

* PowerShell
* AWS CLI
* Bash
* GitHub API
* OpenSSH

---

## 🚀 Como Utilizar

### Pré-requisitos

* AWS CLI configurado (`aws configure`)
* Permissões adequadas na conta AWS
* Linux com:

  * `curl`
  * `wget`
  * `ssh-keygen`
  * `sudo`

---

### Execução

#### Windows (PowerShell)

```powershell
.\aws_machine_list_show_v0.1_win.ps1
```

---

#### Linux

Dê permissão de execução:

```bash
chmod +x nome_do_script.sh
```

Execute:

```bash
./nome_do_script.sh
```

---

## 📌 Observações

* Os scripts foram pensados para uso interativo
* Alguns requerem privilégios de root (`sudo`)
* Certifique-se de revisar permissões antes de executar em produção

## Contato
Para dúvidas, sugestões ou problemas, entre em contato com Álan Cruz:

<a href="https://instagram.com/alancruz_tec" target="_blank"><img loading="lazy" src="https://img.shields.io/badge/-Instagram-%23E4405F?style=for-the-badge&logo=instagram&logoColor=white" alt="Instagram"></a>
<a href="mailto:contato@alancruztec.com.br"><img loading="lazy" src="https://img.shields.io/badge/E--Mail-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="E-mail"></a>
<a href="https://linkedin.com/in/alansilvadacruz" target="_blank"><img loading="lazy" src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="Linkedin"></a>
<a href="https://alancruztec.com.br" target="_blank"><img loading="lazy" src="https://img.shields.io/badge/-My%20Website-%230077B5?style=for-the-badge&logo=wordpress&logoColor=white" alt="Website"></a>
