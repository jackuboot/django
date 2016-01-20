FROM daocloud.io/library/ubuntu:14.04
MAINTAINER daocloud

RUN sudo apt-get install mysql-server mysql-client

RUN sudo apt-get install python-pip  
RUN sudo pip install Django==1.6.5  
RUN sudo apt-get install python-mysqldb 

RUN mkdir /code
WORKDIR /code
COPY . /code


COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
EXPOSE 8000

CMD /code/docker-entrypoint.sh
