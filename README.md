# alpine-postfix

Easy tu use and launch alpine based postfix docker container

## Env vars to set
- DOMAIN = the domain from which you send emails
- HOSTNAME = the current server hostname

## Docker-compose example

```
  mailout:
    image: j33f/alpine-postfix
    container_name: mailout
    restart: always
    environment:
      - DOMAIN=bar.baz
      - HOSTNAME=foo.bar.baz
```
