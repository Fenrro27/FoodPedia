# --- Etapa 1: Construcción (development) ---
FROM node:20-alpine AS build

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiar package.json y package-lock.json (o yarn.lock)
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código fuente
COPY . .

# Construir la app (para producción, opcional si solo quieres dev server)
RUN npm run build

# --- Etapa 2: Servir la app con un servidor ligero (nginx) ---
FROM nginx:alpine

# Copiar build de React a la carpeta de Nginx
COPY --from=build /app/build /usr/share/nginx/html

# Copiar configuración de Nginx opcional (si necesitas rutas SPA)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exponer puerto 80
EXPOSE 80

# Comando por defecto para Nginx
CMD ["nginx", "-g", "daemon off;"]
