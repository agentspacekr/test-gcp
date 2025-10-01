# ----------------------------------------------------
# Dockerfile
# ----------------------------------------------------

# 1단계: Nginx의 공식 Docker Hub 이미지를 베이스 이미지로 사용합니다.
# 이 이미지는 안정적이고 필요한 모든 Nginx 설정을 포함하고 있습니다.
FROM nginx:latest

# 2단계: 로컬의 정적 웹 콘텐츠 파일을 Nginx의 기본 웹 루트로 복사합니다.
# Nginx는 기본적으로 /usr/share/nginx/html 디렉터리에서 파일을 제공합니다.
# 로컬의 모든 정적 파일 (예: index.html, style.css 등)을 여기에 복사합니다.
# 만약 사용자 정의 설정 파일(nginx.conf)이 있다면, 이 단계에서 복사할 수 있습니다.
# 예: COPY ./custom-nginx.conf /etc/nginx/nginx.conf
COPY . /usr/share/nginx/html

# 3단계: 컨테이너가 리스닝할 포트를 명시합니다. (문서화 목적)
# Nginx의 기본 HTTP 포트는 80번입니다.
EXPOSE 8080

# 4단계: 컨테이너 시작 시 Nginx 서버를 시작하는 기본 명령어를 사용합니다.
# 기본 Nginx 이미지에 이미 정의되어 있으므로 생략 가능하지만 명시적으로 유지할 수도 있습니다.
CMD ["nginx", "-g", "daemon off;"]
