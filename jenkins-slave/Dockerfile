FROM ubuntu:18.04 

ENV JAVA_HOME=/usr/local/jdk1.8.0_151 \
    PATH=/usr/local/jdk1.8.0_151/bin:$PATH \
    TIMEZONE=Asia/Shanghai 

RUN echo "${TIMEZONE}" > /etc/timezone \
    && sed -i 's@archive.ubuntu.com@mirrors.aliyun.com@' /etc/apt/sources.list \
    && apt-get update -q \
    && ln -sf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
    && mkdir -p /home/jenkins/.jenkins \
    && mkdir -p /home/jenkins/agent \
    && mkdir -p /usr/share/jenkins \
    && mkdir -p /root/.kube

COPY jdk1.8.0_151 /usr/local/jdk1.8.0_151
COPY kubectl /usr/local/bin/kubectl
COPY docker  /usr/local/bin/docker
COPY jenkins-slave /usr/local/bin/jenkins-slave
COPY slave.jar /usr/share/jenkins

# java/字符集/DinD/svn/jnlp
RUN  mkdir /usr/java -p \
     && ln -s /usr/local/jdk1.8.0_151 /usr/java/jdk1.8.0_151 \
     && apt-get install -y curl  ca-certificates  jq unzip zip  \
     && apt-get upgrade -y 

USER root

WORKDIR /home/jenkins


