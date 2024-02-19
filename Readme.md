# Orquestrador Local

Este repositório serve como um orquestrador local para os repositórios de [frontend](https://github.com/lucascardial/xpto-notifications-webapp) e [backend](https://github.com/lucascardial/xpto-notifications-api) do projeto de teste prático gove.

## Uso

1. Clone este repositório para o seu ambiente de desenvolvimento:

```bash
git clone https://github.com/lucascardial/orquestrador-local.git
cd gove
```

2. Execute o comando `make build` para clonar e provisionar os containers localmente:

```bash
make build
```

3. Após alguns minutos de build, o navegador será aberto automaticamente no endereço:

```
http://notifications.xpto.localhost/dashboard
```

## Detalhes

Este orquestrador utiliza o [Traefik](https://doc.traefik.io/traefik/) como proxy reverso para permitir o acesso aos containers de frontend e API via DNS. Isso significa que você pode acessá-los facilmente através dos seguintes endereços:

- Frontend: http://notifications.xpto.localhost
- Backend/API: http://api.notifications.xpto.localhost


## Requisitos

- Docker
- Git
- Navegador da Web (para visualizar a aplicação)
- Porta 80 dispoível para o traefik

## Licença

Este projeto é licenciado sob a [Licença MIT](https://pt.wikipedia.org/wiki/Licen%C3%A7a_MIT).
