# 1단계: 공식 Nginx 이미지를 기본 이미지로 사용합니다.
FROM nginx:stable-alpine

# 2단계: Cloud Run의 요구 사항을 충족하도록 Nginx 구성 파일을 변경합니다.
# Nginx는 기본적으로 80번 포트를 사용하도록 설정되어 있습니다.
# Cloud Run은 컨테이너에 동적으로 PORT 환경 변수를 주입하지만, 
# Nginx 컨테이너는 기본적으로 PORT 환경 변수를 인식하지 못하므로, 
# 'envsubst'를 사용하여 설정 파일에 PORT 환경 변수를 주입하도록 CMD를 재정의합니다.
# 하지만 가장 간단하게는, Nginx가 기본 포트인 80에서 리스닝하도록 하고, 
# Cloud Run 배포 시 컨테이너 포트를 80으로 지정하는 것이 더 일반적입니다.

# 가장 간단한 접근 방식: Nginx 기본 포트 80 사용 (Cloud Run 배포 시 포트를 80으로 설정해야 함)
# WORKDIR과 COPY는 Nginx 기본 이미지를 사용할 경우 선택 사항입니다.
# Nginx가 기본적으로 80번 포트에서 리스닝하므로, 별도의 EXPOSE 명령이 필요 없습니다.

# 3단계: 컨테이너 시작 시 Nginx를 실행합니다.
# 기본 Nginx 이미지의 CMD를 그대로 사용하거나, 간단하게 재정의합니다.
CMD ["nginx", "-g", "daemon off;"]