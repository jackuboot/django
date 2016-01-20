FROM daocloud.io/library/django:1.7
MAINTAINER daocloud

RUN apt-get install mysql-server mysql-client

RUN apt-get install python-pip  
RUN pip install Django==1.6.5  
RUN apt-get install python-mysqldb 

RUN mkdir /code
WORKDIR /code
COPY . /code


COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
EXPOSE 8000

CMD /code/docker-entrypoint.sh
