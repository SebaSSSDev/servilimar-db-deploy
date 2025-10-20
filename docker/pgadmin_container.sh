docker run -d \
--name pgadmin_container \
-e PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com \
-e PGADMIN_DEFAULT_PASSWORD=limar#123 \
-p 5050:80 \
dpage/pgadmin4
