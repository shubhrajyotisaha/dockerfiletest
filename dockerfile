FROM ubuntu
ENV pkg1 git
ENV pkg2 nginx
RUN apt-get update
RUN apt-get install $pkg1 -y
RUN apt-get install $pkg2 -y
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
