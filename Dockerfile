FROM nginx:alpine
COPY . /usr/share/nginx/html
# NEU: Wir zwingen Nginx dazu, nur 1 Arbeitsprozess zu starten, statt 40+
RUN sed -i 's/worker_processes  auto;/worker_processes  1;/g' /etc/nginx/nginx.conf
EXPOSE 80