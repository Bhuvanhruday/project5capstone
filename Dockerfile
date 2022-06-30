FROM nginx:1.18-alpine

RUN rm /usr/share/nginx/html/index.html

COPY ./app/index.html /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]