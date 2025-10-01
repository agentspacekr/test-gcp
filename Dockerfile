FROM nginx:latest
COPY . /usr/share/nginx/html
EXPOSE 80  # <--- 포트를 Nginx 기본값인 80으로 변경
CMD ["nginx", "-g", "daemon off;"]
