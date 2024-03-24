# Full Cycle Rocks!! Challenge

## Overview

Este projeto é a resolução de um desafio proposto pela Full Cycle. O objetivo é criar uma imagem Docker ultra-leve que contenha um aplicativo em Go. Quando executado em um container, este aplicativo exibe a mensagem "Full Cycle Rocks!!". O principal desafio é garantir que a imagem tenha menos de 2MB. Este projeto também inclui a automação para enviar a imagem criada para o Docker Hub.

**Observação**: Se você preferir não construir a imagem localmente, pode simplesmente baixá-la do Docker Hub. A imagem está disponível em [cawell/fullcycle](https://hub.docker.com/repository/docker/cawell/fullcycle), mas note que o Docker Hub pode apagar imagens que não tiveram pull recentemente. Se a imagem não estiver disponível, você precisará construí-la seguindo as instruções abaixo.


## Pré-requisitos

Para construir e executar a imagem Docker deste projeto, você precisará de:

- Docker instalado em sua máquina

## Como Construir

Siga os passos abaixo para construir a imagem Docker:

1. Clone este repositório para a sua máquina local.
2. Navegue até o diretório do repositório clonado.
3. Execute o comando para construir a imagem Docker:

```bash
docker build -t seu-usuario/fullcycle-rocks .
```

Isso construirá uma imagem Docker localmente chamada `seu-usuario/fullcycle-rocks`.

## Executando o Container

Após construir a imagem, execute o container usando o comando:

```bash
docker run seu-usuario/fullcycle-rocks
```

Você deve ver a saída "Full Cycle Rocks!!" no console, indicando que o container está funcionando corretamente.

## Detalhes Técnicos

O projeto é um aplicativo simples em Go que exibe "Full Cycle Rocks!!" na tela. Utilizei um Dockerfile que usa a imagem base scratch para criar uma imagem mínima. Apliquei o conceito de multi-stage builds para compilar o aplicativo em Go em um ambiente separado. Após isso, copiei apenas o binário necessário para a imagem final, garantindo que o tamanho total fosse inferior a 2MB.

## Contribuições

Sinta-se à vontade para contribuir com o projeto. Se você tiver sugestões ou melhorias, por favor, abra uma issue ou envie um pull request.
