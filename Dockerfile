FROM alpine AS run
ENV HOME /app
ENV TZ=Asia/Shanghai

RUN mkdir /app
RUN mkdir /app/video
RUN mkdir /app/video/config
RUN mkdir /app/pVolumes

WORKDIR /app/video


COPY   ./sqi.exe  /app/video/
RUN chmod +x /app/video/sqi.exe
ENTRYPOINT ["/app/video/sqi.exe","-c","/app/video/config/config.yaml"]


CMD ["./sqi.exe"]
