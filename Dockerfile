FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y vim nginx
RUN rm /var/www/html/*
WORKDIR /var/www/html
RUN echo "<H1> This is AAutomatted build 1 </H1>" > index.html
EXPOSE 80
CMD /usr/sbin/nginx -g "daemon off;"
