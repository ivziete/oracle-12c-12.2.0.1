FROM centos:7
MAINTAINER ivziete

ADD assets /assets

RUN chmod -R 755 /assets
RUN /assets/setup.sh

RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/America/Lima /etc/localtime 

EXPOSE 1521
EXPOSE 8080

CMD ["/assets/entrypoint.sh"]
