FROM nginx:stable

RUN rm /usr/share/nginx/html/index.html

COPY nginx.conf /etc/nginx/nginx.conf

COPY ./www/data /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]