docker run -d \
--name postgres_container \
-e POSTGRES_USER=ulimar \
-e POSTGRES_PASSWORD=ex4men_db \
-p 5432:5432 \
postgres:14
