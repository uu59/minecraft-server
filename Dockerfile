FROM debian:8.1

ENV DEBIAN_FRONTEND noninteractive
ADD sources.list /etc/apt/sources.list
RUN echo 'Asia/Tokyo' > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
RUN apt-get update && apt-get upgrade -y && \
  apt-get install ca-certificates wget -y --no-install-recommends && \
  apt-get clean && \
  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN wget -q --header "Cookie: oraclelicense=accept-securebackup-cookie" \
  http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz && \
  tar xvf jdk-8u45-linux-x64.tar.gz && \
  mkdir -p /usr/lib/java && \
  mv jdk1.8.0_45/ /usr/lib/java/ && \
  update-alternatives --install /usr/bin/java java /usr/lib/java/jdk1.8.0_45/bin/java 100 && \
  update-alternatives --install /usr/bin/javac javac /usr/lib/java/jdk1.8.0_45/bin/javac 100
RUN mkdir -p minecraft
ADD ./eula.txt /minecraft/eula.txt
