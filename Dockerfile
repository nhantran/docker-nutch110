FROM nhantran/oraclejdk17
MAINTAINER Nhan Tran<tranphanquocnhan@gmail.com>

RUN apt-get update
WORKDIR /opt
RUN wget http://download.nextag.com/apache/nutch/1.10/apache-nutch-1.10-bin.tar.gz
RUN tar xvf apache-nutch-1.10-bin.tar.gz
RUN mv apache-nutch-1.10 nutch && rm apache-nutch-1.10-bin.tar.gz
RUN cd nutch && mkdir urls
ADD config/seed.txt nutch/urls/seed.txt

CMD []
