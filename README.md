# Minecraft Server 1.21.6

Репозиторий с конфигурацией и файлами для запуска Minecraft сервера версии 1.21.6 через Docker.

---

## Как склонировать репозиторий

```bash
git clone https://github.com/sudoProgDoc/mc-server-1.21.6.git
cd mc-server-1.21.6
```

---

## Запуск Minecraft сервера через Docker

- Убедитесь, что у вас установлен и запущен Docker.

1. Соберите Docker-образ:

```bash
docker build -t minecraft-server:1.21.6 .
```

2. Запустите контейнер с пробросом порта 25565 (для игры не только по локальной сети порт нужно открыть в настройках роутера):

```bash
docker run -d -p 25565:25565 -v $(pwd)/data:/data --name mc-server minecraft-server:1.21.6
```

3. Проверьте, что сервер запущен:

```bash
docker ps
```

---

Удачной игры!
