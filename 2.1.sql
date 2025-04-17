--1. Установим Docker с офф. сайта https://docs.docker.com/desktop/setup/install/mac-install/ 
--2. Установим образ Postgres в Docker, скопировав команду с https://hub.docker.com/_/postgres
docker pull postgres

--3. Создадим контейнер
docker run --name Academy_test -e POSTGRES_PASSWORD=qwerty1234 -d postgres

--4. Подключимся к контейнеру, используя терминал в Docker
docker exec -it Academy_test bash
psql -h localhost -U postgres