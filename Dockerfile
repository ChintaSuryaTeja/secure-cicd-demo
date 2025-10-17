# intentionally-vulnerable demo
FROM nginx:1.16
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
