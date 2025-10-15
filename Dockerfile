# Dockerfile - serves your HTML using nginx
FROM nginx:1.25-alpine
LABEL maintainer="you@example.com"
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
