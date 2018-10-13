FROM nginx:alpine

LABEL author="Ali Naeem"
LABEL containerized By="Rehman Ali"

COPY default.conf /etc/nginx/conf.d/default.conf



COPY . /usr/share/nginx/html

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'