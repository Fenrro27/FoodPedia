# FoodPedia

Aplicación para gestionar y consultar recetas de cocina.  
Stack tecnológico:
- **Backend**: Java + Spring Boot
- **Frontend**: React
- **Base de datos**: PostgreSQL
- **Infraestructura**: Docker + Docker Compose

---

## 🚀 Requisitos previos
- [Docker](https://docs.docker.com/get-docker/) instalado
- [Docker Compose](https://docs.docker.com/compose/) instalado
- Git

---

## 📂 Estructura del proyecto
```

recetas-app/
│
├── backend/         # API REST con Spring Boot
│   ├── src/
│   ├── pom.xml
│   └── Dockerfile
│
├── frontend/        # Interfaz de usuario en React
│   ├── src/
│   ├── package.json
│   └── Dockerfile
│
├── db/              # Configuración de base de datos PostgreSQL
│   ├── init.sql
│   └── Dockerfile
│
├── docker-compose.yml
├── LICENSE
└── README.md

````

---

## ⚙️ Configuración inicial
Clona el repositorio:
```bash
git clone https://github.com/Fenrro27/FoodPedia.git
cd FoodPedia
````

---

## ▶️ Levantar la aplicación

Desde la raíz del proyecto:

```bash
docker-compose up --build
```

Esto levantará:

* **Backend** en `http://localhost:8080`
* **Frontend** en `http://localhost:3000`
* **PostgreSQL** en `localhost:5432`

---

## 🗄️ Base de datos

La base de datos se inicializa con `db/init.sql`.
Por defecto:

* Usuario: `postgres`
* Password: `postgres`
* Database: `recetas`

Puedes modificar estas credenciales en `docker-compose.yml`.

---

## 📸 Manejo de fotos

Las imágenes no se guardan en la base de datos.
Se almacenan en una carpeta o servicio externo (ejemplo: `uploads/` o S3) y en la DB se guarda solo la URL de acceso.

Ejemplo en la tabla `recetas`:

```sql
INSERT INTO recetas (titulo, descripcion, foto_url)
VALUES ('Pollo Asado', 'Receta clásica', 'https://misrecetas.com/uploads/pollo_asado.jpg');
```

---

## 🧑‍💻 Desarrollo

### Backend (Spring Boot)

```bash
cd backend
./mvnw spring-boot:run
```

### Frontend (React)

```bash
cd frontend
npm install
npm start
```

---

## 📜 Licencia

Este proyecto está bajo la licencia **MIT**. Consulta el archivo [LICENSE](LICENSE) para más detalles.
