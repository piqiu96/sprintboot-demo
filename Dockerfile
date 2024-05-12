FROM openjdk:17-jdk-alpine
LABEL authors="aqiuye"

ENV BASE_PATH=/Users/aqiuye/Workspace/apps/hello_sboot
WORKDIR $BASE_PATH

# 将JAR文件添加到镜像中并命名为app.jar
ADD target/hello-sboot-1.0-SNAPSHOT.jar $BASE_PATH/app.jar
# 将目标jar放入镜像里

# 暴露容器内的端口给外部访问
EXPOSE 8080

# 定义环境变量
ENV JAVA_OPTS=""

# 在容器启动时运行JAR文件
ENTRYPOINT exec java $JAVA_OPTS -jar $BASE_PATH/app.jar
