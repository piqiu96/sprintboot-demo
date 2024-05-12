FROM openjdk:17-jdk
LABEL authors="aqiuye"

ENV BASE_PATH=/Users/aqiuye/Workspace/apps/hello_sboot
WORKDIR $BASE_PATH

# 将JAR文件添加到镜像中并命名为app.jar
ADD target/hello-sboot-1.0-SNAPSHOT.jar $BASE_PATH/app.jar
# 将目标jar放入镜像里
ADD lib/jacocoagent.jar $BASE_PATH/jacocoagent.jar

# 暴露容器内的端口给外部访问
EXPOSE 8080
EXPOSE 6300

# 定义环境变量
ENV JAVA_OPTS="-javaagent:$BASE_PATH/jacocoagent.jar=includes=*,output=tcpserver,port=6300,address=0.0.0.0,append=true"

# 在容器启动时运行JAR文件
ENTRYPOINT exec java $JAVA_OPTS -jar $BASE_PATH/app.jar
