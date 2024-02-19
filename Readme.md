# Orquestrador Local

Este repositório serve como um orquestrador local para os repositórios de [frontend](https://github.com/lucascardial/xpto-notifications-webapp) e [backend](https://github.com/lucascardial/xpto-notifications-api) do projeto de teste prático gove.

## Uso

1. Clone este repositório para o seu ambiente de desenvolvimento:

```bash
git clone https://github.com/lucascardial/xpto-notifications-docker.git
cd xpto-notifications-docker
```

2. Execute o comando `make build` para clonar e provisionar os containers localmente:

```bash
make build
```

3. Após alguns minutos de build, o navegador será aberto automaticamente no endereço:

```
http://notifications.xpto.localhost/dashboard
```

Se você não tiver o `make` instalado, você pode executar os comandos manualmente:

```bash
rm -rf xpto-notifications-api xpto-notifications-webapp
git clone https://github.com/lucascardial/xpto-notifications-api.git
git clone https://github.com/lucascardial/xpto-notifications-webapp.git
docker-compose --env-file .env up -d --build
sleep 5 && open http://notifications.xpto.localhost/dashboard
```

## Detalhes

Neste repositório você encontrará duas planilhas para testar a aplicação:

1. `contacts.csv` uma planilha válida com 10mil registros
2. `contacts-invalid.csv` uma planilha inválida com 10mil registros (para testar a validação)  

Este orquestrador utiliza o [Traefik](https://doc.traefik.io/traefik/) como proxy reverso para permitir o acesso aos containers de frontend e API via DNS. Isso significa que você pode acessá-los facilmente através dos seguintes endereços:

- Frontend: http://notifications.xpto.localhost
- Backend/API: http://api.notifications.xpto.localhost

![traefik](https://4057985046-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MhuHu35r-jv6X4gG8MQ%2Fuploads%2FCFOkzlFh23IMYvSkSoe6%2Ftraefik-logo.jpg?alt=media&token=33c6b6a6-fb44-4b89-bce3-1c13ee62d0ce)

## Requisitos

- Docker
- Git
- Navegador da Web (para visualizar a aplicação)
- Porta 80 dispoível para o traefik
- Makefile

## Licença

Este projeto é licenciado sob a [Licença MIT](https://pt.wikipedia.org/wiki/Licen%C3%A7a_MIT).
