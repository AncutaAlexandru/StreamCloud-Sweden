# Folosim Nginx, un server web foarte rapid si usor
FROM nginx:alpine

# Stergem pagina default de la Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiem pagina noastra in server
COPY index.html /usr/share/nginx/html/index.html

# Deschidem portul 80 pentru trafic
EXPOSE 80

# Pornim serverul
CMD ["nginx", "-g", "daemon off;"]
