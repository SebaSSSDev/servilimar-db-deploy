# ServiLiMar - Base de Datos y Despliegue con Docker

Este repositorio contiene los scripts y configuraciones necesarios para desplegar la base de datos del sistema **LiMar** utilizando contenedores Docker con **PostgreSQL** y **PGAdmin4**.

---

## Despliegue rápido

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/usuario/servilimar-db-deploy.git
   cd servilimar-db-deploy
   ```

2. **Levantar contenedor de PostgreSQL
  ```bash
  docker run -d \
  --name postgres_container \
  -e POSTGRES_USER=ulimar \
  -e POSTGRES_PASSWORD=ex4men_db \
  -p 5432:5432 \
  postgres:14
  ```
3. **Levantar contenedor de PGAdmin4**
  ```bash
  docker run -d \
  --name pgadmin_container \
  -e PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com \
  -e PGADMIN_DEFAULT_PASSWORD=limar#123 \
  -p 5050:80 \
  dpage/pgadmin4
  ```
4. **Conectarse desde PGAdmin**
  - Host: IP local de la interfaz eno1

  - Puerto: 5432

  - Usuario: ulimar

  - Contraseña: ex4men_db

## Scripts SQL

Los archivos SQL están en la carpeta [`sql/`](./sql):

| Archivo | Descripción |
|---------|-------------|
| `01_ddl_create_tables.sql` | Creación de tablas (`Usuario`, `Empleado`, `Servicio`, `Turno`, `Notificacion`) |
| `02_dml_insert_data.sql` | Inserción de datos de prueba |
| `03_queries_test.sql` | Consultas de verificación |

> Ejecuta los scripts en orden desde PGAdmin o `psql`.

---

## Licencia

Este proyecto está bajo la licencia **MIT**.  
Consulta el archivo [LICENSE](./LICENSE) para más información.

---

## Autores

Proyecto académico desarrollado por:  
**Sebastián Calvo Carvajal** — Ingeniería de Sistemas, Universidad del Valle.
