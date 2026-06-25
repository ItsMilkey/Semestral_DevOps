# Etapa 1: Construcción con Node.js
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# Vite genera el empaquetado estático en la carpeta /dist
RUN npm run build

# Etapa 2: Servidor Web con Nginx
FROM nginx:alpine
# Copiamos los estáticos de Vite al directorio de Nginx
COPY --from=builder /app/dist /usr/share/nginx/html
# Copiamos nuestra configuración personalizada de Nginx
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]