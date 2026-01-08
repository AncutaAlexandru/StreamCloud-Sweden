# 1.Folosim Nginx, un server web foarte rapid si usor
FROM nginx:alpine
# 2.Stergem pagina default de la Nginx
RUN rm -rf /usr/share/nginx/html/*
# 3.Copiem pagina noastra in server
COPY index.html /usr/share/nginx/html/index.html
# 4.Deschidem portul 80 pentru trafic
EXPOSE 80
# 5.Pornim serverul
CMD ["nginx", "-g", "daemon off;"]
