# Webpack + Docker em servidor Linux

Este repositório demonstra como configurar um ambiente de desenvolvimento utilizando Docker para rodar o Webpack em um servidor. A abordagem facilita a padronização do ambiente, garantindo que todos os desenvolvedores utilizem a mesma configuração, independentemente do sistema operacional local.

## Tecnologias

- Docker: Containerização do ambiente
- Node.js: Execução do Webpack
- Webpack: Empacotamento e otimização de assets

## Recursos

- Configuração do Webpack dentro de um container Docker
- Scripts para build e desenvolvimento
- Ambiente isolado e replicável

## Como Usar

### 1. Atualizar pacotes do sistema
```
sudo apt update && sudo apt upgrade -y
```
### 2. Adicionar a chave GPG do Docker
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```
### 3. Adicionar o repositório do Docker
```
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" | sudo tee /etc/apt/sources.list.d/docker.list
```
### 4. Instalar o Docker
```
sudo apt install -y docker-ce=5:19.03.15~3-0~ubuntu-bionic docker-ce-cli=5:19.03.15~3-0~ubuntu-bionic containerd.io
```
- docker-ce → Versão comunitária do Docker (Docker Community Edition).
- docker-ce-cli → Interface de linha de comando (CLI) do Docker.
- containerd.io → Serviço de gerenciamento de containers usado pelo Docker.
### 5. Verificar a instalação
```
docker --version
```
```
docker info
```
### 6. Testar o Docker
```
docker run hello-world
```

> #### Caso o usuario não consiga rodar o docker você vai precisar adicionar ele ao grupo e para isso vc vai usar:
> ```
> sudo usermod -aG docker $USER
> ```
### 7. Clonar esse repositório
```
git clone https://github.com/caiovf/docker-for-webpack.git
```
### 7. Construir o container
```
npm run services:up
```
