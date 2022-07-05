FROM nginx:stable

RUN rm /usr/share/nginx/html/index.html

COPY nginx.conf /etc/nginx/nginx.conf

COPY ./www/data /usr/share/nginx/html/data

EXPOSE 80

RUN sudo chown -R nginx:nginx *
RUN sudo chmod 755 [/usr/share/nginx/html/data]
CMD /usr/share/nginx/html/data

RUN sudo chmod 644 *


CMD ["nginx", "-g", "daemon off;"]